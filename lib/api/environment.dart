import 'package:gea/protos/environments/environments.v1.pbgrpc.dart';
import 'package:grpc/grpc_web.dart';
import 'package:fixnum/fixnum.dart';

class EnvironmentClient {
  late final EnvironmentsClient _client;

  EnvironmentClient() {
    final channel =
    GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));

    _client = new EnvironmentsClient(channel);
  }

  Future<List<EnvironmentInfo>> list(Int64 projectId, String name) async {
    return await _client.list(EnvironmentName(name: name, projectId: projectId)).toList();
  }

  Future<EnvironmentInfo> get(Int64 projectId, Int64 envId) {
    return _client.get(EnvironmentID(projectId: projectId, id: envId));
  }

}