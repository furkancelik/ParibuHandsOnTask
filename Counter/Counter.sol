// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    uint public count;

   
    // counterı bir artır
    function inc() public {
        count += 1;
    }

    // counterı bir azalt
    function dec() public {
        count -= 1;
    }

     // counterı get et.
    function get() public view returns (uint) {
        return count;
    }

}
