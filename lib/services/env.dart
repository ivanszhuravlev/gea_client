import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  late String _host;
  late String _port;

  Env() {
    this._host = dotenv.env['API_HOST'] ?? '';
    this._port = dotenv.env['API_PORT'] ?? '';
  }

  get apiHost => '$_host:$_port';
}