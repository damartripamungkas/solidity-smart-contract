// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    uint256 private myBook;
    constructor() {}

    function increaseMyBook(uint256 qty) public returns(uint256) {
        myBook += qty;
        return myBook;
    }

    function decreaseMyBook(uint256 qty) public returns(uint256) {
        myBook -= qty;
        return myBook;
    }

    function qtyMyBook() public view returns(uint256) {
        return myBook;
    }
}