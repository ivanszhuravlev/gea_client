///
//  Generated code. Do not modify.
//  source: users/authentication/authentication_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../accounts/accounts_v1.pb.dart' as $3;
export 'authentication_v1.pb.dart';

class AuthenticationClient extends $grpc.Client {
  static final _$signIn = $grpc.ClientMethod<$3.AccountCreds, $3.AccountId>(
      '/users.Authentication/SignIn',
      ($3.AccountCreds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AccountId.fromBuffer(value));
  static final _$signUp = $grpc.ClientMethod<$3.AccountCreds, $3.AccountId>(
      '/users.Authentication/SignUp',
      ($3.AccountCreds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AccountId.fromBuffer(value));

  AuthenticationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.AccountId> signIn($3.AccountCreds request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$3.AccountId> signUp($3.AccountCreds request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }
}

abstract class AuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'users.Authentication';

  AuthenticationServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.AccountCreds, $3.AccountId>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccountCreds.fromBuffer(value),
        ($3.AccountId value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AccountCreds, $3.AccountId>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccountCreds.fromBuffer(value),
        ($3.AccountId value) => value.writeToBuffer()));
  }

  $async.Future<$3.AccountId> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccountCreds> request) async {
    return signIn(call, await request);
  }

  $async.Future<$3.AccountId> signUp_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccountCreds> request) async {
    return signUp(call, await request);
  }

  $async.Future<$3.AccountId> signIn(
      $grpc.ServiceCall call, $3.AccountCreds request);
  $async.Future<$3.AccountId> signUp(
      $grpc.ServiceCall call, $3.AccountCreds request);
}
