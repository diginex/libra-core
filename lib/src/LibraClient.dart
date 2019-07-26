import 'package:flutter_libra_core/__generated__/proto/admission_control.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class LibraNetwork {
  static const String Testnet = 'testnet';
  static const String Mainet = 'mainnet';
}

class ServerHosts {
  static const String DefaultFaucet = 'faucet.testnet.libra.org';
  static const String DefaultTestnet = 'ac.testnet.libra.org';
}

class LibraClient {
  AdmissionControlClient client;
  // ClientDecoder: decorder;
  // ClientEncoder: encoder;

  LibraClient(
      {host = ServerHosts.DefaultTestnet,
      port = 80,
      faucetServerHost = ServerHosts.DefaultFaucet,
      validatorSetFile: String}) {
    ClientChannel channel = new ClientChannel(host,
        port: port,
        options:
            new ChannelOptions(credentials: ChannelCredentials.insecure()));
    this.client = new AdmissionControlClient(channel);

    //this.decoder = new ClientDecoder();
    //this.encoder = new ClientEncoder(this);
  }

// Future<AccountState> getAccountState(AccountAddressLike address) async {
//     return (await this.getAccountStates([address]))[0];
//   }

}
