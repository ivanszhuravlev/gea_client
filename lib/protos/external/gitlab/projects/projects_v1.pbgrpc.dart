///
//  Generated code. Do not modify.
//  source: external/gitlab/projects/projects_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'projects_v1.pb.dart' as $6;
export 'projects_v1.pb.dart';

class ProjectsClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$6.ProjectID, $6.ProjectInfo>(
      '/gitlab.Projects/Get',
      ($6.ProjectID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ProjectInfo.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$6.ProjectName, $6.ProjectInfo>(
      '/gitlab.Projects/List',
      ($6.ProjectName value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ProjectInfo.fromBuffer(value));

  ProjectsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.ProjectInfo> get($6.ProjectID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$6.ProjectInfo> list($6.ProjectName request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ProjectsServiceBase extends $grpc.Service {
  $core.String get $name => 'gitlab.Projects';

  ProjectsServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.ProjectID, $6.ProjectInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ProjectID.fromBuffer(value),
        ($6.ProjectInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ProjectName, $6.ProjectInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $6.ProjectName.fromBuffer(value),
        ($6.ProjectInfo value) => value.writeToBuffer()));
  }

  $async.Future<$6.ProjectInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$6.ProjectID> request) async {
    return get(call, await request);
  }

  $async.Stream<$6.ProjectInfo> list_Pre(
      $grpc.ServiceCall call, $async.Future<$6.ProjectName> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$6.ProjectInfo> get(
      $grpc.ServiceCall call, $6.ProjectID request);
  $async.Stream<$6.ProjectInfo> list(
      $grpc.ServiceCall call, $6.ProjectName request);
}
