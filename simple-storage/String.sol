// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    string private myData;
    constructor() {}

    function setMyData(string memory data) public returns(bool) {
        myData = data;
        return true;
    }

    function getMyData() public view returns(string memory) {
        return myData;
    }
}