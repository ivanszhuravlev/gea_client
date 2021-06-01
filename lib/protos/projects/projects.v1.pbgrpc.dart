///
//  Generated code. Do not modify.
//  source: projects/projects.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'projects.v1.pb.dart' as $1;
export 'projects.v1.pb.dart';

class ProjectsClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$1.ProjectID, $1.ProjectInfo>(
      '/gitlab_aggregator.v1.Projects/Get',
      ($1.ProjectID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ProjectInfo.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$1.ProjectName, $1.ProjectInfo>(
      '/gitlab_aggregator.v1.Projects/List',
      ($1.ProjectName value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ProjectInfo.fromBuffer(value));

  ProjectsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.ProjectInfo> get($1.ProjectID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$1.ProjectInfo> list($1.ProjectName request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ProjectsServiceBase extends $grpc.Service {
  $core.String get $name => 'gitlab_aggregator.v1.Projects';

  ProjectsServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ProjectID, $1.ProjectInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ProjectID.fromBuffer(value),
        ($1.ProjectInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ProjectName, $1.ProjectInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.ProjectName.fromBuffer(value),
        ($1.ProjectInfo value) => value.writeToBuffer()));
  }

  $async.Future<$1.ProjectInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ProjectID> request) async {
    return get(call, await request);
  }

  $async.Stream<$1.ProjectInfo> list_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ProjectName> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$1.ProjectInfo> get(
      $grpc.ServiceCall call, $1.ProjectID request);
  $async.Stream<$1.ProjectInfo> list(
      $grpc.ServiceCall call, $1.ProjectName request);
}
