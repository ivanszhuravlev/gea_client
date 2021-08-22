///
//  Generated code. Do not modify.
//  source: external/gitlab/environments/environments_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'environments_v1.pb.dart' as $5;
export 'environments_v1.pb.dart';

class EnvironmentsClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$5.EnvironmentID, $5.EnvironmentInfo>(
      '/gitlab.Environments/Get',
      ($5.EnvironmentID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.EnvironmentInfo.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$5.EnvironmentName, $5.EnvironmentInfo>(
          '/gitlab.Environments/List',
          ($5.EnvironmentName value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.EnvironmentInfo.fromBuffer(value));

  EnvironmentsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.EnvironmentInfo> get($5.EnvironmentID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$5.EnvironmentInfo> list($5.EnvironmentName request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class EnvironmentsServiceBase extends $grpc.Service {
  $core.String get $name => 'gitlab.Environments';

  EnvironmentsServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.EnvironmentID, $5.EnvironmentInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.EnvironmentID.fromBuffer(value),
        ($5.EnvironmentInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.EnvironmentName, $5.EnvironmentInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.EnvironmentName.fromBuffer(value),
        ($5.EnvironmentInfo value) => value.writeToBuffer()));
  }

  $async.Future<$5.EnvironmentInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$5.EnvironmentID> request) async {
    return get(call, await request);
  }

  $async.Stream<$5.EnvironmentInfo> list_Pre($grpc.ServiceCall call,
      $async.Future<$5.EnvironmentName> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$5.EnvironmentInfo> get(
      $grpc.ServiceCall call, $5.EnvironmentID request);
  $async.Stream<$5.EnvironmentInfo> list(
      $grpc.ServiceCall call, $5.EnvironmentName request);
}
