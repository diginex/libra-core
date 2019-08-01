import 'package:flutter_libra_core/src/wallet/Accounts.dart';
import 'package:flutter_libra_core/src/wallet/KeyFactory.dart';

class LibraWallet {
  KeyFactory _keyFactory;
  int _lastChild = 0;
  Map _accounts = new Map();

  LibraWallet({String mnemonic, String salt = 'LIBRA'}) {
    _keyFactory = new KeyFactory(salt, mnemonic: mnemonic);
  }

  LibraAccount newAccount() {
    LibraAccount newAccount = generateAccount(_lastChild);
    _lastChild++;
    return newAccount;
  }

  LibraAccount generateAccount(int depth) {
    assert(depth >= 0);
    LibraAccount account = new LibraAccount(_keyFactory.generateKey(depth));
    addAccount(account);
    return account;
  }

  void addAccount(LibraAccount account) {
    String address = account.keyPair.getAddress();
    _accounts[address] = account;
  }
}
