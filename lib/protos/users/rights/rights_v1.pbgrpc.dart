///
//  Generated code. Do not modify.
//  source: users/rights/rights_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'rights_v1.pb.dart' as $4;
import '../../common/common_v1.pb.dart' as $1;
export 'rights_v1.pb.dart';

class RightsClient extends $grpc.Client {
  static final _$init =
      $grpc.ClientMethod<$4.AccessRuleWithoutId, $4.AccessRuleInfo>(
          '/users.Rights/Init',
          ($4.AccessRuleWithoutId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.AccessRuleInfo.fromBuffer(value));
  static final _$create =
      $grpc.ClientMethod<$4.AccessRuleWithoutId, $4.AccessRuleInfo>(
          '/users.Rights/Create',
          ($4.AccessRuleWithoutId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.AccessRuleInfo.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$4.AccessRuleIdAndRight, $4.AccessRuleIdAndRight>(
          '/users.Rights/Update',
          ($4.AccessRuleIdAndRight value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.AccessRuleIdAndRight.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$4.AccessRuleId, $1.EmptyMessage>(
      '/users.Rights/Delete',
      ($4.AccessRuleId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$4.AccessRuleId, $4.AccessRuleInfo>(
      '/users.Rights/Get',
      ($4.AccessRuleId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AccessRuleInfo.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$4.RightsListOptions, $4.AccessRuleInfo>(
          '/users.Rights/List',
          ($4.RightsListOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.AccessRuleInfo.fromBuffer(value));
  static final _$listAvailableApps =
      $grpc.ClientMethod<$4.AvailableAppsListOptions, $4.Applications>(
          '/users.Rights/ListAvailableApps',
          ($4.AvailableAppsListOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.Applications.fromBuffer(value));
  static final _$checkRight =
      $grpc.ClientMethod<$4.AccessRightRequest, $1.EmptyMessage>(
          '/users.Rights/CheckRight',
          ($4.AccessRightRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));

  RightsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.AccessRuleInfo> init($4.AccessRuleWithoutId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$init, request, options: options);
  }

  $grpc.ResponseFuture<$4.AccessRuleInfo> create($4.AccessRuleWithoutId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$4.AccessRuleIdAndRight> update(
      $4.AccessRuleIdAndRight request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> delete($4.AccessRuleId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$4.AccessRuleInfo> get($4.AccessRuleId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$4.AccessRuleInfo> list($4.RightsListOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$4.Applications> listAvailableApps(
      $4.AvailableAppsListOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listAvailableApps, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> checkRight(
      $4.AccessRightRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkRight, request, options: options);
  }
}

abstract class RightsServiceBase extends $grpc.Service {
  $core.String get $name => 'users.Rights';

  RightsServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.AccessRuleWithoutId, $4.AccessRuleInfo>(
        'Init',
        init_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AccessRuleWithoutId.fromBuffer(value),
        ($4.AccessRuleInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AccessRuleWithoutId, $4.AccessRuleInfo>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AccessRuleWithoutId.fromBuffer(value),
        ($4.AccessRuleInfo value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.AccessRuleIdAndRight, $4.AccessRuleIdAndRight>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.AccessRuleIdAndRight.fromBuffer(value),
            ($4.AccessRuleIdAndRight value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AccessRuleId, $1.EmptyMessage>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AccessRuleId.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AccessRuleId, $4.AccessRuleInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AccessRuleId.fromBuffer(value),
        ($4.AccessRuleInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RightsListOptions, $4.AccessRuleInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $4.RightsListOptions.fromBuffer(value),
        ($4.AccessRuleInfo value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.AvailableAppsListOptions, $4.Applications>(
            'ListAvailableApps',
            listAvailableApps_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $4.AvailableAppsListOptions.fromBuffer(value),
            ($4.Applications value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AccessRightRequest, $1.EmptyMessage>(
        'CheckRight',
        checkRight_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AccessRightRequest.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
  }

  $async.Future<$4.AccessRuleInfo> init_Pre($grpc.ServiceCall call,
      $async.Future<$4.AccessRuleWithoutId> request) async {
    return init(call, await request);
  }

  $async.Future<$4.AccessRuleInfo> create_Pre($grpc.ServiceCall call,
      $async.Future<$4.AccessRuleWithoutId> request) async {
    return create(call, await request);
  }

  $async.Future<$4.AccessRuleIdAndRight> update_Pre($grpc.ServiceCall call,
      $async.Future<$4.AccessRuleIdAndRight> request) async {
    return update(call, await request);
  }

  $async.Future<$1.EmptyMessage> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AccessRuleId> request) async {
    return delete(call, await request);
  }

  $async.Future<$4.AccessRuleInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AccessRuleId> request) async {
    return get(call, await request);
  }

  $async.Stream<$4.AccessRuleInfo> list_Pre($grpc.ServiceCall call,
      $async.Future<$4.RightsListOptions> request) async* {
    yield* list(call, await request);
  }

  $async.Stream<$4.Applications> listAvailableApps_Pre($grpc.ServiceCall call,
      $async.Future<$4.AvailableAppsListOptions> request) async* {
    yield* listAvailableApps(call, await request);
  }

  $async.Future<$1.EmptyMessage> checkRight_Pre($grpc.ServiceCall call,
      $async.Future<$4.AccessRightRequest> request) async {
    return checkRight(call, await request);
  }

  $async.Future<$4.AccessRuleInfo> init(
      $grpc.ServiceCall call, $4.AccessRuleWithoutId request);
  $async.Future<$4.AccessRuleInfo> create(
      $grpc.ServiceCall call, $4.AccessRuleWithoutId request);
  $async.Future<$4.AccessRuleIdAndRight> update(
      $grpc.ServiceCall call, $4.AccessRuleIdAndRight request);
  $async.Future<$1.EmptyMessage> delete(
      $grpc.ServiceCall call, $4.AccessRuleId request);
  $async.Future<$4.AccessRuleInfo> get(
      $grpc.ServiceCall call, $4.AccessRuleId request);
  $async.Stream<$4.AccessRuleInfo> list(
      $grpc.ServiceCall call, $4.RightsListOptions request);
  $async.Stream<$4.Applications> listAvailableApps(
      $grpc.ServiceCall call, $4.AvailableAppsListOptions request);
  $async.Future<$1.EmptyMessage> checkRight(
      $grpc.ServiceCall call, $4.AccessRightRequest request);
}
