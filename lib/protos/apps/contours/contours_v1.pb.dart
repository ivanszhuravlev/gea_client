///
//  Generated code. Do not modify.
//  source: apps/contours/contours_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ContourId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContourId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  ContourId._() : super();
  factory ContourId({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory ContourId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContourId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContourId clone() => ContourId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContourId copyWith(void Function(ContourId) updates) => super.copyWith((message) => updates(message as ContourId)) as ContourId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContourId create() => ContourId._();
  ContourId createEmptyInstance() => create();
  static $pb.PbList<ContourId> createRepeated() => $pb.PbList<ContourId>();
  @$core.pragma('dart2js:noInline')
  static ContourId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContourId>(create);
  static ContourId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ContoursListOption extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContoursListOption', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
    ..hasRequiredFields = false
  ;

  ContoursListOption._() : super();
  factory ContoursListOption({
    $core.String? appId,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory ContoursListOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContoursListOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContoursListOption clone() => ContoursListOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContoursListOption copyWith(void Function(ContoursListOption) updates) => super.copyWith((message) => updates(message as ContoursListOption)) as ContoursListOption; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContoursListOption create() => ContoursListOption._();
  ContoursListOption createEmptyInstance() => create();
  static $pb.PbList<ContoursListOption> createRepeated() => $pb.PbList<ContoursListOption>();
  @$core.pragma('dart2js:noInline')
  static ContoursListOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContoursListOption>(create);
  static ContoursListOption? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);
}

class ContourIdAndName extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContourIdAndName', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
    ..hasRequiredFields = false
  ;

  ContourIdAndName._() : super();
  factory ContourIdAndName({
    $core.String? id,
    $core.String? name,
    $core.String? appId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory ContourIdAndName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContourIdAndName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContourIdAndName clone() => ContourIdAndName()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContourIdAndName copyWith(void Function(ContourIdAndName) updates) => super.copyWith((message) => updates(message as ContourIdAndName)) as ContourIdAndName; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContourIdAndName create() => ContourIdAndName._();
  ContourIdAndName createEmptyInstance() => create();
  static $pb.PbList<ContourIdAndName> createRepeated() => $pb.PbList<ContourIdAndName>();
  @$core.pragma('dart2js:noInline')
  static ContourIdAndName getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContourIdAndName>(create);
  static ContourIdAndName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get appId => $_getSZ(2);
  @$pb.TagNumber(3)
  set appId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);
}

class ContourInfoWithoutServices extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContourInfoWithoutServices', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
    ..hasRequiredFields = false
  ;

  ContourInfoWithoutServices._() : super();
  factory ContourInfoWithoutServices({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? appId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory ContourInfoWithoutServices.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContourInfoWithoutServices.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContourInfoWithoutServices clone() => ContourInfoWithoutServices()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContourInfoWithoutServices copyWith(void Function(ContourInfoWithoutServices) updates) => super.copyWith((message) => updates(message as ContourInfoWithoutServices)) as ContourInfoWithoutServices; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContourInfoWithoutServices create() => ContourInfoWithoutServices._();
  ContourInfoWithoutServices createEmptyInstance() => create();
  static $pb.PbList<ContourInfoWithoutServices> createRepeated() => $pb.PbList<ContourInfoWithoutServices>();
  @$core.pragma('dart2js:noInline')
  static ContourInfoWithoutServices getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContourInfoWithoutServices>(create);
  static ContourInfoWithoutServices? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get appId => $_getSZ(3);
  @$pb.TagNumber(4)
  set appId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppId() => clearField(4);
}

class ContourNameAndDescription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContourNameAndDescription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
    ..hasRequiredFields = false
  ;

  ContourNameAndDescription._() : super();
  factory ContourNameAndDescription({
    $core.String? name,
    $core.String? description,
    $core.String? appId,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory ContourNameAndDescription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContourNameAndDescription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContourNameAndDescription clone() => ContourNameAndDescription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContourNameAndDescription copyWith(void Function(ContourNameAndDescription) updates) => super.copyWith((message) => updates(message as ContourNameAndDescription)) as ContourNameAndDescription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContourNameAndDescription create() => ContourNameAndDescription._();
  ContourNameAndDescription createEmptyInstance() => create();
  static $pb.PbList<ContourNameAndDescription> createRepeated() => $pb.PbList<ContourNameAndDescription>();
  @$core.pragma('dart2js:noInline')
  static ContourNameAndDescription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContourNameAndDescription>(create);
  static ContourNameAndDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get appId => $_getSZ(2);
  @$pb.TagNumber(3)
  set appId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);
}

class ContourInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContourInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pc<ServiceInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services', $pb.PbFieldType.PM, subBuilder: ServiceInfo.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
    ..hasRequiredFields = false
  ;

  ContourInfo._() : super();
  factory ContourInfo({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.Iterable<ServiceInfo>? services,
    $core.String? appId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (services != null) {
      _result.services.addAll(services);
    }
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory ContourInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContourInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContourInfo clone() => ContourInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContourInfo copyWith(void Function(ContourInfo) updates) => super.copyWith((message) => updates(message as ContourInfo)) as ContourInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContourInfo create() => ContourInfo._();
  ContourInfo createEmptyInstance() => create();
  static $pb.PbList<ContourInfo> createRepeated() => $pb.PbList<ContourInfo>();
  @$core.pragma('dart2js:noInline')
  static ContourInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContourInfo>(create);
  static ContourInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<ServiceInfo> get services => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get appId => $_getSZ(4);
  @$pb.TagNumber(5)
  set appId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppId() => clearField(5);
}

class ServiceWithoutId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceWithoutId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'project')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environment')
    ..hasRequiredFields = false
  ;

  ServiceWithoutId._() : super();
  factory ServiceWithoutId({
    $fixnum.Int64? project,
    $fixnum.Int64? environment,
  }) {
    final _result = create();
    if (project != null) {
      _result.project = project;
    }
    if (environment != null) {
      _result.environment = environment;
    }
    return _result;
  }
  factory ServiceWithoutId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceWithoutId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceWithoutId clone() => ServiceWithoutId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceWithoutId copyWith(void Function(ServiceWithoutId) updates) => super.copyWith((message) => updates(message as ServiceWithoutId)) as ServiceWithoutId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceWithoutId create() => ServiceWithoutId._();
  ServiceWithoutId createEmptyInstance() => create();
  static $pb.PbList<ServiceWithoutId> createRepeated() => $pb.PbList<ServiceWithoutId>();
  @$core.pragma('dart2js:noInline')
  static ServiceWithoutId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceWithoutId>(create);
  static ServiceWithoutId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get project => $_getI64(0);
  @$pb.TagNumber(1)
  set project($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProject() => $_has(0);
  @$pb.TagNumber(1)
  void clearProject() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get environment => $_getI64(1);
  @$pb.TagNumber(2)
  set environment($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnvironment() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnvironment() => clearField(2);
}

class ServiceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'project')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'environment')
    ..hasRequiredFields = false
  ;

  ServiceInfo._() : super();
  factory ServiceInfo({
    $core.String? id,
    $fixnum.Int64? project,
    $fixnum.Int64? environment,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (project != null) {
      _result.project = project;
    }
    if (environment != null) {
      _result.environment = environment;
    }
    return _result;
  }
  factory ServiceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceInfo clone() => ServiceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceInfo copyWith(void Function(ServiceInfo) updates) => super.copyWith((message) => updates(message as ServiceInfo)) as ServiceInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceInfo create() => ServiceInfo._();
  ServiceInfo createEmptyInstance() => create();
  static $pb.PbList<ServiceInfo> createRepeated() => $pb.PbList<ServiceInfo>();
  @$core.pragma('dart2js:noInline')
  static ServiceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceInfo>(create);
  static ServiceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get project => $_getI64(1);
  @$pb.TagNumber(2)
  set project($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProject() => $_has(1);
  @$pb.TagNumber(2)
  void clearProject() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get environment => $_getI64(2);
  @$pb.TagNumber(3)
  set environment($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnvironment() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnvironment() => clearField(3);
}

class ServiceIdAndContourId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceIdAndContourId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contourId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
    ..hasRequiredFields = false
  ;

  ServiceIdAndContourId._() : super();
  factory ServiceIdAndContourId({
    $core.String? contourId,
    $core.String? serviceId,
    $core.String? appId,
  }) {
    final _result = create();
    if (contourId != null) {
      _result.contourId = contourId;
    }
    if (serviceId != null) {
      _result.serviceId = serviceId;
    }
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory ServiceIdAndContourId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceIdAndContourId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceIdAndContourId clone() => ServiceIdAndContourId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceIdAndContourId copyWith(void Function(ServiceIdAndContourId) updates) => super.copyWith((message) => updates(message as ServiceIdAndContourId)) as ServiceIdAndContourId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceIdAndContourId create() => ServiceIdAndContourId._();
  ServiceIdAndContourId createEmptyInstance() => create();
  static $pb.PbList<ServiceIdAndContourId> createRepeated() => $pb.PbList<ServiceIdAndContourId>();
  @$core.pragma('dart2js:noInline')
  static ServiceIdAndContourId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceIdAndContourId>(create);
  static ServiceIdAndContourId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contourId => $_getSZ(0);
  @$pb.TagNumber(1)
  set contourId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContourId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContourId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serviceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServiceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get appId => $_getSZ(2);
  @$pb.TagNumber(3)
  set appId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);
}

class RepeatedServiceWithoutId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RepeatedServiceWithoutId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contourId')
    ..pc<ServiceWithoutId>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services', $pb.PbFieldType.PM, subBuilder: ServiceWithoutId.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
    ..hasRequiredFields = false
  ;

  RepeatedServiceWithoutId._() : super();
  factory RepeatedServiceWithoutId({
    $core.String? contourId,
    $core.Iterable<ServiceWithoutId>? services,
    $core.String? appId,
  }) {
    final _result = create();
    if (contourId != null) {
      _result.contourId = contourId;
    }
    if (services != null) {
      _result.services.addAll(services);
    }
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory RepeatedServiceWithoutId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RepeatedServiceWithoutId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RepeatedServiceWithoutId clone() => RepeatedServiceWithoutId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RepeatedServiceWithoutId copyWith(void Function(RepeatedServiceWithoutId) updates) => super.copyWith((message) => updates(message as RepeatedServiceWithoutId)) as RepeatedServiceWithoutId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RepeatedServiceWithoutId create() => RepeatedServiceWithoutId._();
  RepeatedServiceWithoutId createEmptyInstance() => create();
  static $pb.PbList<RepeatedServiceWithoutId> createRepeated() => $pb.PbList<RepeatedServiceWithoutId>();
  @$core.pragma('dart2js:noInline')
  static RepeatedServiceWithoutId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepeatedServiceWithoutId>(create);
  static RepeatedServiceWithoutId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contourId => $_getSZ(0);
  @$pb.TagNumber(1)
  set contourId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContourId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContourId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ServiceWithoutId> get services => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get appId => $_getSZ(2);
  @$pb.TagNumber(3)
  set appId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);
}

class RepeatedServiceWithId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RepeatedServiceWithId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'apps'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contourId')
    ..pc<ServiceInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services', $pb.PbFieldType.PM, subBuilder: ServiceInfo.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
    ..hasRequiredFields = false
  ;

  RepeatedServiceWithId._() : super();
  factory RepeatedServiceWithId({
    $core.String? contourId,
    $core.Iterable<ServiceInfo>? services,
    $core.String? appId,
  }) {
    final _result = create();
    if (contourId != null) {
      _result.contourId = contourId;
    }
    if (services != null) {
      _result.services.addAll(services);
    }
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory RepeatedServiceWithId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RepeatedServiceWithId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RepeatedServiceWithId clone() => RepeatedServiceWithId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RepeatedServiceWithId copyWith(void Function(RepeatedServiceWithId) updates) => super.copyWith((message) => updates(message as RepeatedServiceWithId)) as RepeatedServiceWithId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RepeatedServiceWithId create() => RepeatedServiceWithId._();
  RepeatedServiceWithId createEmptyInstance() => create();
  static $pb.PbList<RepeatedServiceWithId> createRepeated() => $pb.PbList<RepeatedServiceWithId>();
  @$core.pragma('dart2js:noInline')
  static RepeatedServiceWithId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepeatedServiceWithId>(create);
  static RepeatedServiceWithId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contourId => $_getSZ(0);
  @$pb.TagNumber(1)
  set contourId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContourId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContourId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ServiceInfo> get services => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get appId => $_getSZ(2);
  @$pb.TagNumber(3)
  set appId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppId() => clearField(3);
}

