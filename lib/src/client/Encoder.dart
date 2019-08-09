import 'dart:async';
import 'package:hex/hex.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_libra_core/flutter_libra_core.dart';
import 'package:flutter_libra_core/src/transaction/index.dart';
import 'package:flutter_libra_core/__generated__/proto/transaction.pb.dart';

class ClientEncoder {
  static Future<RawTransaction> encodeLibraTransaction(
      LibraTransaction transaction, String senderAccountAddress) async {
    Program program = new Program();
    program.code = transaction.program.code;
    List<TransactionArgument> transactionArguments = [];
    transaction.program.arguments.forEach((argument) {
      TransactionArgument transactionArgument = new TransactionArgument();
      transactionArgument.type = argument.type;
      transactionArgument.data = argument.value;
      transactionArguments.add(transactionArgument);
    });
    program.arguments.addAll(transactionArguments);
    program.modules.addAll(transaction.program.modules);

    var rawTransaction = new RawTransaction();
    rawTransaction.expirationTime = Int64(transaction.expirationTime);
    rawTransaction.gasUnitPrice =
        Int64(transaction.gasContraint.gasUnitPrice.toInt());
    rawTransaction.maxGasAmount =
        Int64(transaction.gasContraint.maxGasAmount.toInt());
    rawTransaction.sequenceNumber = Int64(transaction.sequenceNumber.toInt());
    rawTransaction.program = program;
    rawTransaction.senderAccount = HEX.decode(senderAccountAddress);

    return rawTransaction;
  }
}
