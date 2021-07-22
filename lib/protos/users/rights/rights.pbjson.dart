///
//  Generated code. Do not modify.
//  source: users/rights/rights.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accessRightsDescriptor instead')
const AccessRights$json = const {
  '1': 'AccessRights',
  '2': const [
    const {'1': 'READ', '2': 0},
    const {'1': 'WRITE', '2': 1},
    const {'1': 'DELETE', '2': 2},
  ],
};

/// Descriptor for `AccessRights`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accessRightsDescriptor = $convert.base64Decode('CgxBY2Nlc3NSaWdodHMSCAoEUkVBRBAAEgkKBVdSSVRFEAESCgoGREVMRVRFEAI=');
@$core.Deprecated('Use accessRuleIdDescriptor instead')
const AccessRuleId$json = const {
  '1': 'AccessRuleId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `AccessRuleId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessRuleIdDescriptor = $convert.base64Decode('CgxBY2Nlc3NSdWxlSWQSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use accessRuleIdAndRightDescriptor instead')
const AccessRuleIdAndRight$json = const {
  '1': 'AccessRuleIdAndRight',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'accessRight', '3': 3, '4': 1, '5': 14, '6': '.users.AccessRights', '10': 'accessRight'},
  ],
};

/// Descriptor for `AccessRuleIdAndRight`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessRuleIdAndRightDescriptor = $convert.base64Decode('ChRBY2Nlc3NSdWxlSWRBbmRSaWdodBIOCgJpZBgBIAEoCVICaWQSNQoLYWNjZXNzUmlnaHQYAyABKA4yEy51c2Vycy5BY2Nlc3NSaWdodHNSC2FjY2Vzc1JpZ2h0');
@$core.Deprecated('Use accessRuleWithoutIdDescriptor instead')
const AccessRuleWithoutId$json = const {
  '1': 'AccessRuleWithoutId',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'applicationId', '3': 2, '4': 1, '5': 9, '10': 'applicationId'},
    const {'1': 'accessRight', '3': 3, '4': 1, '5': 14, '6': '.users.AccessRights', '10': 'accessRight'},
  ],
};

/// Descriptor for `AccessRuleWithoutId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessRuleWithoutIdDescriptor = $convert.base64Decode('ChNBY2Nlc3NSdWxlV2l0aG91dElkEhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEiQKDWFwcGxpY2F0aW9uSWQYAiABKAlSDWFwcGxpY2F0aW9uSWQSNQoLYWNjZXNzUmlnaHQYAyABKA4yEy51c2Vycy5BY2Nlc3NSaWdodHNSC2FjY2Vzc1JpZ2h0');
@$core.Deprecated('Use accessRuleInfoDescriptor instead')
const AccessRuleInfo$json = const {
  '1': 'AccessRuleInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'applicationId', '3': 3, '4': 1, '5': 9, '10': 'applicationId'},
    const {'1': 'accessRight', '3': 4, '4': 1, '5': 14, '6': '.users.AccessRights', '10': 'accessRight'},
  ],
};

/// Descriptor for `AccessRuleInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessRuleInfoDescriptor = $convert.base64Decode('Cg5BY2Nlc3NSdWxlSW5mbxIOCgJpZBgBIAEoCVICaWQSFgoGdXNlcklkGAIgASgJUgZ1c2VySWQSJAoNYXBwbGljYXRpb25JZBgDIAEoCVINYXBwbGljYXRpb25JZBI1CgthY2Nlc3NSaWdodBgEIAEoDjITLnVzZXJzLkFjY2Vzc1JpZ2h0c1ILYWNjZXNzUmlnaHQ=');
@$core.Deprecated('Use listOptionsDescriptor instead')
const ListOptions$json = const {
  '1': 'ListOptions',
  '2': const [
    const {'1': 'appId', '3': 1, '4': 1, '5': 11, '6': '.apps.AppId', '10': 'appId'},
  ],
};

/// Descriptor for `ListOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOptionsDescriptor = $convert.base64Decode('CgtMaXN0T3B0aW9ucxIhCgVhcHBJZBgBIAEoCzILLmFwcHMuQXBwSWRSBWFwcElk');
