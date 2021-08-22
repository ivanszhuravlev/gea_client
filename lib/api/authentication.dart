import 'package:gea/protos/users/accounts/accounts_v1.pb.dart';
import 'package:gea/protos/users/authentication/authentication_v1.pbgrpc.dart';
import 'package:gea/protos/users/authorization/authorization_v1.pbgrpc.dart';
import 'package:gea/services/auth_storage.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'auth_guard_interceptor.dart';

class AuthClient {
  final authStorage = AuthStorage();
  late final AuthenticationClient _client;
  late final AuthorizationClient _clientAuthorization;
  final env = Env();

  AuthClient() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new AuthenticationClient(channel);
    _clientAuthorization = new AuthorizationClient(
      channel,
      interceptors: [AuthGuardInterceptor()],
    );
  }

  Future<CallOptions> _getFingerprintOptions() async {
    var fingerprint = await authStorage.getFingerprint();
    return CallOptions(metadata: {'browser-fingerprint': fingerprint});
  }

  Future<void> signUp(AccountCreds creds) async {
    var options = await _getFingerprintOptions();

    var resp = _client.signUp(creds, options: options);

    await saveCreds(resp);
  }

  Future<void> signIn(AccountCreds creds) async {
    var options = await _getFingerprintOptions();

    var resp = _client.signIn(creds, options: options);

    await saveCreds(resp);
  }

  Future<void> updateToken() async {
    var credsRestored = authStorage.getCreds();
    var creds = credsRestored ?? Creds(jwt: '', rt: '', userId: '');

    bool hasExpired = credsRestored == null || JwtDecoder.isExpired(creds.jwt);

    if (hasExpired) {
      var fingerprint = await authStorage.getFingerprint();

      var req = _clientAuthorization.refreshToken(
        AccountId()..id = creds.userId,
        options: CallOptions(
          metadata: {
            'authorization': creds.jwt,
            'refresh-token': creds.rt,
            'browser-fingerprint': fingerprint
          },
        ),
      );

      var headers = await req.headers;

      await authStorage.saveCreds(headers[JWT], headers[RT], creds.userId);
    }
  }

  Future<void> saveCreds(ResponseFuture<AccountId> resp) async {
    var accountId = await resp;
    var headers = await resp.headers;

    var jwt = headers[JWT];
    var rt = headers[RT];
    var userId = accountId.id;

    await authStorage.saveCreds(jwt, rt, userId);
  }

  bool isLoggedIn() {
    return authStorage.getCreds() != null;
  }

  Future<CallOptions> getAuthOptions() async {
    await updateToken();

    var creds = authStorage.getCreds();
    var fingerprint = await authStorage.getFingerprint();

    if (creds != null) {
      return CallOptions(
        metadata: {
          'authorization': creds.jwt,
          'user-id': creds.userId,
          'refresh-token': creds.userId,
          'browser-fingerprint': fingerprint
        },
      );
    } else {
      throw new Error();
    }
  }
}

const JWT = 'authorization';
const RT = 'refresh-token';
