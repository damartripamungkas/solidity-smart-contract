// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    mapping (address => uint256) myBook;
    constructor() {}

    function increaseMyBook(uint256 qty) public returns(uint256) {
        myBook[msg.sender] += qty;
        return myBook[msg.sender];
    }

    function decreaseMyBook(uint256 qty) public returns(uint256) {
        myBook[msg.sender] -= qty;
        return myBook[msg.sender];
    }

    function qtyMyBook(address owner) public view returns(uint256) {
        return myBook[owner];
    }
}