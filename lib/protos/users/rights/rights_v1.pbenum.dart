///
//  Generated code. Do not modify.
//  source: users/rights/rights_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AccessRights extends $pb.ProtobufEnum {
  static const AccessRights ACCESS_RIGHTS_READ_UNSPECIFIED = AccessRights._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_RIGHTS_READ_UNSPECIFIED');
  static const AccessRights ACCESS_RIGHTS_WRITE = AccessRights._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_RIGHTS_WRITE');
  static const AccessRights ACCESS_RIGHTS_DELETE = AccessRights._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_RIGHTS_DELETE');

  static const $core.List<AccessRights> values = <AccessRights> [
    ACCESS_RIGHTS_READ_UNSPECIFIED,
    ACCESS_RIGHTS_WRITE,
    ACCESS_RIGHTS_DELETE,
  ];

  static final $core.Map<$core.int, AccessRights> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccessRights? valueOf($core.int value) => _byValue[value];

  const AccessRights._($core.int v, $core.String n) : super(v, n);
}

