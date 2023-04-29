// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    uint256[] private myNum;
    constructor() {}

    function storeNumber(uint256[] memory num) public returns (uint256) {
        for (uint index = 0; index < num.length; index++) {
            myNum.push(num[index]);
        }

        return myNum.length;
    }

    function getNumber(uint256[] memory num) public view returns (uint256[] memory result) {
        for (uint index = 0; index < num.length; index++) {
            result[index] = myNum[num[index]];
        }
    }
}