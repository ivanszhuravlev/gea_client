///
//  Generated code. Do not modify.
//  source: users/accounts/accounts_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'accounts_v1.pb.dart' as $3;
import '../../common/common_v1.pb.dart' as $1;
import '../../apps/applications/applications_v1.pb.dart' as $2;
export 'accounts_v1.pb.dart';

class AccountsClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$3.AccountCreds, $3.AccountInfo>(
      '/users.Accounts/Create',
      ($3.AccountCreds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AccountInfo.fromBuffer(value));
  static final _$updateUser =
      $grpc.ClientMethod<$3.FullAccountInfo, $3.FullAccountInfo>(
          '/users.Accounts/UpdateUser',
          ($3.FullAccountInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.FullAccountInfo.fromBuffer(value));
  static final _$updatePassword =
      $grpc.ClientMethod<$3.PasswordUpdate, $1.EmptyMessage>(
          '/users.Accounts/UpdatePassword',
          ($3.PasswordUpdate value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$3.AccountId, $3.AccountInfo>(
      '/users.Accounts/Get',
      ($3.AccountId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AccountInfo.fromBuffer(value));
  static final _$selfGet = $grpc.ClientMethod<$3.AccountId, $3.FullAccountInfo>(
      '/users.Accounts/SelfGet',
      ($3.AccountId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.FullAccountInfo.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$3.AccountsListOptions, $3.AccountInfo>(
          '/users.Accounts/List',
          ($3.AccountsListOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.AccountInfo.fromBuffer(value));
  static final _$addAppToUser = $grpc.ClientMethod<$2.AppId, $1.EmptyMessage>(
      '/users.Accounts/AddAppToUser',
      ($2.AppId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$initAddAppToUser =
      $grpc.ClientMethod<$2.AppId, $1.EmptyMessage>(
          '/users.Accounts/InitAddAppToUser',
          ($2.AppId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$getAppsFromUser =
      $grpc.ClientMethod<$3.AccountId, $3.AccountsApps>(
          '/users.Accounts/GetAppsFromUser',
          ($3.AccountId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.AccountsApps.fromBuffer(value));

  AccountsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.AccountInfo> create($3.AccountCreds request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$3.FullAccountInfo> updateUser(
      $3.FullAccountInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> updatePassword(
      $3.PasswordUpdate request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePassword, request, options: options);
  }

  $grpc.ResponseFuture<$3.AccountInfo> get($3.AccountId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$3.FullAccountInfo> selfGet($3.AccountId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$selfGet, request, options: options);
  }

  $grpc.ResponseStream<$3.AccountInfo> list($3.AccountsListOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> addAppToUser($2.AppId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addAppToUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> initAddAppToUser($2.AppId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$initAddAppToUser, request, options: options);
  }

  $grpc.ResponseFuture<$3.AccountsApps> getAppsFromUser($3.AccountId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAppsFromUser, request, options: options);
  }
}

abstract class AccountsServiceBase extends $grpc.Service {
  $core.String get $name => 'users.Accounts';

  AccountsServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.AccountCreds, $3.AccountInfo>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccountCreds.fromBuffer(value),
        ($3.AccountInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FullAccountInfo, $3.FullAccountInfo>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.FullAccountInfo.fromBuffer(value),
        ($3.FullAccountInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.PasswordUpdate, $1.EmptyMessage>(
        'UpdatePassword',
        updatePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PasswordUpdate.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AccountId, $3.AccountInfo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccountId.fromBuffer(value),
        ($3.AccountInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AccountId, $3.FullAccountInfo>(
        'SelfGet',
        selfGet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccountId.fromBuffer(value),
        ($3.FullAccountInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AccountsListOptions, $3.AccountInfo>(
        'List',
        list_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $3.AccountsListOptions.fromBuffer(value),
        ($3.AccountInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AppId, $1.EmptyMessage>(
        'AddAppToUser',
        addAppToUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AppId.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AppId, $1.EmptyMessage>(
        'InitAddAppToUser',
        initAddAppToUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AppId.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AccountId, $3.AccountsApps>(
        'GetAppsFromUser',
        getAppsFromUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccountId.fromBuffer(value),
        ($3.AccountsApps value) => value.writeToBuffer()));
  }

  $async.Future<$3.AccountInfo> create_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccountCreds> request) async {
    return create(call, await request);
  }

  $async.Future<$3.FullAccountInfo> updateUser_Pre(
      $grpc.ServiceCall call, $async.Future<$3.FullAccountInfo> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$1.EmptyMessage> updatePassword_Pre(
      $grpc.ServiceCall call, $async.Future<$3.PasswordUpdate> request) async {
    return updatePassword(call, await request);
  }

  $async.Future<$3.AccountInfo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccountId> request) async {
    return get(call, await request);
  }

  $async.Future<$3.FullAccountInfo> selfGet_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccountId> request) async {
    return selfGet(call, await request);
  }

  $async.Stream<$3.AccountInfo> list_Pre($grpc.ServiceCall call,
      $async.Future<$3.AccountsListOptions> request) async* {
    yield* list(call, await request);
  }

  $async.Future<$1.EmptyMessage> addAppToUser_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AppId> request) async {
    return addAppToUser(call, await request);
  }

  $async.Future<$1.EmptyMessage> initAddAppToUser_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AppId> request) async {
    return initAddAppToUser(call, await request);
  }

  $async.Future<$3.AccountsApps> getAppsFromUser_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccountId> request) async {
    return getAppsFromUser(call, await request);
  }

  $async.Future<$3.AccountInfo> create(
      $grpc.ServiceCall call, $3.AccountCreds request);
  $async.Future<$3.FullAccountInfo> updateUser(
      $grpc.ServiceCall call, $3.FullAccountInfo request);
  $async.Future<$1.EmptyMessage> updatePassword(
      $grpc.ServiceCall call, $3.PasswordUpdate request);
  $async.Future<$3.AccountInfo> get(
      $grpc.ServiceCall call, $3.AccountId request);
  $async.Future<$3.FullAccountInfo> selfGet(
      $grpc.ServiceCall call, $3.AccountId request);
  $async.Stream<$3.AccountInfo> list(
      $grpc.ServiceCall call, $3.AccountsListOptions request);
  $async.Future<$1.EmptyMessage> addAppToUser(
      $grpc.ServiceCall call, $2.AppId request);
  $async.Future<$1.EmptyMessage> initAddAppToUser(
      $grpc.ServiceCall call, $2.AppId request);
  $async.Future<$3.AccountsApps> getAppsFromUser(
      $grpc.ServiceCall call, $3.AccountId request);
}

class TokensClient extends $grpc.Client {
  static final _$getGitlabTokenByAccountID =
      $grpc.ClientMethod<$3.AccountId, $3.AccountGitlabToken>(
          '/users.Tokens/GetGitlabTokenByAccountID',
          ($3.AccountId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.AccountGitlabToken.fromBuffer(value));

  TokensClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.AccountGitlabToken> getGitlabTokenByAccountID(
      $3.AccountId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGitlabTokenByAccountID, request,
        options: options);
  }
}

abstract class TokensServiceBase extends $grpc.Service {
  $core.String get $name => 'users.Tokens';

  TokensServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.AccountId, $3.AccountGitlabToken>(
        'GetGitlabTokenByAccountID',
        getGitlabTokenByAccountID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccountId.fromBuffer(value),
        ($3.AccountGitlabToken value) => value.writeToBuffer()));
  }

  $async.Future<$3.AccountGitlabToken> getGitlabTokenByAccountID_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccountId> request) async {
    return getGitlabTokenByAccountID(call, await request);
  }

  $async.Future<$3.AccountGitlabToken> getGitlabTokenByAccountID(
      $grpc.ServiceCall call, $3.AccountId request);
}
