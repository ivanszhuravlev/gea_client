import 'package:fingerprintjs/fingerprintjs.dart';
import 'package:gea/services/storage_local.dart';


class AuthStorage {
  final StorageLocal localStorage = new StorageLocal();

  Future<String> getFingerprint() {
    return Fingerprint.getHash();
  }

  bool _checkCreds(String? jwt, String? rt, String? userId) {
    return jwt != null && rt != null && userId != null;
  }

  Creds? getCreds() {
    var jwt = localStorage.get('jwt');
    var rt = localStorage.get('rt');
    var userId = localStorage.get('userId');

    if (_checkCreds(jwt, rt, userId)) {
      return Creds(jwt: jwt!, rt: rt!, userId: userId!);
    } else {
      return null;
    }
  }

  Future<void> saveCreds(String? jwt, String? rt, String? userId) async {
    if (_checkCreds(jwt, rt, userId)) {
      localStorage.set('jwt', jwt!);
      localStorage.set('rt', rt!);
      localStorage.set('userId', userId!);
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
