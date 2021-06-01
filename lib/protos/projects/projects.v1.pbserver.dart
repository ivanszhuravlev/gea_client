///
//  Generated code. Do not modify.
//  source: projects/projects.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'projects.v1.pb.dart' as $1;
import 'projects.v1.pbjson.dart';

export 'projects.v1.pb.dart';

abstract class ProjectsServiceBase extends $pb.GeneratedService {
  $async.Future<$1.ProjectInfo> get($pb.ServerContext ctx, $1.ProjectID request);
  $async.Future<$1.ProjectInfo> list($pb.ServerContext ctx, $1.ProjectName request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Get': return $1.ProjectID();
      case 'List': return $1.ProjectName();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Get': return this.get(ctx, request as $1.ProjectID);
      case 'List': return this.list(ctx, request as $1.ProjectName);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ProjectsServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ProjectsServiceBase$messageJson;
}

