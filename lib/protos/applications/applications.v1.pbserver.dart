///
//  Generated code. Do not modify.
//  source: applications/applications.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'applications.v1.pb.dart' as $3;
import '../common/common.pb.dart' as $2;
import 'applications.v1.pbjson.dart';

export 'applications.v1.pb.dart';

abstract class ApplicationsServiceBase extends $pb.GeneratedService {
  $async.Future<$3.AppInfo> create($pb.ServerContext ctx, $3.AppName request);
  $async.Future<$3.AppInfo> get($pb.ServerContext ctx, $3.AppName request);
  $async.Future<$3.AppInfo> list($pb.ServerContext ctx, $2.EmptyMessage request);
  $async.Future<$3.AppInfo> update($pb.ServerContext ctx, $3.AppInfo request);
  $async.Future<$2.EmptyMessage> delete($pb.ServerContext ctx, $3.AppInfo request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Create': return $3.AppName();
      case 'Get': return $3.AppName();
      case 'List': return $2.EmptyMessage();
      case 'Update': return $3.AppInfo();
      case 'Delete': return $3.AppInfo();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Create': return this.create(ctx, request as $3.AppName);
      case 'Get': return this.get(ctx, request as $3.AppName);
      case 'List': return this.list(ctx, request as $2.EmptyMessage);
      case 'Update': return this.update(ctx, request as $3.AppInfo);
      case 'Delete': return this.delete(ctx, request as $3.AppInfo);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ApplicationsServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ApplicationsServiceBase$messageJson;
}

