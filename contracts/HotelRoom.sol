// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/////// Creating Hotel Room smart contract that does the following:
/// Ether Payments
/// Modifiers
/// Visibility
/// Events
/// Enums

contract HotelRoom {
    // This contract is responsible for booking an hotel room and opening it

    //hotel room statuses: vacant or occupied
    enum Statuses {
        Vacant, 
        Occupied
    }
    Statuses public currentStatus; 

    // events are called to track actions/functions on the blockchain
    event Occupy(address _occupant, uint _value);

    address payable public owner;

    constructor() {
        owner = payable (msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier  cost(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    function bookHotel() payable public  onlyWhileVacant cost(2 ether)  {
        currentStatus = Statuses.Occupied;

        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }
}
