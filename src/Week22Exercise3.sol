// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {console} from "forge-std/Test.sol";

// This contract has a medium severity weakness.
// Demonstrate the sequence of calls that would lead to a hack.

contract Week22Exercise3 is Ownable {
    using ECDSA for bytes32;

    mapping(address => uint256) public nonceForAddress;

    constructor() Ownable(msg.sender) {}

    function claimAirdrop(uint256 amount, address to, uint8 v, bytes32 r, bytes32 s) public {
        bytes32 hash_ = keccak256(abi.encodePacked(nonceForAddress[to], amount, to));
        nonceForAddress[to]++;
        address recovered = ecrecover(hash_, v, r, s);
        require(recovered == owner(), "invalid signature");

        // claim airdrop
        console.log("CLAIMING AIRDROP");
    }
}
