import 'package:flutter_libra_core/flutter_libra_core.dart';

void main() async {
    // Creating an Account
    LibraWallet wallet = new LibraWallet();
    LibraAccount alice = wallet.newAccount();
    String aliceAddress = alice.getAddress();
    // Minting Amount
    LibraClient client = new LibraClient();
    int amount = 1000000;
    await client.mintWithFaucetService(aliceAddress, BigInt.from(amount), needWait: false);   
}