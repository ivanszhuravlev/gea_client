///
//  Generated code. Do not modify.
//  source: projects/projects.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use projectIDDescriptor instead')
const ProjectID$json = const {
  '1': 'ProjectID',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `ProjectID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectIDDescriptor = $convert.base64Decode('CglQcm9qZWN0SUQSDgoCaWQYASABKANSAmlk');
@$core.Deprecated('Use projectNameDescriptor instead')
const ProjectName$json = const {
  '1': 'ProjectName',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ProjectName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectNameDescriptor = $convert.base64Decode('CgtQcm9qZWN0TmFtZRISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use projectInfoDescriptor instead')
const ProjectInfo$json = const {
  '1': 'ProjectInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'webUrl', '3': 4, '4': 1, '5': 9, '10': 'webUrl'},
    const {'1': 'avatarUrl', '3': 5, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'readmeUrl', '3': 6, '4': 1, '5': 9, '10': 'readmeUrl'},
  ],
};

/// Descriptor for `ProjectInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectInfoDescriptor = $convert.base64Decode('CgtQcm9qZWN0SW5mbxIOCgJpZBgBIAEoA1ICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SFgoGd2ViVXJsGAQgASgJUgZ3ZWJVcmwSHAoJYXZhdGFyVXJsGAUgASgJUglhdmF0YXJVcmwSHAoJcmVhZG1lVXJsGAYgASgJUglyZWFkbWVVcmw=');
const $core.Map<$core.String, $core.dynamic> ProjectsServiceBase$json = const {
  '1': 'Projects',
  '2': const [
    const {'1': 'Get', '2': '.gitlab_aggregator.v1.ProjectID', '3': '.gitlab_aggregator.v1.ProjectInfo', '4': const {}},
    const {'1': 'List', '2': '.gitlab_aggregator.v1.ProjectName', '3': '.gitlab_aggregator.v1.ProjectInfo', '4': const {}, '6': true},
  ],
};

@$core.Deprecated('Use projectsServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> ProjectsServiceBase$messageJson = const {
  '.gitlab_aggregator.v1.ProjectID': ProjectID$json,
  '.gitlab_aggregator.v1.ProjectInfo': ProjectInfo$json,
  '.gitlab_aggregator.v1.ProjectName': ProjectName$json,
};

/// Descriptor for `Projects`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List projectsServiceDescriptor = $convert.base64Decode('CghQcm9qZWN0cxJLCgNHZXQSHy5naXRsYWJfYWdncmVnYXRvci52MS5Qcm9qZWN0SUQaIS5naXRsYWJfYWdncmVnYXRvci52MS5Qcm9qZWN0SW5mbyIAElAKBExpc3QSIS5naXRsYWJfYWdncmVnYXRvci52MS5Qcm9qZWN0TmFtZRohLmdpdGxhYl9hZ2dyZWdhdG9yLnYxLlByb2plY3RJbmZvIgAwAQ==');
