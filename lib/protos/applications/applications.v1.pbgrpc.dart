///
//  Generated code. Do not modify.
//  source: applications/applications.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'applications.v1.pb.dart' as $2;
import '../common/common.pb.dart' as $3;
export 'applications.v1.pb.dart';

class ApplicationsClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$2.AppName, $2.AppInfo>(
      '/gitlab_aggregator.v1.Applications/Create',
      ($2.AppName value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AppInfo.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$2.AppName, $2.AppInfo>(
      '/gitlab_aggregator.v1.Applications/Get',
      ($2.AppName value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AppInfo.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$3.EmptyMessage, $2.AppInfo>(
      '/gitlab_aggregator.v1.Applications/List',
      ($3.EmptyMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AppInfo.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$2.AppInfo, $2.AppInfo>(
      '/gitlab_aggregator.v1.Applications/Update',
      ($2.AppInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AppInfo.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$2.AppInfo, $3.EmptyMessage>(
      '/gitlab_aggregator.v1.Applications/Delete',
      ($2.AppInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.EmptyMessage.fromBuffer(value));

  ApplicationsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.AppInfo> create($2.AppName request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$2.AppInfo> get($2.AppName request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$2.AppInfo> list($3.EmptyMessage request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.AppInfo> update($2.AppInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$3.EmptyMessage> delete($2.AppInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class ApplicationsServiceBase extends $grpc.Service {
  $core.String get $name => 'gitlab_aggregator.v1.Applications';

  ApplicationsServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.AppName, $2.AppInfo>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AppName.fromBuffer(value),
        ($2.AppInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AppName, $2.AppInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AppName.fromBuffer(value),
        ($2.AppInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.EmptyMessage, $2.AppInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.EmptyMessage.fromBuffer(value),
        ($2.AppInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AppInfo, $2.AppInfo>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AppInfo.fromBuffer(value),
        ($2.AppInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AppInfo, $3.EmptyMessage>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AppInfo.fromBuffer(value),
        ($3.EmptyMessage value) => value.writeToBuffer()));
  }

  $async.Future<$2.AppInfo> create_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AppName> request) async {
    return create(call, await request);
  }

  $async.Future<$2.AppInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AppName> request) async {
    return get(call, await request);
  }

  $async.Stream<$2.AppInfo> list_Pre(
      $grpc.ServiceCall call, $async.Future<$3.EmptyMessage> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$2.AppInfo> update_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AppInfo> request) async {
    return update(call, await request);
  }

  $async.Future<$3.EmptyMessage> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AppInfo> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.AppInfo> create($grpc.ServiceCall call, $2.AppName request);
  $async.Future<$2.AppInfo> get($grpc.ServiceCall call, $2.AppName request);
  $async.Stream<$2.AppInfo> list(
      $grpc.ServiceCall call, $3.EmptyMessage request);
  $async.Future<$2.AppInfo> update($grpc.ServiceCall call, $2.AppInfo request);
  $async.Future<$3.EmptyMessage> delete(
      $grpc.ServiceCall call, $2.AppInfo request);
}
