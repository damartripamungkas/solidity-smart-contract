// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

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

    function qtyMyBook(address addr) public view returns(uint256) {
        return myBook[addr];
    }
}