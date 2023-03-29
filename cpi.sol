import 'solana';
import 'metacamp_anchor.sol';

contract Jonas {
  function cpi_call() public {
    // Here you specify any account the call needs
     AccountMeta[1] am = [
     AccountMeta({pubkey: address"11111111111111111111111111111111", is_writable: false, is_signer: false})
     ];
// Let's pretend the contract has a 'cpi_call' instruction
     string name = "test";
     uint8 number = 5; // An example of a possible argument
     string response = metacamp_anchor.initialize{accounts: am}(name, number);
    print(response);
  }
}