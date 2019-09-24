///
//  Generated code. Do not modify.
//  source: proto/transaction.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class TransactionArgument_ArgType extends $pb.ProtobufEnum {
  static const TransactionArgument_ArgType U64 = TransactionArgument_ArgType._(0, 'U64');
  static const TransactionArgument_ArgType ADDRESS = TransactionArgument_ArgType._(1, 'ADDRESS');
  static const TransactionArgument_ArgType STRING = TransactionArgument_ArgType._(2, 'STRING');
  static const TransactionArgument_ArgType BYTEARRAY = TransactionArgument_ArgType._(3, 'BYTEARRAY');

  static const $core.List<TransactionArgument_ArgType> values = <TransactionArgument_ArgType> [
    U64,
    ADDRESS,
    STRING,
    BYTEARRAY,
  ];

  static final $core.Map<$core.int, TransactionArgument_ArgType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransactionArgument_ArgType valueOf($core.int value) => _byValue[value];

  const TransactionArgument_ArgType._($core.int v, $core.String n) : super(v, n);
}

