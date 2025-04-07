// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Week22Exercise2} from "../src/Week22Exercise2.sol";

contract Week22Exercise2Script is Script {
    Week22Exercise2 public exercise2;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        exercise2 = new Week22Exercise2();

        vm.stopBroadcast();
    }
}
