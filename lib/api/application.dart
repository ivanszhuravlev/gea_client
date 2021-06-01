import 'package:flutter/material.dart';
import 'package:gea/protos/applications/applications.v1.pb.dart';
// import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_web.dart';

class ApplicationClient {

  ApplicationClient() {
    // final channel = new ClientChannel('localhost', port: 8080, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    final channel = GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));

    final stub = ApplicationsApi(channel)
  }
}