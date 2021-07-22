///
//  Generated code. Do not modify.
//  source: apps/contours/contours.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'contours.v1.pb.dart' as $0;
import '../../common/common.v1.pb.dart' as $1;
export 'contours.v1.pb.dart';

class ContoursClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.ContourNameAndDescription,
          $0.ContourInfoWithoutServices>(
      '/apps.Contours/Create',
      ($0.ContourNameAndDescription value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ContourInfoWithoutServices.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$0.ContourId, $0.ContourInfo>(
      '/apps.Contours/Get',
      ($0.ContourId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ContourInfo.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.ContoursListOption, $0.ContourInfo>(
          '/apps.Contours/List',
          ($0.ContoursListOption value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ContourInfo.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.ContourInfoWithoutServices,
          $0.ContourInfoWithoutServices>(
      '/apps.Contours/Update',
      ($0.ContourInfoWithoutServices value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ContourInfoWithoutServices.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$0.ContourIdAndName, $1.EmptyMessage>(
          '/apps.Contours/Delete',
          ($0.ContourIdAndName value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$addServices =
      $grpc.ClientMethod<$0.RepeatedServiceWithoutId, $1.EmptyMessage>(
          '/apps.Contours/AddServices',
          ($0.RepeatedServiceWithoutId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$removeService =
      $grpc.ClientMethod<$0.ServiceIdAndContourId, $1.EmptyMessage>(
          '/apps.Contours/RemoveService',
          ($0.ServiceIdAndContourId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));

  ContoursClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ContourInfoWithoutServices> create(
      $0.ContourNameAndDescription request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.ContourInfo> get($0.ContourId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$0.ContourInfo> list($0.ContoursListOption request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.ContourInfoWithoutServices> update(
      $0.ContourInfoWithoutServices request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> delete($0.ContourIdAndName request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> addServices(
      $0.RepeatedServiceWithoutId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addServices, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> removeService(
      $0.ServiceIdAndContourId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeService, request, options: options);
  }
}

abstract class ContoursServiceBase extends $grpc.Service {
  $core.String get $name => 'apps.Contours';

  ContoursServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ContourNameAndDescription,
            $0.ContourInfoWithoutServices>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ContourNameAndDescription.fromBuffer(value),
        ($0.ContourInfoWithoutServices value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ContourId, $0.ContourInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ContourId.fromBuffer(value),
        ($0.ContourInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ContoursListOption, $0.ContourInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.ContoursListOption.fromBuffer(value),
        ($0.ContourInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ContourInfoWithoutServices,
            $0.ContourInfoWithoutServices>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ContourInfoWithoutServices.fromBuffer(value),
        ($0.ContourInfoWithoutServices value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ContourIdAndName, $1.EmptyMessage>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ContourIdAndName.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RepeatedServiceWithoutId, $1.EmptyMessage>(
            'AddServices',
            addServices_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RepeatedServiceWithoutId.fromBuffer(value),
            ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ServiceIdAndContourId, $1.EmptyMessage>(
        'RemoveService',
        removeService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ServiceIdAndContourId.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
  }

  $async.Future<$0.ContourInfoWithoutServices> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ContourNameAndDescription> request) async {
    return create(call, await request);
  }

  $async.Future<$0.ContourInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ContourId> request) async {
    return get(call, await request);
  }

  $async.Stream<$0.ContourInfo> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.ContoursListOption> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$0.ContourInfoWithoutServices> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ContourInfoWithoutServices> request) async {
    return update(call, await request);
  }

  $async.Future<$1.EmptyMessage> delete_Pre($grpc.ServiceCall call,
      $async.Future<$0.ContourIdAndName> request) async {
    return delete(call, await request);
  }

  $async.Future<$1.EmptyMessage> addServices_Pre($grpc.ServiceCall call,
      $async.Future<$0.RepeatedServiceWithoutId> request) async {
    return addServices(call, await request);
  }

  $async.Future<$1.EmptyMessage> removeService_Pre($grpc.ServiceCall call,
      $async.Future<$0.ServiceIdAndContourId> request) async {
    return removeService(call, await request);
  }

  $async.Future<$0.ContourInfoWithoutServices> create(
      $grpc.ServiceCall call, $0.ContourNameAndDescription request);
  $async.Future<$0.ContourInfo> get(
      $grpc.ServiceCall call, $0.ContourId request);
  $async.Stream<$0.ContourInfo> list(
      $grpc.ServiceCall call, $0.ContoursListOption request);
  $async.Future<$0.ContourInfoWithoutServices> update(
      $grpc.ServiceCall call, $0.ContourInfoWithoutServices request);
  $async.Future<$1.EmptyMessage> delete(
      $grpc.ServiceCall call, $0.ContourIdAndName request);
  $async.Future<$1.EmptyMessage> addServices(
      $grpc.ServiceCall call, $0.RepeatedServiceWithoutId request);
  $async.Future<$1.EmptyMessage> removeService(
      $grpc.ServiceCall call, $0.ServiceIdAndContourId request);
}
