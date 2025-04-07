// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {Test, console} from "forge-std/Test.sol";

// Find a message and signature that will hack this

contract Week22Exercise2 {
    using ECDSA for bytes32;

    address public verifyingAddress = 0x0000000cCC7439F4972897cCd70994123e0921bC;
    mapping(bytes => bool) public used;

    function challenge(string calldata message, bytes calldata signature) public {
        assembly {
            let ptr := mload(0x40)
            calldatacopy(ptr, 0, calldatasize())
            log1(ptr, calldatasize(), 0)
        }
        bytes32 signedMessageHash = MessageHashUtils.toEthSignedMessageHash(keccak256(abi.encode(message)));
        require(signedMessageHash.recover(signature) == verifyingAddress, "signature not valid");

        require(!used[signature]);
        used[signature] = true;
    }
}
