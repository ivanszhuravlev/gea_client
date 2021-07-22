///
//  Generated code. Do not modify.
//  source: users/rights/rights.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'rights.pb.dart' as $3;
import '../../common/common.v1.pb.dart' as $1;
export 'rights.pb.dart';

class RightsClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$3.AccessRuleWithoutId, $3.AccessRuleInfo>(
          '/users.Rights/Create',
          ($3.AccessRuleWithoutId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.AccessRuleInfo.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$3.AccessRuleIdAndRight, $3.AccessRuleIdAndRight>(
          '/users.Rights/Update',
          ($3.AccessRuleIdAndRight value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.AccessRuleIdAndRight.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$3.AccessRuleId, $1.EmptyMessage>(
      '/users.Rights/Delete',
      ($3.AccessRuleId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$3.AccessRuleId, $3.AccessRuleInfo>(
      '/users.Rights/Get',
      ($3.AccessRuleId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AccessRuleInfo.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$3.ListOptions, $3.AccessRuleInfo>(
      '/users.Rights/List',
      ($3.ListOptions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AccessRuleInfo.fromBuffer(value));

  RightsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.AccessRuleInfo> create($3.AccessRuleWithoutId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$3.AccessRuleIdAndRight> update(
      $3.AccessRuleIdAndRight request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> delete($3.AccessRuleId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$3.AccessRuleInfo> get($3.AccessRuleId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$3.AccessRuleInfo> list($3.ListOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class RightsServiceBase extends $grpc.Service {
  $core.String get $name => 'users.Rights';

  RightsServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.AccessRuleWithoutId, $3.AccessRuleInfo>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.AccessRuleWithoutId.fromBuffer(value),
        ($3.AccessRuleInfo value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.AccessRuleIdAndRight, $3.AccessRuleIdAndRight>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.AccessRuleIdAndRight.fromBuffer(value),
            ($3.AccessRuleIdAndRight value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AccessRuleId, $1.EmptyMessage>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccessRuleId.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AccessRuleId, $3.AccessRuleInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccessRuleId.fromBuffer(value),
        ($3.AccessRuleInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListOptions, $3.AccessRuleInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.ListOptions.fromBuffer(value),
        ($3.AccessRuleInfo value) => value.writeToBuffer()));
  }

  $async.Future<$3.AccessRuleInfo> create_Pre($grpc.ServiceCall call,
      $async.Future<$3.AccessRuleWithoutId> request) async {
    return create(call, await request);
  }

  $async.Future<$3.AccessRuleIdAndRight> update_Pre($grpc.ServiceCall call,
      $async.Future<$3.AccessRuleIdAndRight> request) async {
    return update(call, await request);
  }

  $async.Future<$1.EmptyMessage> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccessRuleId> request) async {
    return delete(call, await request);
  }

  $async.Future<$3.AccessRuleInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccessRuleId> request) async {
    return get(call, await request);
  }

  $async.Stream<$3.AccessRuleInfo> list_Pre(
      $grpc.ServiceCall call, $async.Future<$3.ListOptions> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$3.AccessRuleInfo> create(
      $grpc.ServiceCall call, $3.AccessRuleWithoutId request);
  $async.Future<$3.AccessRuleIdAndRight> update(
      $grpc.ServiceCall call, $3.AccessRuleIdAndRight request);
  $async.Future<$1.EmptyMessage> delete(
      $grpc.ServiceCall call, $3.AccessRuleId request);
  $async.Future<$3.AccessRuleInfo> get(
      $grpc.ServiceCall call, $3.AccessRuleId request);
  $async.Stream<$3.AccessRuleInfo> list(
      $grpc.ServiceCall call, $3.ListOptions request);
}
