///
//  Generated code. Do not modify.
//  source: proto/get_with_proof.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const UpdateToLatestLedgerRequest$json = const {
  '1': 'UpdateToLatestLedgerRequest',
  '2': const [
    const {
      '1': 'client_known_version',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'clientKnownVersion',
    },
    const {'1': 'requested_items', '3': 2, '4': 3, '5': 11, '6': '.types.RequestItem', '10': 'requestedItems'},
  ],
};

const RequestItem$json = const {
  '1': 'RequestItem',
  '2': const [
    const {'1': 'get_account_state_request', '3': 1, '4': 1, '5': 11, '6': '.types.GetAccountStateRequest', '9': 0, '10': 'getAccountStateRequest'},
    const {'1': 'get_account_transaction_by_sequence_number_request', '3': 2, '4': 1, '5': 11, '6': '.types.GetAccountTransactionBySequenceNumberRequest', '9': 0, '10': 'getAccountTransactionBySequenceNumberRequest'},
    const {'1': 'get_events_by_event_access_path_request', '3': 3, '4': 1, '5': 11, '6': '.types.GetEventsByEventAccessPathRequest', '9': 0, '10': 'getEventsByEventAccessPathRequest'},
    const {'1': 'get_transactions_request', '3': 4, '4': 1, '5': 11, '6': '.types.GetTransactionsRequest', '9': 0, '10': 'getTransactionsRequest'},
  ],
  '8': const [
    const {'1': 'requested_items'},
  ],
};

const UpdateToLatestLedgerResponse$json = const {
  '1': 'UpdateToLatestLedgerResponse',
  '2': const [
    const {'1': 'response_items', '3': 1, '4': 3, '5': 11, '6': '.types.ResponseItem', '10': 'responseItems'},
    const {'1': 'ledger_info_with_sigs', '3': 2, '4': 1, '5': 11, '6': '.types.LedgerInfoWithSignatures', '10': 'ledgerInfoWithSigs'},
    const {'1': 'validator_change_events', '3': 3, '4': 3, '5': 11, '6': '.types.ValidatorChangeEventWithProof', '10': 'validatorChangeEvents'},
  ],
};

const ResponseItem$json = const {
  '1': 'ResponseItem',
  '2': const [
    const {'1': 'get_account_state_response', '3': 3, '4': 1, '5': 11, '6': '.types.GetAccountStateResponse', '9': 0, '10': 'getAccountStateResponse'},
    const {'1': 'get_account_transaction_by_sequence_number_response', '3': 4, '4': 1, '5': 11, '6': '.types.GetAccountTransactionBySequenceNumberResponse', '9': 0, '10': 'getAccountTransactionBySequenceNumberResponse'},
    const {'1': 'get_events_by_event_access_path_response', '3': 5, '4': 1, '5': 11, '6': '.types.GetEventsByEventAccessPathResponse', '9': 0, '10': 'getEventsByEventAccessPathResponse'},
    const {'1': 'get_transactions_response', '3': 6, '4': 1, '5': 11, '6': '.types.GetTransactionsResponse', '9': 0, '10': 'getTransactionsResponse'},
  ],
  '8': const [
    const {'1': 'response_items'},
  ],
};

const GetAccountStateRequest$json = const {
  '1': 'GetAccountStateRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
  ],
};

const GetAccountStateResponse$json = const {
  '1': 'GetAccountStateResponse',
  '2': const [
    const {'1': 'account_state_with_proof', '3': 1, '4': 1, '5': 11, '6': '.types.AccountStateWithProof', '10': 'accountStateWithProof'},
  ],
};

const GetAccountTransactionBySequenceNumberRequest$json = const {
  '1': 'GetAccountTransactionBySequenceNumberRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 12, '10': 'account'},
    const {
      '1': 'sequence_number',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'sequenceNumber',
    },
    const {'1': 'fetch_events', '3': 3, '4': 1, '5': 8, '10': 'fetchEvents'},
  ],
};

const GetAccountTransactionBySequenceNumberResponse$json = const {
  '1': 'GetAccountTransactionBySequenceNumberResponse',
  '2': const [
    const {'1': 'signed_transaction_with_proof', '3': 2, '4': 1, '5': 11, '6': '.types.SignedTransactionWithProof', '10': 'signedTransactionWithProof'},
    const {'1': 'proof_of_current_sequence_number', '3': 3, '4': 1, '5': 11, '6': '.types.AccountStateWithProof', '10': 'proofOfCurrentSequenceNumber'},
  ],
};

const GetEventsByEventAccessPathRequest$json = const {
  '1': 'GetEventsByEventAccessPathRequest',
  '2': const [
    const {'1': 'access_path', '3': 1, '4': 1, '5': 11, '6': '.types.AccessPath', '10': 'accessPath'},
    const {
      '1': 'start_event_seq_num',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'startEventSeqNum',
    },
    const {'1': 'ascending', '3': 3, '4': 1, '5': 8, '10': 'ascending'},
    const {
      '1': 'limit',
      '3': 4,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'limit',
    },
  ],
};

const GetEventsByEventAccessPathResponse$json = const {
  '1': 'GetEventsByEventAccessPathResponse',
  '2': const [
    const {'1': 'events_with_proof', '3': 1, '4': 3, '5': 11, '6': '.types.EventWithProof', '10': 'eventsWithProof'},
    const {'1': 'proof_of_latest_event', '3': 2, '4': 1, '5': 11, '6': '.types.AccountStateWithProof', '10': 'proofOfLatestEvent'},
  ],
};

const GetTransactionsRequest$json = const {
  '1': 'GetTransactionsRequest',
  '2': const [
    const {
      '1': 'start_version',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'startVersion',
    },
    const {
      '1': 'limit',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'limit',
    },
    const {'1': 'fetch_events', '3': 3, '4': 1, '5': 8, '10': 'fetchEvents'},
  ],
};

const GetTransactionsResponse$json = const {
  '1': 'GetTransactionsResponse',
  '2': const [
    const {'1': 'txn_list_with_proof', '3': 1, '4': 1, '5': 11, '6': '.types.TransactionListWithProof', '10': 'txnListWithProof'},
  ],
};

