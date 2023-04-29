// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    bytes32[] private myHash;
    constructor() {}

    function hashMyData(string[] memory data) public returns(bytes32[] memory result) {
        for (uint256 index = 0; index < data.length; index++) {
            bytes32 hashNow = keccak256(abi.encodePacked(data[index]));
            myHash.push(hashNow);
            result[index] = hashNow;
        }
    }

    function getMyHashData(uint256[] memory positionIndex) public view returns(bytes32[] memory result) {
        for (uint index = 0; index < positionIndex.length; index++) {
            result[index] = myHash[positionIndex[index]];
        }
    }
}