import 'package:gea/protos/apps/applications/applications.v1.pbgrpc.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';

class ApplicationClient {
  late final ApplicationsClient _client;
  final env = Env();

  ApplicationClient() {
    final channel =
        GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new ApplicationsClient(channel);
  }

  Future<AppWithoutContours> create(String name) async {
    return await _client.create(AppNameAndDescription()..name = name);
  }

  Future<Iterable<AppWithoutContours>> list() async {
    return await _client
        .list(ListOptions())
        .toList();
  }

  Future<AppWithoutContours> updateApp({required AppWithoutContours appInfo}) async {
    return await _client.update(appInfo);
  }

  Future<AppFullInfo> get(AppWithoutContours app) async {
    return await _client.get(AppId()..id = app.id);
  }
}
