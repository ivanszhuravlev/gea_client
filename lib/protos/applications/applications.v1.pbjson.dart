///
//  Generated code. Do not modify.
//  source: applications/applications.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use appNameDescriptor instead')
const AppName$json = const {
  '1': 'AppName',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AppName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appNameDescriptor = $convert.base64Decode('CgdBcHBOYW1lEhIKBG5hbWUYASABKAlSBG5hbWU=');
@$core.Deprecated('Use appInfoDescriptor instead')
const AppInfo$json = const {
  '1': 'AppInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'contour', '3': 3, '4': 3, '5': 11, '6': '.gitlab_aggregator.v1.Contour', '10': 'contour'},
  ],
};

/// Descriptor for `AppInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInfoDescriptor = $convert.base64Decode('CgdBcHBJbmZvEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEjcKB2NvbnRvdXIYAyADKAsyHS5naXRsYWJfYWdncmVnYXRvci52MS5Db250b3VyUgdjb250b3Vy');
@$core.Deprecated('Use contourDescriptor instead')
const Contour$json = const {
  '1': 'Contour',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'service', '3': 2, '4': 3, '5': 11, '6': '.gitlab_aggregator.v1.Service', '10': 'service'},
  ],
};

/// Descriptor for `Contour`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contourDescriptor = $convert.base64Decode('CgdDb250b3VyEhIKBG5hbWUYASABKAlSBG5hbWUSNwoHc2VydmljZRgCIAMoCzIdLmdpdGxhYl9hZ2dyZWdhdG9yLnYxLlNlcnZpY2VSB3NlcnZpY2U=');
@$core.Deprecated('Use serviceDescriptor instead')
const Service$json = const {
  '1': 'Service',
  '2': const [
    const {'1': 'project', '3': 1, '4': 1, '5': 3, '10': 'project'},
    const {'1': 'environment', '3': 2, '4': 1, '5': 3, '10': 'environment'},
  ],
};

/// Descriptor for `Service`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceDescriptor = $convert.base64Decode('CgdTZXJ2aWNlEhgKB3Byb2plY3QYASABKANSB3Byb2plY3QSIAoLZW52aXJvbm1lbnQYAiABKANSC2Vudmlyb25tZW50');
