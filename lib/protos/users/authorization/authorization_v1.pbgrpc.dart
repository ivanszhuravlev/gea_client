///
//  Generated code. Do not modify.
//  source: users/authorization/authorization_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../accounts/accounts_v1.pb.dart' as $3;
import '../../common/common_v1.pb.dart' as $1;
export 'authorization_v1.pb.dart';

class AuthorizationClient extends $grpc.Client {
  static final _$refreshToken =
      $grpc.ClientMethod<$3.AccountId, $1.EmptyMessage>(
          '/users.Authorization/RefreshToken',
          ($3.AccountId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$validateToken =
      $grpc.ClientMethod<$1.EmptyMessage, $1.EmptyMessage>(
          '/users.Authorization/ValidateToken',
          ($1.EmptyMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value));
  static final _$parseIdFromToken =
      $grpc.ClientMethod<$1.EmptyMessage, $3.AccountId>(
          '/users.Authorization/ParseIdFromToken',
          ($1.EmptyMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.AccountId.fromBuffer(value));

  AuthorizationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.EmptyMessage> refreshToken($3.AccountId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshToken, request, options: options);
  }

  $grpc.ResponseFuture<$1.EmptyMessage> validateToken($1.EmptyMessage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateToken, request, options: options);
  }

  $grpc.ResponseFuture<$3.AccountId> parseIdFromToken($1.EmptyMessage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$parseIdFromToken, request, options: options);
  }
}

abstract class AuthorizationServiceBase extends $grpc.Service {
  $core.String get $name => 'users.Authorization';

  AuthorizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.AccountId, $1.EmptyMessage>(
        'RefreshToken',
        refreshToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AccountId.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EmptyMessage, $1.EmptyMessage>(
        'ValidateToken',
        validateToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value),
        ($1.EmptyMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EmptyMessage, $3.AccountId>(
        'ParseIdFromToken',
        parseIdFromToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EmptyMessage.fromBuffer(value),
        ($3.AccountId value) => value.writeToBuffer()));
  }

  $async.Future<$1.EmptyMessage> refreshToken_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AccountId> request) async {
    return refreshToken(call, await request);
  }

  $async.Future<$1.EmptyMessage> validateToken_Pre(
      $grpc.ServiceCall call, $async.Future<$1.EmptyMessage> request) async {
    return validateToken(call, await request);
  }

  $async.Future<$3.AccountId> parseIdFromToken_Pre(
      $grpc.ServiceCall call, $async.Future<$1.EmptyMessage> request) async {
    return parseIdFromToken(call, await request);
  }

  $async.Future<$1.EmptyMessage> refreshToken(
      $grpc.ServiceCall call, $3.AccountId request);
  $async.Future<$1.EmptyMessage> validateToken(
      $grpc.ServiceCall call, $1.EmptyMessage request);
  $async.Future<$3.AccountId> parseIdFromToken(
      $grpc.ServiceCall call, $1.EmptyMessage request);
}
