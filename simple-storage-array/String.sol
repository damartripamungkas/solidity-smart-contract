// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    string[] private myData;
    constructor() {}

    function setMyData(string[] memory data) public returns(bool) {
        for (uint index = 0; index < data.length; index++) {
            myData.push(data[index]);            
        }
        return true;
    }

    function getMyData(uint256[] memory positionIndex) public view returns(string[] memory result) {
        for (uint index = 0; index < positionIndex.length; index++) {
            result[index] = myData[positionIndex[index]];
        }
    }
}