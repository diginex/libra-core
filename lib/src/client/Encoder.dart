import 'dart:async';
import 'package:hex/hex.dart';
import 'package:flutter_libra_core/flutter_libra_core.dart';
import 'package:flutter_libra_core/src/transaction/index.dart';
import 'package:flutter_libra_core/__generated__/proto/transaction.pbenum.dart';

class ClientEncoder {
  static Future<RawTransaction> encodeLibraTransaction(
      LibraTransaction transaction, String senderAccountAddress) async {
    Program program = new Program();
    program.code = transaction.program.code;
    List<TransactionArgument> transactionArguments = [];
    transaction.program.arguments.forEach((argument) {
      TransactionArgument transactionArgument = new TransactionArgument();
      transactionArgument.type = argument.type;
      if (argument.type == TransactionArgument_ArgType.U64) {
        transactionArgument.u64Value = LibraHelpers.byteToBigInt(argument.value, le: true).toInt();
      } else {
        transactionArgument.byteValue = argument.value;
      }
      transactionArguments.add(transactionArgument);
    });
    program.arguments = transactionArguments;
    program.modules = transaction.program.modules;

    var rawTransaction = new RawTransaction();
    rawTransaction.senderAccount = HEX.decode(senderAccountAddress);
    rawTransaction.sequenceNumber = transaction.sequenceNumber.toInt();
    rawTransaction.payload = new TransactionPayload(program);
    rawTransaction.maxGasAmount =
        transaction.gasContraint.maxGasAmount.toInt();
    rawTransaction.gasUnitPrice =
        transaction.gasContraint.gasUnitPrice.toInt();
    rawTransaction.expirationTime = transaction.expirationTime;
    return rawTransaction;
  }
}
