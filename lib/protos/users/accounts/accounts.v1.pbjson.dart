///
//  Generated code. Do not modify.
//  source: users/accounts/accounts.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountCredsDescriptor instead')
const AccountCreds$json = const {
  '1': 'AccountCreds',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AccountCreds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountCredsDescriptor = $convert.base64Decode('CgxBY2NvdW50Q3JlZHMSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use accountIdDescriptor instead')
const AccountId$json = const {
  '1': 'AccountId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `AccountId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountIdDescriptor = $convert.base64Decode('CglBY2NvdW50SWQSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use accountNameDescriptor instead')
const AccountName$json = const {
  '1': 'AccountName',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `AccountName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountNameDescriptor = $convert.base64Decode('CgtBY2NvdW50TmFtZRIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWU=');
@$core.Deprecated('Use accountInfoDescriptor instead')
const AccountInfo$json = const {
  '1': 'AccountInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `AccountInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoDescriptor = $convert.base64Decode('CgtBY2NvdW50SW5mbxIOCgJpZBgBIAEoCVICaWQSGgoIdXNlcm5hbWUYAiABKAlSCHVzZXJuYW1l');
@$core.Deprecated('Use accountInfoWithSensitiveDescriptor instead')
const AccountInfoWithSensitive$json = const {
  '1': 'AccountInfoWithSensitive',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AccountInfoWithSensitive`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoWithSensitiveDescriptor = $convert.base64Decode('ChhBY2NvdW50SW5mb1dpdGhTZW5zaXRpdmUSDgoCaWQYASABKAlSAmlkEhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use passwordUpdateDescriptor instead')
const PasswordUpdate$json = const {
  '1': 'PasswordUpdate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'oldPassword', '3': 3, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'newPassword', '3': 4, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

/// Descriptor for `PasswordUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passwordUpdateDescriptor = $convert.base64Decode('Cg5QYXNzd29yZFVwZGF0ZRIOCgJpZBgBIAEoCVICaWQSGgoIdXNlcm5hbWUYAiABKAlSCHVzZXJuYW1lEiAKC29sZFBhc3N3b3JkGAMgASgJUgtvbGRQYXNzd29yZBIgCgtuZXdQYXNzd29yZBgEIAEoCVILbmV3UGFzc3dvcmQ=');
