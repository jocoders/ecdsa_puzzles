// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Week22Exercise4} from "../src/Week22Exercise4.sol";

contract Week22Exercise4Test is Test {
    Week22Exercise4 public exercise;

    function setUp() public {
        exercise = new Week22Exercise4();
    }

    function test_Challenge() public {
        // 27 - 1b
        // 28 - 1c

        bytes32 hash = hex"";
        bytes32 r = hex"";
        bytes32 s = hex"";

        uint8 v = 28;
        bytes memory sig = abi.encodePacked(r, s, v);

        exercise.claimAirdrop(hash, sig);
    }
}
