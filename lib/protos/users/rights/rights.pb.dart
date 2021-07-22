///
//  Generated code. Do not modify.
//  source: users/rights/rights.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../apps/applications/applications.v1.pb.dart' as $2;

import 'rights.pbenum.dart';

export 'rights.pbenum.dart';

class AccessRuleId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccessRuleId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'users'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  AccessRuleId._() : super();
  factory AccessRuleId({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory AccessRuleId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessRuleId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessRuleId clone() => AccessRuleId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessRuleId copyWith(void Function(AccessRuleId) updates) => super.copyWith((message) => updates(message as AccessRuleId)) as AccessRuleId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccessRuleId create() => AccessRuleId._();
  AccessRuleId createEmptyInstance() => create();
  static $pb.PbList<AccessRuleId> createRepeated() => $pb.PbList<AccessRuleId>();
  @$core.pragma('dart2js:noInline')
  static AccessRuleId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessRuleId>(create);
  static AccessRuleId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class AccessRuleIdAndRight extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccessRuleIdAndRight', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'users'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..e<AccessRights>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessRight', $pb.PbFieldType.OE, protoName: 'accessRight', defaultOrMaker: AccessRights.READ, valueOf: AccessRights.valueOf, enumValues: AccessRights.values)
    ..hasRequiredFields = false
  ;

  AccessRuleIdAndRight._() : super();
  factory AccessRuleIdAndRight({
    $core.String? id,
    AccessRights? accessRight,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (accessRight != null) {
      _result.accessRight = accessRight;
    }
    return _result;
  }
  factory AccessRuleIdAndRight.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessRuleIdAndRight.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessRuleIdAndRight clone() => AccessRuleIdAndRight()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessRuleIdAndRight copyWith(void Function(AccessRuleIdAndRight) updates) => super.copyWith((message) => updates(message as AccessRuleIdAndRight)) as AccessRuleIdAndRight; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccessRuleIdAndRight create() => AccessRuleIdAndRight._();
  AccessRuleIdAndRight createEmptyInstance() => create();
  static $pb.PbList<AccessRuleIdAndRight> createRepeated() => $pb.PbList<AccessRuleIdAndRight>();
  @$core.pragma('dart2js:noInline')
  static AccessRuleIdAndRight getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessRuleIdAndRight>(create);
  static AccessRuleIdAndRight? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  AccessRights get accessRight => $_getN(1);
  @$pb.TagNumber(3)
  set accessRight(AccessRights v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessRight() => $_has(1);
  @$pb.TagNumber(3)
  void clearAccessRight() => clearField(3);
}

class AccessRuleWithoutId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccessRuleWithoutId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'users'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicationId', protoName: 'applicationId')
    ..e<AccessRights>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessRight', $pb.PbFieldType.OE, protoName: 'accessRight', defaultOrMaker: AccessRights.READ, valueOf: AccessRights.valueOf, enumValues: AccessRights.values)
    ..hasRequiredFields = false
  ;

  AccessRuleWithoutId._() : super();
  factory AccessRuleWithoutId({
    $core.String? userId,
    $core.String? applicationId,
    AccessRights? accessRight,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (applicationId != null) {
      _result.applicationId = applicationId;
    }
    if (accessRight != null) {
      _result.accessRight = accessRight;
    }
    return _result;
  }
  factory AccessRuleWithoutId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessRuleWithoutId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessRuleWithoutId clone() => AccessRuleWithoutId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessRuleWithoutId copyWith(void Function(AccessRuleWithoutId) updates) => super.copyWith((message) => updates(message as AccessRuleWithoutId)) as AccessRuleWithoutId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccessRuleWithoutId create() => AccessRuleWithoutId._();
  AccessRuleWithoutId createEmptyInstance() => create();
  static $pb.PbList<AccessRuleWithoutId> createRepeated() => $pb.PbList<AccessRuleWithoutId>();
  @$core.pragma('dart2js:noInline')
  static AccessRuleWithoutId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessRuleWithoutId>(create);
  static AccessRuleWithoutId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get applicationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set applicationId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplicationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplicationId() => clearField(2);

  @$pb.TagNumber(3)
  AccessRights get accessRight => $_getN(2);
  @$pb.TagNumber(3)
  set accessRight(AccessRights v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessRight() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessRight() => clearField(3);
}

class AccessRuleInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccessRuleInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'users'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicationId', protoName: 'applicationId')
    ..e<AccessRights>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessRight', $pb.PbFieldType.OE, protoName: 'accessRight', defaultOrMaker: AccessRights.READ, valueOf: AccessRights.valueOf, enumValues: AccessRights.values)
    ..hasRequiredFields = false
  ;

  AccessRuleInfo._() : super();
  factory AccessRuleInfo({
    $core.String? id,
    $core.String? userId,
    $core.String? applicationId,
    AccessRights? accessRight,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (applicationId != null) {
      _result.applicationId = applicationId;
    }
    if (accessRight != null) {
      _result.accessRight = accessRight;
    }
    return _result;
  }
  factory AccessRuleInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessRuleInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessRuleInfo clone() => AccessRuleInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessRuleInfo copyWith(void Function(AccessRuleInfo) updates) => super.copyWith((message) => updates(message as AccessRuleInfo)) as AccessRuleInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccessRuleInfo create() => AccessRuleInfo._();
  AccessRuleInfo createEmptyInstance() => create();
  static $pb.PbList<AccessRuleInfo> createRepeated() => $pb.PbList<AccessRuleInfo>();
  @$core.pragma('dart2js:noInline')
  static AccessRuleInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessRuleInfo>(create);
  static AccessRuleInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get applicationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set applicationId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApplicationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearApplicationId() => clearField(3);

  @$pb.TagNumber(4)
  AccessRights get accessRight => $_getN(3);
  @$pb.TagNumber(4)
  set accessRight(AccessRights v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccessRight() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccessRight() => clearField(4);
}

class ListOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'users'), createEmptyInstance: create)
    ..aOM<$2.AppId>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId', protoName: 'appId', subBuilder: $2.AppId.create)
    ..hasRequiredFields = false
  ;

  ListOptions._() : super();
  factory ListOptions({
    $2.AppId? appId,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory ListOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOptions clone() => ListOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOptions copyWith(void Function(ListOptions) updates) => super.copyWith((message) => updates(message as ListOptions)) as ListOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListOptions create() => ListOptions._();
  ListOptions createEmptyInstance() => create();
  static $pb.PbList<ListOptions> createRepeated() => $pb.PbList<ListOptions>();
  @$core.pragma('dart2js:noInline')
  static ListOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOptions>(create);
  static ListOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $2.AppId get appId => $_getN(0);
  @$pb.TagNumber(1)
  set appId($2.AppId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);
  @$pb.TagNumber(1)
  $2.AppId ensureAppId() => $_ensure(0);
}

