// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    bytes32 private myHash;
    constructor() {}

    function hashMyData(string memory data) public returns(bytes32) {
        myHash = keccak256(abi.encodePacked(data));
        return myHash;
    }

    function getMyHashData() public view returns(bytes32) {
        return myHash;
    }
}