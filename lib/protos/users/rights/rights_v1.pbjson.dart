///
//  Generated code. Do not modify.
//  source: users/rights/rights_v1.proto
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
    const {'1': 'ACCESS_RIGHTS_READ_UNSPECIFIED', '2': 0},
    const {'1': 'ACCESS_RIGHTS_WRITE', '2': 1},
    const {'1': 'ACCESS_RIGHTS_DELETE', '2': 2},
  ],
};

/// Descriptor for `AccessRights`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accessRightsDescriptor = $convert.base64Decode('CgxBY2Nlc3NSaWdodHMSIgoeQUNDRVNTX1JJR0hUU19SRUFEX1VOU1BFQ0lGSUVEEAASFwoTQUNDRVNTX1JJR0hUU19XUklURRABEhgKFEFDQ0VTU19SSUdIVFNfREVMRVRFEAI=');
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
    const {'1': 'access_right', '3': 3, '4': 1, '5': 14, '6': '.users.AccessRights', '10': 'accessRight'},
  ],
};

/// Descriptor for `AccessRuleIdAndRight`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessRuleIdAndRightDescriptor = $convert.base64Decode('ChRBY2Nlc3NSdWxlSWRBbmRSaWdodBIOCgJpZBgBIAEoCVICaWQSNgoMYWNjZXNzX3JpZ2h0GAMgASgOMhMudXNlcnMuQWNjZXNzUmlnaHRzUgthY2Nlc3NSaWdodA==');
@$core.Deprecated('Use accessRuleWithoutIdDescriptor instead')
const AccessRuleWithoutId$json = const {
  '1': 'AccessRuleWithoutId',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'application_id', '3': 2, '4': 1, '5': 9, '10': 'applicationId'},
    const {'1': 'access_right', '3': 3, '4': 1, '5': 14, '6': '.users.AccessRights', '10': 'accessRight'},
  ],
};

/// Descriptor for `AccessRuleWithoutId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessRuleWithoutIdDescriptor = $convert.base64Decode('ChNBY2Nlc3NSdWxlV2l0aG91dElkEhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBIlCg5hcHBsaWNhdGlvbl9pZBgCIAEoCVINYXBwbGljYXRpb25JZBI2CgxhY2Nlc3NfcmlnaHQYAyABKA4yEy51c2Vycy5BY2Nlc3NSaWdodHNSC2FjY2Vzc1JpZ2h0');
@$core.Deprecated('Use accessRuleInfoDescriptor instead')
const AccessRuleInfo$json = const {
  '1': 'AccessRuleInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'application_id', '3': 3, '4': 1, '5': 9, '10': 'applicationId'},
    const {'1': 'access_right', '3': 4, '4': 1, '5': 14, '6': '.users.AccessRights', '10': 'accessRight'},
  ],
};

/// Descriptor for `AccessRuleInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessRuleInfoDescriptor = $convert.base64Decode('Cg5BY2Nlc3NSdWxlSW5mbxIOCgJpZBgBIAEoCVICaWQSFwoHdXNlcl9pZBgCIAEoCVIGdXNlcklkEiUKDmFwcGxpY2F0aW9uX2lkGAMgASgJUg1hcHBsaWNhdGlvbklkEjYKDGFjY2Vzc19yaWdodBgEIAEoDjITLnVzZXJzLkFjY2Vzc1JpZ2h0c1ILYWNjZXNzUmlnaHQ=');
@$core.Deprecated('Use accessRightRequestDescriptor instead')
const AccessRightRequest$json = const {
  '1': 'AccessRightRequest',
  '2': const [
    const {'1': 'application_id', '3': 1, '4': 1, '5': 11, '6': '.apps.AppId', '10': 'applicationId'},
    const {'1': 'access_right', '3': 2, '4': 1, '5': 14, '6': '.users.AccessRights', '10': 'accessRight'},
  ],
};

/// Descriptor for `AccessRightRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessRightRequestDescriptor = $convert.base64Decode('ChJBY2Nlc3NSaWdodFJlcXVlc3QSMgoOYXBwbGljYXRpb25faWQYASABKAsyCy5hcHBzLkFwcElkUg1hcHBsaWNhdGlvbklkEjYKDGFjY2Vzc19yaWdodBgCIAEoDjITLnVzZXJzLkFjY2Vzc1JpZ2h0c1ILYWNjZXNzUmlnaHQ=');
@$core.Deprecated('Use rightsListOptionsDescriptor instead')
const RightsListOptions$json = const {
  '1': 'RightsListOptions',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 11, '6': '.apps.AppId', '10': 'appId'},
  ],
};

/// Descriptor for `RightsListOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rightsListOptionsDescriptor = $convert.base64Decode('ChFSaWdodHNMaXN0T3B0aW9ucxIiCgZhcHBfaWQYASABKAsyCy5hcHBzLkFwcElkUgVhcHBJZA==');
@$core.Deprecated('Use applicationsDescriptor instead')
const Applications$json = const {
  '1': 'Applications',
  '2': const [
    const {'1': 'application_id', '3': 1, '4': 1, '5': 11, '6': '.apps.AppId', '10': 'applicationId'},
  ],
};

/// Descriptor for `Applications`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationsDescriptor = $convert.base64Decode('CgxBcHBsaWNhdGlvbnMSMgoOYXBwbGljYXRpb25faWQYASABKAsyCy5hcHBzLkFwcElkUg1hcHBsaWNhdGlvbklk');
@$core.Deprecated('Use availableAppsListOptionsDescriptor instead')
const AvailableAppsListOptions$json = const {
  '1': 'AvailableAppsListOptions',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 11, '6': '.users.AccountId', '10': 'accountId'},
  ],
};

/// Descriptor for `AvailableAppsListOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List availableAppsListOptionsDescriptor = $convert.base64Decode('ChhBdmFpbGFibGVBcHBzTGlzdE9wdGlvbnMSLwoKYWNjb3VudF9pZBgBIAEoCzIQLnVzZXJzLkFjY291bnRJZFIJYWNjb3VudElk');
