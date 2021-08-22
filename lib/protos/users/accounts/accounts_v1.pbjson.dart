///
//  Generated code. Do not modify.
//  source: users/accounts/accounts_v1.proto
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
@$core.Deprecated('Use fullAccountInfoDescriptor instead')
const FullAccountInfo$json = const {
  '1': 'FullAccountInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'gitlab_token', '3': 3, '4': 1, '5': 9, '10': 'gitlabToken'},
  ],
};

/// Descriptor for `FullAccountInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fullAccountInfoDescriptor = $convert.base64Decode('Cg9GdWxsQWNjb3VudEluZm8SDgoCaWQYASABKAlSAmlkEhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIhCgxnaXRsYWJfdG9rZW4YAyABKAlSC2dpdGxhYlRva2Vu');
@$core.Deprecated('Use accountInfoWithSensitiveDescriptor instead')
const AccountInfoWithSensitive$json = const {
  '1': 'AccountInfoWithSensitive',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'gitlab_token', '3': 4, '4': 1, '5': 9, '10': 'gitlabToken'},
  ],
};

/// Descriptor for `AccountInfoWithSensitive`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoWithSensitiveDescriptor = $convert.base64Decode('ChhBY2NvdW50SW5mb1dpdGhTZW5zaXRpdmUSDgoCaWQYASABKAlSAmlkEhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQSIQoMZ2l0bGFiX3Rva2VuGAQgASgJUgtnaXRsYWJUb2tlbg==');
@$core.Deprecated('Use passwordUpdateDescriptor instead')
const PasswordUpdate$json = const {
  '1': 'PasswordUpdate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'old_password', '3': 3, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'new_password', '3': 4, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

/// Descriptor for `PasswordUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passwordUpdateDescriptor = $convert.base64Decode('Cg5QYXNzd29yZFVwZGF0ZRIOCgJpZBgBIAEoCVICaWQSGgoIdXNlcm5hbWUYAiABKAlSCHVzZXJuYW1lEiEKDG9sZF9wYXNzd29yZBgDIAEoCVILb2xkUGFzc3dvcmQSIQoMbmV3X3Bhc3N3b3JkGAQgASgJUgtuZXdQYXNzd29yZA==');
@$core.Deprecated('Use accountsListOptionsDescriptor instead')
const AccountsListOptions$json = const {
  '1': 'AccountsListOptions',
  '2': const [
    const {'1': 'account_name', '3': 1, '4': 1, '5': 11, '6': '.users.AccountName', '10': 'accountName'},
    const {'1': 'paging', '3': 2, '4': 1, '5': 11, '6': '.common.Paging', '10': 'paging'},
  ],
};

/// Descriptor for `AccountsListOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountsListOptionsDescriptor = $convert.base64Decode('ChNBY2NvdW50c0xpc3RPcHRpb25zEjUKDGFjY291bnRfbmFtZRgBIAEoCzISLnVzZXJzLkFjY291bnROYW1lUgthY2NvdW50TmFtZRImCgZwYWdpbmcYAiABKAsyDi5jb21tb24uUGFnaW5nUgZwYWdpbmc=');
@$core.Deprecated('Use accountGitlabTokenDescriptor instead')
const AccountGitlabToken$json = const {
  '1': 'AccountGitlabToken',
  '2': const [
    const {'1': 'gitlab_token', '3': 1, '4': 1, '5': 9, '10': 'gitlabToken'},
  ],
};

/// Descriptor for `AccountGitlabToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountGitlabTokenDescriptor = $convert.base64Decode('ChJBY2NvdW50R2l0bGFiVG9rZW4SIQoMZ2l0bGFiX3Rva2VuGAEgASgJUgtnaXRsYWJUb2tlbg==');
@$core.Deprecated('Use accountsAppsDescriptor instead')
const AccountsApps$json = const {
  '1': 'AccountsApps',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'apps', '3': 2, '4': 3, '5': 9, '10': 'apps'},
  ],
};

/// Descriptor for `AccountsApps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountsAppsDescriptor = $convert.base64Decode('CgxBY2NvdW50c0FwcHMSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEhIKBGFwcHMYAiADKAlSBGFwcHM=');
