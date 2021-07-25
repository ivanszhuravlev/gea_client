import 'package:gea/protos/apps/contours/contours.v1.pbgrpc.dart';
import 'package:gea/protos/common/common.v1.pb.dart';
import 'package:gea/services/env.dart';
import 'package:grpc/grpc_web.dart';

class ContourClient {
  late final ContoursClient _client;
  final env = Env();

  ContourClient() {
    final channel =
    GrpcWebClientChannel.xhr(Uri.parse(env.apiHost));

    _client = new ContoursClient(channel);
  }

  Future<EmptyMessage> create({required ContourNameAndDescription contour, required List<ServiceWithoutId> services}) async {
    var contourResponse = await _client.create(contour);
    return _client.addServices(RepeatedServiceWithoutId(contourId: contourResponse.id, service: services));
  }

  delete(ContourIdAndName contour) async {
    _client.delete(contour);
  }

  Future<EmptyMessage> removeService(ServiceIdAndContourId contour) {
    return _client.removeService(contour);
  }

  Future<EmptyMessage> addService(RepeatedServiceWithoutId service) {
    return _client.addServices(service);
  }

  Future<ContourInfoWithoutServices> rename(ContourInfoWithoutServices contour) {
    return _client.update(contour);
  }
}
