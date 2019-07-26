///
//  Generated code. Do not modify.
//  source: proto/mempool_status.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class MempoolAddTransactionStatusCode extends $pb.ProtobufEnum {
  static const MempoolAddTransactionStatusCode Valid = MempoolAddTransactionStatusCode._(0, 'Valid');
  static const MempoolAddTransactionStatusCode InsufficientBalance = MempoolAddTransactionStatusCode._(1, 'InsufficientBalance');
  static const MempoolAddTransactionStatusCode InvalidSeqNumber = MempoolAddTransactionStatusCode._(2, 'InvalidSeqNumber');
  static const MempoolAddTransactionStatusCode MempoolIsFull = MempoolAddTransactionStatusCode._(3, 'MempoolIsFull');
  static const MempoolAddTransactionStatusCode TooManyTransactions = MempoolAddTransactionStatusCode._(4, 'TooManyTransactions');
  static const MempoolAddTransactionStatusCode InvalidUpdate = MempoolAddTransactionStatusCode._(5, 'InvalidUpdate');

  static const $core.List<MempoolAddTransactionStatusCode> values = <MempoolAddTransactionStatusCode> [
    Valid,
    InsufficientBalance,
    InvalidSeqNumber,
    MempoolIsFull,
    TooManyTransactions,
    InvalidUpdate,
  ];

  static final $core.Map<$core.int, MempoolAddTransactionStatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MempoolAddTransactionStatusCode valueOf($core.int value) => _byValue[value];

  const MempoolAddTransactionStatusCode._($core.int v, $core.String n) : super(v, n);
}

