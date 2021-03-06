import 'package:gea/api/authentication.dart';
import 'package:gea/protos/external/gitlab/projects/projects_v1.pbgrpc.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';
import 'package:fixnum/fixnum.dart';

import 'auth_guard_interceptor.dart';

class ProjectClient {
  late final ProjectsClient _client;
  final auth = AuthClient();
  final env = Env();

  ProjectClient() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new ProjectsClient(
      channel,
      interceptors: [AuthGuardInterceptor()],
    );
  }

  Future<List<ProjectInfo>> list(String name) async {
    return await _client
        .list(
          ProjectName(name: name),
          options: await auth.getAuthOptions(),
        )
        .toList();
  }

  Future<ProjectInfo> get(Int64 projectId) async {
    return await _client.get(
      ProjectID(id: projectId),
      options: await auth.getAuthOptions(),
    );
  }
}
