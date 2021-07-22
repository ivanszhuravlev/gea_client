///
//  Generated code. Do not modify.
//  source: users/accounts/accounts.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'accounts.v1.pb.dart' as $4;
import '../../common/common.v1.pb.dart' as $1;
export 'accounts.v1.pb.dart';

class AccountsClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$4.AccountCreds, $4.AccountInfo>(
      '/users.Accounts/Create',
      ($4.AccountCreds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AccountInfo.fromBuffer(value));
  static final _$updateUsername =
      $grpc.ClientMethod<$4.AccountInfo, $4.AccountInfo>(
          '/users.Accounts/UpdateUsername',
          ($4.AccountInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.AccountInfo.fromBuffer(value));
  static final _$updatePassword =
      $grpc.ClientMethod<$4.PasswordUpdate, $1.EmptyMessage>(
          '/users.Accounts/UpdatePassword',
          ($4.PasswordUpdate value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$4.AccountId, $4.AccountInfo>(
      '/users.Accounts/Get',
      ($4.AccountId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AccountInfo.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$4.AccountName, $4.AccountInfo>(
      '/users.Accounts/List',
      ($4.AccountName value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AccountInfo.fromBuffer(value));

  AccountsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.AccountInfo> create($4.AccountCreds request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$4.AccountInfo> updateUsername($4.AccountInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUsername, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> updatePassword(
      $4.PasswordUpdate request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePassword, request, options: options);
  }

  $grpc.ResponseFuture<$4.AccountInfo> get($4.AccountId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseStream<$4.AccountInfo> list($4.AccountName request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class AccountsServiceBase extends $grpc.Service {
  $core.String get $name => 'users.Accounts';

  AccountsServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.AccountCreds, $4.AccountInfo>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AccountCreds.fromBuffer(value),
        ($4.AccountInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AccountInfo, $4.AccountInfo>(
        'UpdateUsername',
        updateUsername_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AccountInfo.fromBuffer(value),
        ($4.AccountInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.PasswordUpdate, $1.EmptyMessage>(
        'UpdatePassword',
        updatePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.PasswordUpdate.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AccountId, $4.AccountInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AccountId.fromBuffer(value),
        ($4.AccountInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AccountName, $4.AccountInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $4.AccountName.fromBuffer(value),
        ($4.AccountInfo value) => value.writeToBuffer()));
  }

  $async.Future<$4.AccountInfo> create_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AccountCreds> request) async {
    return create(call, await request);
  }

  $async.Future<$4.AccountInfo> updateUsername_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AccountInfo> request) async {
    return updateUsername(call, await request);
  }

  $async.Future<$1.EmptyMessage> updatePassword_Pre(
      $grpc.ServiceCall call, $async.Future<$4.PasswordUpdate> request) async {
    return updatePassword(call, await request);
  }

  $async.Future<$4.AccountInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AccountId> request) async {
    return get(call, await request);
  }

  $async.Stream<$4.AccountInfo> list_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AccountName> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$4.AccountInfo> create(
      $grpc.ServiceCall call, $4.AccountCreds request);
  $async.Future<$4.AccountInfo> updateUsername(
      $grpc.ServiceCall call, $4.AccountInfo request);
  $async.Future<$1.EmptyMessage> updatePassword(
      $grpc.ServiceCall call, $4.PasswordUpdate request);
  $async.Future<$4.AccountInfo> get(
      $grpc.ServiceCall call, $4.AccountId request);
  $async.Stream<$4.AccountInfo> list(
      $grpc.ServiceCall call, $4.AccountName request);
}
