import 'package:flutter/material.dart';
import 'package:gea/protos/common/common_v1.pb.dart';
import 'package:gea/protos/users/accounts/accounts_v1.pb.dart';
import 'package:gea/protos/users/authentication/authentication_v1.pbgrpc.dart';
import 'package:gea/protos/users/authorization/authorization_v1.pbgrpc.dart';
import 'package:gea/services/env.dart';
import 'package:gea/services/storage_local.dart';
import 'package:grpc/grpc_web.dart';
import 'package:fingerprintjs/fingerprintjs.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthClient {
  final StorageLocal localStorage = new StorageLocal();
  late final AuthenticationClient _client;
  late final AuthorizationClient _clientAuthorization;
  final env = Env();

  AuthClient() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new AuthenticationClient(channel);
    _clientAuthorization = new AuthorizationClient(channel);
  }

  Future<String> _getFingerprint() {
    return Fingerprint.getHash();
  }

  Future<CallOptions> _getFingerprintOptions() async {
    var fingerprint = await _getFingerprint();
    return CallOptions(metadata: {'browser-fingerprint': fingerprint});
  }

  Future<void> signUp(AccountCreds creds) async {
    var options = await _getFingerprintOptions();

    var resp = _client.signUp(creds, options: options);

    saveCreds(resp);
  }

  Future<void> signIn(AccountCreds creds) async {
    var options = await _getFingerprintOptions();

    var resp = _client.signIn(creds, options: options);

    saveCreds(resp);
  }

  Future<void> updateToken() async {
    var creds = _getCreds();

    if (creds == null) {
      throw new Error();
    }
      bool hasExpired = JwtDecoder.isExpired(creds.jwt);
    print("TO REFRESH" + hasExpired.toString());

      if (hasExpired) {
        var fingerprint = await _getFingerprint();

        var headers = await _clientAuthorization.refreshToken(EmptyMessage(), options: CallOptions(
          metadata: {'authorization': creds.jwt, 'refresh-token': creds.rt, 'browser-fingerprint': fingerprint},
        )).headers;

        print("REFRESHED: " + headers.keys.toString());
    }
  }

  void saveCreds(ResponseFuture<AccountId> resp) async {
    var accountId = await resp;
    var headers = await resp.headers;

    var jwt = headers[JWT];
    var rt = headers[RT];
    var userId = accountId.id;

    if (_checkCreds(jwt, rt, userId)) {
      localStorage.set('jwt', jwt!);
      localStorage.set('rt', rt!);
      localStorage.set('userId', userId!);
    } else {
      throw new Error();
    }
  }

  bool _checkCreds(String? jwt, String? rt, String? userId) {
    // print("CHECK: " + jwt.toString() + ', ' + rt.toString() + ', ' + userId.toString());
    return jwt != null && rt != null && userId != null;
  }

  Creds? _getCreds() {
    var jwt = localStorage.get('jwt');
    var rt = localStorage.get('rt');
    var userId = localStorage.get('userId');

    if (_checkCreds(jwt, rt, userId)) {
      return Creds(jwt: jwt!, rt: rt!, userId: userId!);
    } else {
      return null;
    }
  }

  bool isLoggedIn() {
    // print("ISLOGGEDIN");
    return _getCreds() != null;
  }

  CallOptions getAuthOptions() {
    // print("getAuthOptions");

    var creds = _getCreds();

    updateToken();

    if (creds != null) {
      return CallOptions(
          metadata: {'authorization': creds.jwt},
      );
    } else {
      throw new Error();
    }
  }
}

class Creds {
  final String jwt;
  final String rt;
  final String userId;

  Creds({required this.jwt, required this.rt, required this.userId});
}

const JWT = 'authorization';
const RT = 'refresh-token';
