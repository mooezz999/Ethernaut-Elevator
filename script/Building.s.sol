// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Building.sol";

contract BuildingScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Building building = new Building(
            0x0C5b06FeaB4F6143f56EBC9638225522724EaDad
        );

        vm.stopBroadcast();
    }
}
