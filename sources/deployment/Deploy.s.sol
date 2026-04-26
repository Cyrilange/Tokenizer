// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "forge-std/Script.sol";
import {SocialFi42} from "../code/SocialFi.sol";

contract Deployment is Script {
    function run() external {
        uint256 pk = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(pk);

        new SocialFi42(vm.addr(pk));

        vm.stopBroadcast();
    }
}