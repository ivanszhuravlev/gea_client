///
//  Generated code. Do not modify.
//  source: environments/environments.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'environments.v1.pb.dart' as $0;
export 'environments.v1.pb.dart';

class EnvironmentsClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$0.EnvironmentID, $0.EnvironmentInfo>(
      '/gitlab_aggregator.v1.Environments/Get',
      ($0.EnvironmentID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EnvironmentInfo.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.EnvironmentName, $0.EnvironmentInfo>(
          '/gitlab_aggregator.v1.Environments/List',
          ($0.EnvironmentName value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EnvironmentInfo.fromBuffer(value));

  EnvironmentsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.EnvironmentInfo> get($0.EnvironmentID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$0.EnvironmentInfo> list($0.EnvironmentName request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class EnvironmentsServiceBase extends $grpc.Service {
  $core.String get $name => 'gitlab_aggregator.v1.Environments';

  EnvironmentsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EnvironmentID, $0.EnvironmentInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EnvironmentID.fromBuffer(value),
        ($0.EnvironmentInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EnvironmentName, $0.EnvironmentInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.EnvironmentName.fromBuffer(value),
        ($0.EnvironmentInfo value) => value.writeToBuffer()));
  }

  $async.Future<$0.EnvironmentInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EnvironmentID> request) async {
    return get(call, await request);
  }

  $async.Stream<$0.EnvironmentInfo> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.EnvironmentName> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$0.EnvironmentInfo> get(
      $grpc.ServiceCall call, $0.EnvironmentID request);
  $async.Stream<$0.EnvironmentInfo> list(
      $grpc.ServiceCall call, $0.EnvironmentName request);
}
