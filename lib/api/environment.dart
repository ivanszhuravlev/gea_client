import 'package:gea/protos/external/gitlab/environments/environments.v1.pbgrpc.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';
import 'package:fixnum/fixnum.dart';

class EnvironmentClient {
  late final EnvironmentsClient _client;
  final env = Env();

  EnvironmentClient() {
    final channel =
    GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new EnvironmentsClient(channel);
  }

  Future<List<EnvironmentInfo>> list(Int64 projectId, String name) async {
    return await _client.list(EnvironmentName(name: name, projectId: projectId)).toList();
  }

  Future<EnvironmentInfo> get(Int64 projectId, Int64 envId) {
    return _client.get(EnvironmentID(projectId: projectId, id: envId));
  }

}