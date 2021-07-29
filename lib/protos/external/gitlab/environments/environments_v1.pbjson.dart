///
//  Generated code. Do not modify.
//  source: external/gitlab/environments/environments_v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use environmentIDDescriptor instead')
const EnvironmentID$json = const {
  '1': 'EnvironmentID',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 3, '10': 'projectId'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `EnvironmentID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentIDDescriptor = $convert.base64Decode('Cg1FbnZpcm9ubWVudElEEh0KCnByb2plY3RfaWQYASABKANSCXByb2plY3RJZBIOCgJpZBgCIAEoA1ICaWQ=');
@$core.Deprecated('Use environmentNameDescriptor instead')
const EnvironmentName$json = const {
  '1': 'EnvironmentName',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 3, '10': 'projectId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `EnvironmentName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentNameDescriptor = $convert.base64Decode('Cg9FbnZpcm9ubWVudE5hbWUSHQoKcHJvamVjdF9pZBgBIAEoA1IJcHJvamVjdElkEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use environmentInfoDescriptor instead')
const EnvironmentInfo$json = const {
  '1': 'EnvironmentInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'state', '3': 3, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'url', '3': 4, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'ref', '3': 5, '4': 1, '5': 9, '10': 'ref'},
    const {'1': 'sha', '3': 6, '4': 1, '5': 9, '10': 'sha'},
    const {'1': 'ci_status', '3': 7, '4': 1, '5': 9, '10': 'ciStatus'},
    const {'1': 'ci_id', '3': 8, '4': 1, '5': 3, '10': 'ciId'},
    const {'1': 'user_id', '3': 9, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'user_name', '3': 10, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'updated_at', '3': 11, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `EnvironmentInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List environmentInfoDescriptor = $convert.base64Decode('Cg9FbnZpcm9ubWVudEluZm8SDgoCaWQYASABKANSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFc3RhdGUYAyABKAlSBXN0YXRlEhAKA3VybBgEIAEoCVIDdXJsEhAKA3JlZhgFIAEoCVIDcmVmEhAKA3NoYRgGIAEoCVIDc2hhEhsKCWNpX3N0YXR1cxgHIAEoCVIIY2lTdGF0dXMSEwoFY2lfaWQYCCABKANSBGNpSWQSFwoHdXNlcl9pZBgJIAEoA1IGdXNlcklkEhsKCXVzZXJfbmFtZRgKIAEoCVIIdXNlck5hbWUSHQoKdXBkYXRlZF9hdBgLIAEoCVIJdXBkYXRlZEF0');
