///
//  Generated code. Do not modify.
//  source: proto/mempool_status.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const MempoolAddTransactionStatusCode$json = const {
  '1': 'MempoolAddTransactionStatusCode',
  '2': const [
    const {'1': 'Valid', '2': 0},
    const {'1': 'InsufficientBalance', '2': 1},
    const {'1': 'InvalidSeqNumber', '2': 2},
    const {'1': 'MempoolIsFull', '2': 3},
    const {'1': 'TooManyTransactions', '2': 4},
    const {'1': 'InvalidUpdate', '2': 5},
  ],
};

const MempoolAddTransactionStatus$json = const {
  '1': 'MempoolAddTransactionStatus',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.mempool.MempoolAddTransactionStatusCode', '10': 'code'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

