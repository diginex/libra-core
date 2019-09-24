///
//  Generated code. Do not modify.
//  source: proto/transaction.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const TransactionArgument$json = const {
  '1': 'TransactionArgument',
  '4': const [TransactionArgument_ArgType$json],
};

const TransactionArgument_ArgType$json = const {
  '1': 'ArgType',
  '2': const [
    const {'1': 'U64', '2': 0},
    const {'1': 'ADDRESS', '2': 1},
    const {'1': 'STRING', '2': 2},
    const {'1': 'BYTEARRAY', '2': 3},
  ],
};

const SignedTransaction$json = const {
  '1': 'SignedTransaction',
  '2': const [
    const {'1': 'signed_txn', '3': 5, '4': 1, '5': 12, '10': 'signedTxn'},
  ],
};

const SignedTransactionWithProof$json = const {
  '1': 'SignedTransactionWithProof',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 4, '10': 'version'},
    const {'1': 'signed_transaction', '3': 2, '4': 1, '5': 11, '6': '.types.SignedTransaction', '10': 'signedTransaction'},
    const {'1': 'proof', '3': 3, '4': 1, '5': 11, '6': '.types.SignedTransactionProof', '10': 'proof'},
    const {'1': 'events', '3': 4, '4': 1, '5': 11, '6': '.types.EventsList', '10': 'events'},
  ],
};

const SignedTransactionsBlock$json = const {
  '1': 'SignedTransactionsBlock',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.types.SignedTransaction', '10': 'transactions'},
    const {'1': 'validator_public_key', '3': 2, '4': 1, '5': 12, '10': 'validatorPublicKey'},
    const {'1': 'validator_signature', '3': 3, '4': 1, '5': 12, '10': 'validatorSignature'},
  ],
};

const AccountState$json = const {
  '1': 'AccountState',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'blob', '3': 2, '4': 1, '5': 12, '10': 'blob'},
  ],
};

const TransactionToCommit$json = const {
  '1': 'TransactionToCommit',
  '2': const [
    const {'1': 'signed_txn', '3': 1, '4': 1, '5': 11, '6': '.types.SignedTransaction', '10': 'signedTxn'},
    const {'1': 'account_states', '3': 2, '4': 3, '5': 11, '6': '.types.AccountState', '10': 'accountStates'},
    const {'1': 'events', '3': 3, '4': 3, '5': 11, '6': '.types.Event', '10': 'events'},
    const {'1': 'gas_used', '3': 4, '4': 1, '5': 4, '10': 'gasUsed'},
    const {'1': 'major_status', '3': 5, '4': 1, '5': 4, '10': 'majorStatus'},
  ],
};

const TransactionListWithProof$json = const {
  '1': 'TransactionListWithProof',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.types.SignedTransaction', '10': 'transactions'},
    const {'1': 'infos', '3': 2, '4': 3, '5': 11, '6': '.types.TransactionInfo', '10': 'infos'},
    const {'1': 'events_for_versions', '3': 3, '4': 1, '5': 11, '6': '.types.EventsForVersions', '10': 'eventsForVersions'},
    const {'1': 'first_transaction_version', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.UInt64Value', '10': 'firstTransactionVersion'},
    const {'1': 'proof_of_first_transaction', '3': 5, '4': 1, '5': 11, '6': '.types.AccumulatorProof', '10': 'proofOfFirstTransaction'},
    const {'1': 'proof_of_last_transaction', '3': 6, '4': 1, '5': 11, '6': '.types.AccumulatorProof', '10': 'proofOfLastTransaction'},
  ],
};

