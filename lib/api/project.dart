import 'package:flutter/material.dart';
// import 'package:gea/protos/applications/applications.v1.pb.dart';
// import 'package:gea/protos/applications/applications.v1.pbgrpc.dart';
import 'package:gea/protos/common/common.pb.dart';
import 'package:gea/protos/projects/projects.v1.pbgrpc.dart';
import 'package:grpc/grpc_web.dart';

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

}
