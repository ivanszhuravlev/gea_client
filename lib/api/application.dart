import 'package:gea/api/authentication.dart';
import 'package:gea/protos/apps/applications/applications_v1.pbgrpc.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';

class ApplicationClient {
  late final ApplicationsClient _client;
  final auth = AuthClient();
  final env = Env();

  ApplicationClient() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new ApplicationsClient(channel);
  }

  Future<AppWithoutContours> create(String name) async {
    return await _client.create(
      AppNameAndDescription()..name = name,
      options: auth.getAuthOptions(),
    );
  }

  Future<Iterable<AppWithoutContours>> list() async {
    print("LIST");
    return await _client
        .list(ListOptions(), options: auth.getAuthOptions())
        .toList();
  }

  Future<AppWithoutContours> updateApp(
      {required AppWithoutContours appInfo}) async {
    return await _client.update(
      appInfo,
      options: auth.getAuthOptions(),
    );
  }

  Future<AppFullInfo> get(AppWithoutContours app) async {
    return await _client.get(
      AppId()..id = app.id,
      options: auth.getAuthOptions(),
    );
  }
}
