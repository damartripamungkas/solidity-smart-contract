// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    mapping (address => string) myData;
    constructor() {}

    function setMyData(string memory data) public returns(bool) {
        myData[msg.sender] = data;
        return true;
    }

    function getMyData(address owner) public view returns(string memory) {
        return myData[owner];
    }
}