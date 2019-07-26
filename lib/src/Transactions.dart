import 'dart:typed_data';
import 'package:flutter_libra_core/__generated__/proto/transaction.pb.dart';

class LibraProgramArgument {
  TransactionArgument_ArgType type;
  Uint8List value;
  LibraProgramArgument(this.type, this.value);
}

class LibraProgram {
  Uint8List code;
  List<LibraProgramArgument> arguments;
  List<Uint8List> modules;
  LibraProgram(this.code, this.arguments, this.modules);
}

class LibraGasConstraint {
  BigInt maxGasAmount;
  BigInt gasUnitPrice;
  LibraGasConstraint(this.gasUnitPrice, this.maxGasAmount);
}

class LibraTransaction {
  LibraProgram program;
  LibraGasConstraint gasContraint;
  int expirationTime;
  Uint8List sendersAddress;
  int sequenceNumber;
  LibraTransaction(this.program, this.gasContraint, this.expirationTime,
      this.sendersAddress, this.sequenceNumber);
}
