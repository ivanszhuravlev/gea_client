import 'package:gea/protos/users/accounts/accounts.v1.pb.dart';
import 'package:gea/protos/users/authentication/authentication.v1.pbgrpc.dart';
import 'package:gea/services/env.dart';
import 'package:gea/services/storage_local.dart';
import 'package:grpc/grpc_web.dart';

class AuthClient {
  final StorageLocal localStorage = new StorageLocal();
  late final AuthenticationClient _client;
  final env = Env();

  AuthClient() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new AuthenticationClient(channel);
  }

  Future<void> signUp(AccountCreds creds) async {
    var resp = await _client.signUp(creds).headers;

    saveCreds(resp);
  }

  Future<void> signIn(AccountCreds creds) async {
    var resp = await _client.signIn(creds).headers;

    saveCreds(resp);
  }

  void saveCreds(Map<String, String> response) {
    var jwt = response["jwt-token"] ?? '';
    var rt = response["rt-token"] ?? '';
    // var rt = resp["refresh-token"];
    var userId = response["user-id"] ?? '';

    if (jwt.isNotEmpty && rt.isNotEmpty && userId.isNotEmpty) {
      localStorage.set('jwt', jwt);
      localStorage.set('rt', rt);
      localStorage.set('userId', userId);
    } else {
      throw new Error();
    }
  }

  bool isLoggedIn() {
    var jwt = localStorage.get('jwt');
    var rt = localStorage.get('rt');
    var userId = localStorage.get('userId');

    return jwt != null && rt != null && userId != null;
  }
}
