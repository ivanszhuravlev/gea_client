///
//  Generated code. Do not modify.
//  source: users/rights/rights.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AccessRights extends $pb.ProtobufEnum {
  static const AccessRights READ = AccessRights._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'READ');
  static const AccessRights WRITE = AccessRights._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WRITE');
  static const AccessRights DELETE = AccessRights._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DELETE');

  static const $core.List<AccessRights> values = <AccessRights> [
    READ,
    WRITE,
    DELETE,
  ];

  static final $core.Map<$core.int, AccessRights> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccessRights? valueOf($core.int value) => _byValue[value];

  const AccessRights._($core.int v, $core.String n) : super(v, n);
}

