import 'package:gea/api/authentication.dart';
import 'package:gea/protos/external/gitlab/environments/environments_v1.pbgrpc.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';
import 'package:fixnum/fixnum.dart';

import 'auth_guard_interceptor.dart';

class EnvironmentClient {
  late final EnvironmentsClient _client;
  final auth = AuthClient();
  final env = Env();

  EnvironmentClient() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new EnvironmentsClient(
      channel,
      interceptors: [AuthGuardInterceptor()],
    );
  }

  Future<List<EnvironmentInfo>> list(Int64 projectId, String name) async {
    return await _client
        .list(
          EnvironmentName(name: name, projectId: projectId),
          options: await auth.getAuthOptions(),
        )
        .toList();
  }

  Future<EnvironmentInfo> get(Int64 projectId, Int64 envId) async {
    return await _client.get(
      EnvironmentID(projectId: projectId, id: envId),
      options: await auth.getAuthOptions(),
    );
  }
}
