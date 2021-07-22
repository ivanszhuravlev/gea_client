///
//  Generated code. Do not modify.
//  source: apps/contours/contours.v1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use contourIdDescriptor instead')
const ContourId$json = const {
  '1': 'ContourId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ContourId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contourIdDescriptor = $convert.base64Decode('CglDb250b3VySWQSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use contoursListOptionDescriptor instead')
const ContoursListOption$json = const {
  '1': 'ContoursListOption',
  '2': const [
    const {'1': 'appId', '3': 1, '4': 1, '5': 9, '10': 'appId'},
  ],
};

/// Descriptor for `ContoursListOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contoursListOptionDescriptor = $convert.base64Decode('ChJDb250b3Vyc0xpc3RPcHRpb24SFAoFYXBwSWQYASABKAlSBWFwcElk');
@$core.Deprecated('Use contourIdAndNameDescriptor instead')
const ContourIdAndName$json = const {
  '1': 'ContourIdAndName',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'appId', '3': 3, '4': 1, '5': 9, '10': 'appId'},
  ],
};

/// Descriptor for `ContourIdAndName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contourIdAndNameDescriptor = $convert.base64Decode('ChBDb250b3VySWRBbmROYW1lEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWFwcElkGAMgASgJUgVhcHBJZA==');
@$core.Deprecated('Use contourInfoWithoutServicesDescriptor instead')
const ContourInfoWithoutServices$json = const {
  '1': 'ContourInfoWithoutServices',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `ContourInfoWithoutServices`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contourInfoWithoutServicesDescriptor = $convert.base64Decode('ChpDb250b3VySW5mb1dpdGhvdXRTZXJ2aWNlcxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24=');
@$core.Deprecated('Use contourNameAndDescriptionDescriptor instead')
const ContourNameAndDescription$json = const {
  '1': 'ContourNameAndDescription',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'appId', '3': 3, '4': 1, '5': 9, '10': 'appId'},
  ],
};

/// Descriptor for `ContourNameAndDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contourNameAndDescriptionDescriptor = $convert.base64Decode('ChlDb250b3VyTmFtZUFuZERlc2NyaXB0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhQKBWFwcElkGAMgASgJUgVhcHBJZA==');
@$core.Deprecated('Use contourInfoDescriptor instead')
const ContourInfo$json = const {
  '1': 'ContourInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'services', '3': 4, '4': 3, '5': 11, '6': '.apps.ServiceInfo', '10': 'services'},
    const {'1': 'appId', '3': 5, '4': 1, '5': 9, '10': 'appId'},
  ],
};

/// Descriptor for `ContourInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contourInfoDescriptor = $convert.base64Decode('CgtDb250b3VySW5mbxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SLQoIc2VydmljZXMYBCADKAsyES5hcHBzLlNlcnZpY2VJbmZvUghzZXJ2aWNlcxIUCgVhcHBJZBgFIAEoCVIFYXBwSWQ=');
@$core.Deprecated('Use serviceWithoutIdDescriptor instead')
const ServiceWithoutId$json = const {
  '1': 'ServiceWithoutId',
  '2': const [
    const {'1': 'project', '3': 1, '4': 1, '5': 3, '10': 'project'},
    const {'1': 'environment', '3': 2, '4': 1, '5': 3, '10': 'environment'},
  ],
};

/// Descriptor for `ServiceWithoutId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceWithoutIdDescriptor = $convert.base64Decode('ChBTZXJ2aWNlV2l0aG91dElkEhgKB3Byb2plY3QYASABKANSB3Byb2plY3QSIAoLZW52aXJvbm1lbnQYAiABKANSC2Vudmlyb25tZW50');
@$core.Deprecated('Use serviceInfoDescriptor instead')
const ServiceInfo$json = const {
  '1': 'ServiceInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'project', '3': 2, '4': 1, '5': 3, '10': 'project'},
    const {'1': 'environment', '3': 3, '4': 1, '5': 3, '10': 'environment'},
  ],
};

/// Descriptor for `ServiceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceInfoDescriptor = $convert.base64Decode('CgtTZXJ2aWNlSW5mbxIOCgJpZBgBIAEoCVICaWQSGAoHcHJvamVjdBgCIAEoA1IHcHJvamVjdBIgCgtlbnZpcm9ubWVudBgDIAEoA1ILZW52aXJvbm1lbnQ=');
@$core.Deprecated('Use serviceIdAndContourIdDescriptor instead')
const ServiceIdAndContourId$json = const {
  '1': 'ServiceIdAndContourId',
  '2': const [
    const {'1': 'contourId', '3': 1, '4': 1, '5': 9, '10': 'contourId'},
    const {'1': 'serviceId', '3': 2, '4': 1, '5': 9, '10': 'serviceId'},
  ],
};

/// Descriptor for `ServiceIdAndContourId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceIdAndContourIdDescriptor = $convert.base64Decode('ChVTZXJ2aWNlSWRBbmRDb250b3VySWQSHAoJY29udG91cklkGAEgASgJUgljb250b3VySWQSHAoJc2VydmljZUlkGAIgASgJUglzZXJ2aWNlSWQ=');
@$core.Deprecated('Use repeatedServiceWithoutIdDescriptor instead')
const RepeatedServiceWithoutId$json = const {
  '1': 'RepeatedServiceWithoutId',
  '2': const [
    const {'1': 'contourId', '3': 1, '4': 1, '5': 9, '10': 'contourId'},
    const {'1': 'service', '3': 2, '4': 3, '5': 11, '6': '.apps.ServiceWithoutId', '10': 'service'},
  ],
};

/// Descriptor for `RepeatedServiceWithoutId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedServiceWithoutIdDescriptor = $convert.base64Decode('ChhSZXBlYXRlZFNlcnZpY2VXaXRob3V0SWQSHAoJY29udG91cklkGAEgASgJUgljb250b3VySWQSMAoHc2VydmljZRgCIAMoCzIWLmFwcHMuU2VydmljZVdpdGhvdXRJZFIHc2VydmljZQ==');
@$core.Deprecated('Use repeatedServiceWithIdDescriptor instead')
const RepeatedServiceWithId$json = const {
  '1': 'RepeatedServiceWithId',
  '2': const [
    const {'1': 'contourId', '3': 1, '4': 1, '5': 9, '10': 'contourId'},
    const {'1': 'service', '3': 2, '4': 3, '5': 11, '6': '.apps.ServiceInfo', '10': 'service'},
  ],
};

/// Descriptor for `RepeatedServiceWithId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedServiceWithIdDescriptor = $convert.base64Decode('ChVSZXBlYXRlZFNlcnZpY2VXaXRoSWQSHAoJY29udG91cklkGAEgASgJUgljb250b3VySWQSKwoHc2VydmljZRgCIAMoCzIRLmFwcHMuU2VydmljZUluZm9SB3NlcnZpY2U=');
