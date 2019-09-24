[![Build Status](https://travis-ci.org/mmsqe/libra-core.svg?branch=master)](https://travis-ci.org/mmsqe/libra-core)

# Libra Core

Libra Core is a Dart library client that can be used to interact with [Libra](https://libra.org/) nodes.

Thanks to JavaScript <a href="https://github.com/perfectmak/libra-core">Libra Core</a> from Perfect Makanju.

There is an example Flutter application built for [Android](https://play.google.com/store/apps/details?id=com.libra.wallet), [iOS] coming soon.

## Table of Content

<!-- toc -->

- [Usage](#usage)
  * [Creating an Account](#creating-an-account)
  * [Minting Amount](#minting-amount)
  * [Checking an address balance](#checking-an-address-balance)
  * [Transferring Libra Coins](#transferring-libra-coins)
  * [Query Transaction with Sequence Number](#query-transaction-with-sequence-number)
- [License](#license)

<!-- tocstop -->

## Usage

There are two main interface classes:

- LibraWallet
- LibraClient


### Creating an Account

Instantiate `LibraWallet` to create a libra account:

    LibraWallet wallet = new LibraWallet();

Mnemonic is optional, a random mnemonic is generated and used without specifying one

    const String mnemonic = 'danger gravity ... flip';
    LibraWallet wallet = new LibraWallet(mnemonic: mnemonic);

A `LibraWallet` holds more than one `LibraAccount` objects, each account being a child of the wallet (start with index 0). 

    LibraAccount alice = wallet.newAccount();
    LibraAccount bob = wallet.newAccount();

Generate addres from account:
    String aliceAddress = alice.getAddress();

### Minting Amount

Instantiate `LibraClient` and uses faucet service to mint, default config as Testnet:

    LibraClient client = new LibraClient();
    int amount = 1000000;
    await client.mintWithFaucetService(aliceAddress, BigInt.from(amount), needWait: false);

### Checking an address balance

Get state from alice which contains balance and other information such as `sequenceNumber`

    LibraAccountState aliceState = await client.getAccountState(aliceAddress);
    print('alice state: ${aliceState.balance}, ${aliceState.sequenceNumber}');

### Transferring Libra Coins

Transfer from alice to bob, implemented with Libra Canonical Serialization:

    LibraAccount bob = wallet.newAccount();
    String bobAddress = bob.getAddress();
    int amount = 1000000;
    await client.transferCoins(alice, bobAddress, amount);

    // Get bob state
    LibraAccountState bobState = await client.getAccountState(bobAddress);
    print('bob state: ${bobState.balance}, ${bobState.sequenceNumber}');

### Query Transaction with Sequence Number

Query detail of the transaction sending from alice to bob, implemented with Libra Canonical Deserialization:

    LibraSignedTransactionWithProof lastTransaction = await client.getAccountTransaction(aliceAddress, aliceState.sequenceNumber);
    print('publicKey from alice: ${LibraHelpers.byteToHex(lastTransaction.signedTransaction.publicKey)}');

## License
MIT