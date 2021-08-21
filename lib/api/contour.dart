import 'package:gea/api/authentication.dart';
import 'package:gea/protos/apps/contours/contours_v1.pbgrpc.dart';
import 'package:gea/protos/common/common_v1.pb.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';

import 'auth_guard_interceptor.dart';

class ContourClient {
  late final ContoursClient _client;
  final auth = AuthClient();
  final env = Env();

  ContourClient() {
    final channel = GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new ContoursClient(
      channel,
      interceptors: [AuthGuardInterceptor()],
    );
  }

  Future<EmptyMessage> create(
      {required ContourNameAndDescription contour,
      required List<ServiceWithoutId> services}) async {
    var contourResponse = await _client.create(
      contour,
      options: await auth.getAuthOptions(),
    );
    return _client.addServices(
      RepeatedServiceWithoutId(
          contourId: contourResponse.id, services: services),
      options: await auth.getAuthOptions(),
    );
  }

  delete(ContourIdAndName contour) async {
    _client.delete(
      contour,
      options: await auth.getAuthOptions(),
    );
  }

  Future<EmptyMessage> removeService(ServiceIdAndContourId contour) async {
    return await _client.removeService(
      contour,
      options: await auth.getAuthOptions(),
    );
  }

  Future<EmptyMessage> addService(RepeatedServiceWithoutId service) async {
    return await _client.addServices(
      service,
      options: await auth.getAuthOptions(),
    );
  }

  Future<ContourInfoWithoutServices> rename(
      ContourInfoWithoutServices contour) async {
    return await _client.update(
      contour,
      options: await auth.getAuthOptions(),
    );
  }
}
