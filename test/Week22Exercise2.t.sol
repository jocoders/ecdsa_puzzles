// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Week22Exercise2} from "../src/Week22Exercise2.sol";

contract Week22Exercise2Test is Test {
    Week22Exercise2 public exercise;

    function setUp() public {
        exercise = new Week22Exercise2();
    }

    function testChallenge() public {
        bytes memory sig = hex"";
        string memory message = "";

        exercise.challenge(message, sig);
    }
}
