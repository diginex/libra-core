const int AddressLength = 32;

class HashSaltValues {
  static const String RawTransactionHashSalt =
      '46f174df6ca8de5ad29745f91584bb913e7df8dd162e3e921a5c1d8637c88d16';
}

class ProgamBase64Codes {
  static const String PeerToPeerTxn =
      'TElCUkFWTQoBAAcBSgAAAAQAAAADTgAAAAYAAAANVAAAAAYAAAAOWgAAAAYAAAAFYAAAACkAAAAEiQAAACAAAAAIqQAAAA8AAAAAAAABAAIAAQMAAgACBAIAAwIEAgMABjxTRUxGPgxMaWJyYUFjY291bnQEbWFpbg9wYXlfZnJvbV9zZW5kZXIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAIABAAMAAwBEwEBAg==';
}

class PathValues {
  static const String AccountStatePath =
      '01217da6c6b3e19f1825cfb2676daecce3bf3de03cf26647c78df00b371b25cc97';
}

class KeyPrefixes {
  static const String DerivedKey = 'LIBRA WALLET: derived key\$';
  static const String LibraHashSuffix = '@@\$\$LIBRA\$\$@@';
  static const String MasterKeySalt = 'LIBRA WALLET: master key salt\$';
  static const String MnemonicSalt = 'LIBRA WALLET: mnemonic salt prefix\$';
}

class LibraNetwork {
  static const String Testnet = 'testnet';
  static const String Mainet = 'mainnet';
}

class ServerHosts {
  static const String DefaultFaucet = 'faucet.testnet.libra.org';
  static const String DefaultTestnet = 'ac.testnet.libra.org';
}

class SeedValues {
  static const int Iterations = 2048;
  static const int KeySize = 32;
  static const int Size = 64;
}

const String MintAccount =
    '000000000000000000000000000000000000000000000000000000000a550c18';

// https://github.com/libra/libra/blob/master/language/vm/vm_genesis/src/lib.rs#L239
class TransactionType {
  static const String PeerToPeerTransaction = 'peer_to_peer_transaction';
  static const String CreateAccountTransaction = 'create_account_transaction';
  static const String MintTransaction = 'mint_transaction';
  static const String RotateAuthenticationKeyTransaction =
      'rotate_authentication_key_transaction';
}
