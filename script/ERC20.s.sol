// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "forge-std/Script.sol";
import {MyToken} from "src/ERC20.sol";


contract ERC20Deploy is Script {

    function run() public returns(address) {
        
        uint256 privateKey = vm.envUint("PRIVATE_KEY");
        
        vm.startBroadcast(privateKey);
        MyToken token = new MyToken();
        vm.stopBroadcast();

        return token.owner();
    }
}