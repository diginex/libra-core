///
//  Generated code. Do not modify.
//  source: proto/admission_control.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AdmissionControlStatusCode$json = const {
  '1': 'AdmissionControlStatusCode',
  '2': const [
    const {'1': 'Accepted', '2': 0},
    const {'1': 'Blacklisted', '2': 1},
    const {'1': 'Rejected', '2': 2},
  ],
};

const SubmitTransactionRequest$json = const {
  '1': 'SubmitTransactionRequest',
  '2': const [
    const {'1': 'signed_txn', '3': 1, '4': 1, '5': 11, '6': '.types.SignedTransaction', '10': 'signedTxn'},
  ],
};

const AdmissionControlStatus$json = const {
  '1': 'AdmissionControlStatus',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.admission_control.AdmissionControlStatusCode', '10': 'code'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const SubmitTransactionResponse$json = const {
  '1': 'SubmitTransactionResponse',
  '2': const [
    const {'1': 'vm_status', '3': 1, '4': 1, '5': 11, '6': '.types.VMStatus', '9': 0, '10': 'vmStatus'},
    const {'1': 'ac_status', '3': 2, '4': 1, '5': 11, '6': '.admission_control.AdmissionControlStatus', '9': 0, '10': 'acStatus'},
    const {'1': 'mempool_status', '3': 3, '4': 1, '5': 11, '6': '.mempool.MempoolAddTransactionStatus', '9': 0, '10': 'mempoolStatus'},
    const {'1': 'validator_id', '3': 4, '4': 1, '5': 12, '10': 'validatorId'},
  ],
  '8': const [
    const {'1': 'status'},
  ],
};

