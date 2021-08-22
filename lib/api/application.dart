import 'package:gea/api/authentication.dart';
import 'package:gea/protos/apps/applications/applications_v1.pbgrpc.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';

import 'auth_guard_interceptor.dart';

class ApplicationClient {
  late final ApplicationsClient _client;
  final auth = AuthClient();
  final env = Env();

  ApplicationClient() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new ApplicationsClient(
      channel,
      interceptors: [AuthGuardInterceptor()],
    );
  }

  Future<AppWithoutContours> create(String name) async {
    return await _client.create(
      AppNameAndDescription()..name = name,
      options: await auth.getAuthOptions(),
    );
  }

  Future<Iterable<AppWithoutContours>> list() async {
    var opts = await auth.getAuthOptions();

    return await _client.list(ListOptions(added: true), options: opts).toList();
  }

  Future<AppWithoutContours> updateApp(
      {required AppWithoutContours appInfo}) async {
    return await _client.update(
      appInfo,
      options: await auth.getAuthOptions(),
    );
  }

  Future<AppFullInfo> get(AppWithoutContours app) async {
    return await _client.get(
      AppId()..id = app.id,
      options: await auth.getAuthOptions(),
    );
  }
}
