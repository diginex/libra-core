///
//  Generated code. Do not modify.
//  source: proto/admission_control.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class AdmissionControlStatusCode extends $pb.ProtobufEnum {
  static const AdmissionControlStatusCode Accepted = AdmissionControlStatusCode._(0, 'Accepted');
  static const AdmissionControlStatusCode Blacklisted = AdmissionControlStatusCode._(1, 'Blacklisted');
  static const AdmissionControlStatusCode Rejected = AdmissionControlStatusCode._(2, 'Rejected');

  static const $core.List<AdmissionControlStatusCode> values = <AdmissionControlStatusCode> [
    Accepted,
    Blacklisted,
    Rejected,
  ];

  static final $core.Map<$core.int, AdmissionControlStatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdmissionControlStatusCode valueOf($core.int value) => _byValue[value];

  const AdmissionControlStatusCode._($core.int v, $core.String n) : super(v, n);
}

