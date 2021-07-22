import 'package:gea/protos/external/gitlab/projects/projects.v1.pbgrpc.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';
import 'package:fixnum/fixnum.dart';

class ProjectClient {
  late final ProjectsClient _client;
  final env = Env();

  ProjectClient() {
    final channel =
        GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new ProjectsClient(channel);
  }

  Future<List<ProjectInfo>> list(String name) async {
    return await _client.list(ProjectName(name: name)).toList();
  }

  Future<ProjectInfo> get(Int64 projectId) {
    return _client.get(ProjectID(id: projectId));
  }
}
