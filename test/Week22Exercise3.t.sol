// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Week22Exercise3} from "../src/Week22Exercise3.sol";

contract Week22Exercise3Test is Test {
    Week22Exercise3 public exercise;

    address public Alice = makeAddr("Alice");

    function setUp() public {
        exercise = new Week22Exercise3();
    }

    function testChallenge() public {
        exercise.renounceOwnership();

        exercise.claimAirdrop(
            100,
            Alice,
            0x00,
            0x0000000000000000000000000000000000000000000000000000000000000000,
            0x0000000000000000000000000000000000000000000000000000000000000000
        );
    }
}
