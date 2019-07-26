///
//  Generated code. Do not modify.
//  source: proto/proof.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AccumulatorProof$json = const {
  '1': 'AccumulatorProof',
  '2': const [
    const {
      '1': 'bitmap',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'bitmap',
    },
    const {'1': 'non_default_siblings', '3': 2, '4': 3, '5': 12, '10': 'nonDefaultSiblings'},
  ],
};

const SparseMerkleProof$json = const {
  '1': 'SparseMerkleProof',
  '2': const [
    const {'1': 'leaf', '3': 1, '4': 1, '5': 12, '10': 'leaf'},
    const {'1': 'bitmap', '3': 2, '4': 1, '5': 12, '10': 'bitmap'},
    const {'1': 'non_default_siblings', '3': 3, '4': 3, '5': 12, '10': 'nonDefaultSiblings'},
  ],
};

const SignedTransactionProof$json = const {
  '1': 'SignedTransactionProof',
  '2': const [
    const {'1': 'ledger_info_to_transaction_info_proof', '3': 1, '4': 1, '5': 11, '6': '.types.AccumulatorProof', '10': 'ledgerInfoToTransactionInfoProof'},
    const {'1': 'transaction_info', '3': 2, '4': 1, '5': 11, '6': '.types.TransactionInfo', '10': 'transactionInfo'},
  ],
};

const AccountStateProof$json = const {
  '1': 'AccountStateProof',
  '2': const [
    const {'1': 'ledger_info_to_transaction_info_proof', '3': 1, '4': 1, '5': 11, '6': '.types.AccumulatorProof', '10': 'ledgerInfoToTransactionInfoProof'},
    const {'1': 'transaction_info', '3': 2, '4': 1, '5': 11, '6': '.types.TransactionInfo', '10': 'transactionInfo'},
    const {'1': 'transaction_info_to_account_proof', '3': 3, '4': 1, '5': 11, '6': '.types.SparseMerkleProof', '10': 'transactionInfoToAccountProof'},
  ],
};

const EventProof$json = const {
  '1': 'EventProof',
  '2': const [
    const {'1': 'ledger_info_to_transaction_info_proof', '3': 1, '4': 1, '5': 11, '6': '.types.AccumulatorProof', '10': 'ledgerInfoToTransactionInfoProof'},
    const {'1': 'transaction_info', '3': 2, '4': 1, '5': 11, '6': '.types.TransactionInfo', '10': 'transactionInfo'},
    const {'1': 'transaction_info_to_event_proof', '3': 3, '4': 1, '5': 11, '6': '.types.AccumulatorProof', '10': 'transactionInfoToEventProof'},
  ],
};

