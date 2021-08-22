///
//  Generated code. Do not modify.
//  source: apps/applications/applications_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'applications_v1.pb.dart' as $2;
import '../../common/common_v1.pb.dart' as $1;
export 'applications_v1.pb.dart';

class ApplicationsClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$2.AppNameAndDescription, $2.AppWithoutContours>(
          '/apps.Applications/Create',
          ($2.AppNameAndDescription value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AppWithoutContours.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$2.AppId, $2.AppFullInfo>(
      '/apps.Applications/Get',
      ($2.AppId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AppFullInfo.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$2.ListOptions, $2.AppWithoutContours>(
          '/apps.Applications/List',
          ($2.ListOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AppWithoutContours.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$2.AppWithoutContours, $2.AppWithoutContours>(
          '/apps.Applications/Update',
          ($2.AppWithoutContours value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AppWithoutContours.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$2.AppIdAndName, $1.EmptyMessage>(
      '/apps.Applications/Delete',
      ($2.AppIdAndName value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));

  ApplicationsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.AppWithoutContours> create(
      $2.AppNameAndDescription request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$2.AppFullInfo> get($2.AppId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$2.AppWithoutContours> list($2.ListOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.AppWithoutContours> update(
      $2.AppWithoutContours request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> delete($2.AppIdAndName request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class ApplicationsServiceBase extends $grpc.Service {
  $core.String get $name => 'apps.Applications';

  ApplicationsServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.AppNameAndDescription, $2.AppWithoutContours>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.AppNameAndDescription.fromBuffer(value),
            ($2.AppWithoutContours value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AppId, $2.AppFullInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AppId.fromBuffer(value),
        ($2.AppFullInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListOptions, $2.AppWithoutContours>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ListOptions.fromBuffer(value),
        ($2.AppWithoutContours value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.AppWithoutContours, $2.AppWithoutContours>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.AppWithoutContours.fromBuffer(value),
            ($2.AppWithoutContours value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AppIdAndName, $1.EmptyMessage>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AppIdAndName.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
  }

  $async.Future<$2.AppWithoutContours> create_Pre($grpc.ServiceCall call,
      $async.Future<$2.AppNameAndDescription> request) async {
    return create(call, await request);
  }

  $async.Future<$2.AppFullInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AppId> request) async {
    return get(call, await request);
  }

  $async.Stream<$2.AppWithoutContours> list_Pre(
      $grpc.ServiceCall call, $async.Future<$2.ListOptions> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$2.AppWithoutContours> update_Pre($grpc.ServiceCall call,
      $async.Future<$2.AppWithoutContours> request) async {
    return update(call, await request);
  }

  $async.Future<$1.EmptyMessage> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AppIdAndName> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.AppWithoutContours> create(
      $grpc.ServiceCall call, $2.AppNameAndDescription request);
  $async.Future<$2.AppFullInfo> get($grpc.ServiceCall call, $2.AppId request);
  $async.Stream<$2.AppWithoutContours> list(
      $grpc.ServiceCall call, $2.ListOptions request);
  $async.Future<$2.AppWithoutContours> update(
      $grpc.ServiceCall call, $2.AppWithoutContours request);
  $async.Future<$1.EmptyMessage> delete(
      $grpc.ServiceCall call, $2.AppIdAndName request);
}
