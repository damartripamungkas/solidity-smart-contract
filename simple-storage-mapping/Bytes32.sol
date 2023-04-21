// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    mapping (address => bytes32) private myHash;
    constructor() {}

    function hashMyData(string memory data) public returns(bytes32) {
        myHash[msg.sender] = keccak256(abi.encodePacked(data));
        return myHash[msg.sender];
    }

    function getMyHashData(address owner) public view returns(bytes32) {
        return myHash[owner];
    }
}