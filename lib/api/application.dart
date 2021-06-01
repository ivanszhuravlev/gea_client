import 'package:flutter/material.dart';
import 'package:gea/protos/applications/applications.v1.pb.dart';
import 'package:gea/protos/applications/applications.v1.pbgrpc.dart';
import 'package:gea/types/application.dart';
// import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_web.dart';

class ApplicationClient {

  late final ApplicationsClient _client;

  ApplicationClient() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));

    _client = new ApplicationsClient(channel);
  }

  Future<ApplicationInfo> create(String name) async{
    var response = await _client.create(AppName()..name = name);
    return ApplicationInfo(response.id, response.name);
  }
}