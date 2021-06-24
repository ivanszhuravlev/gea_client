import 'package:gea/protos/projects/projects.v1.pbgrpc.dart';
import 'package:grpc/grpc_web.dart';
import 'package:fixnum/fixnum.dart';

class ProjectClient {
  late final ProjectsClient _client;

  ProjectClient() {
    final channel =
        GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));

    _client = new ProjectsClient(channel);
  }

  Future<List<ProjectInfo>> list(String name) async {
    return await _client.list(ProjectName(name: name)).toList();
  }

  Future<ProjectInfo> get(Int64 projectId) {
    return _client.get(ProjectID(id: projectId));
  }
}
