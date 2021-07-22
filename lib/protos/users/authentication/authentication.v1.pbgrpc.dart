///
//  Generated code. Do not modify.
//  source: users/authentication/authentication.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../accounts/accounts.v1.pb.dart' as $4;
import '../../common/common.v1.pb.dart' as $1;
export 'authentication.v1.pb.dart';

class AuthenticationClient extends $grpc.Client {
  static final _$signIn = $grpc.ClientMethod<$4.AccountCreds, $1.EmptyMessage>(
      '/users.Authentication/SignIn',
      ($4.AccountCreds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$signUp = $grpc.ClientMethod<$4.AccountCreds, $1.EmptyMessage>(
      '/users.Authentication/SignUp',
      ($4.AccountCreds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));

  AuthenticationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.EmptyMessage> signIn($4.AccountCreds request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> signUp($4.AccountCreds request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }
}

abstract class AuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'users.Authentication';

  AuthenticationServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.AccountCreds, $1.EmptyMessage>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AccountCreds.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AccountCreds, $1.EmptyMessage>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AccountCreds.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
  }

  $async.Future<$1.EmptyMessage> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AccountCreds> request) async {
    return signIn(call, await request);
  }

  $async.Future<$1.EmptyMessage> signUp_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AccountCreds> request) async {
    return signUp(call, await request);
  }

  $async.Future<$1.EmptyMessage> signIn(
      $grpc.ServiceCall call, $4.AccountCreds request);
  $async.Future<$1.EmptyMessage> signUp(
      $grpc.ServiceCall call, $4.AccountCreds request);
}
