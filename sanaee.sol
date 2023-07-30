// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Sanaee {
    
    uint public storedData;


    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint retVal) {
        return storedData;
    }
}