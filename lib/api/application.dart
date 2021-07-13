import 'package:gea/protos/applications/applications.v1.pb.dart';
import 'package:gea/protos/applications/applications.v1.pbgrpc.dart';
import 'package:gea/protos/common/common.pb.dart';
import 'package:grpc/grpc_web.dart';

class ApplicationClient {
  late final ApplicationsClient _client;

  ApplicationClient() {
    final channel =
        GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));

    _client = new ApplicationsClient(channel);
  }

  Future<AppInfo> create(String name) async {
    return await _client.create(AppName()..name = name);
  }

  Future<Iterable<AppInfo>> list() async {
    return await _client
        .list(EmptyMessage())
        .toList();
  }

  Future<AppInfo> createContour({required AppInfo appInfo, required Contour contour}) async {
    appInfo.contour.add(contour);
    return await _client.update(appInfo);
  }

  Future<AppInfo> updateApp({required AppInfo appInfo}) async {
    return await _client.update(appInfo);
  }
}
