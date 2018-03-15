pragma solidity ^0.4.2;

import "./Owned.sol";

contract Cars is Owned {

struct Car {
    uint    id;
    address carAddress;
    string  field;
    string answer;
}
    uint numCars;
    mapping (uint => Car) cars;

    function setupCarList() onlyOwner public {
        uint newCarID;
        newCarID = newCar(msg.sender,"title","Mini");
        newCarID = newCar(msg.sender,"title","BMW");
        newCarID = newCar(msg.sender,"title","Golf");
        newCarID = newCar(msg.sender,"title","Rolls Royce");
    }

    function newCar(address _carAddress, string _field, string _answer) public returns (uint _carID) {
        _carID = numCars++; // campaignID is return variable
        // Creates new struct and saves in storage. We leave out the mapping type.
        cars[_carID] = Car(_carID, _carAddress, _field, _answer);
        }

    function listCards() view returns (uint[]) {
        if (numCars == 0) {
        return new uint[](0);
        }

        // prepare intermediary array
        uint[] memory cardIds = new uint[](numCars);

        uint numberOfCards = 0;
        // iterate over cards
        for (uint i = 1; i <= numCars; i++) {
        // keep only the ID of articles not sold yet
            cardIds[numberOfCards] = cars[i].id;
            numberOfCards++;
        
        }

        // copy the articleIds array into the smaller forSale array
        uint[] memory carCards = new uint[](numberOfCards);
        for (uint j = 0; j < numberOfCards; j++) {
        carCards[j] = cardIds[j];
        }
        return (carCards);
    }

    // kill the smart contract
    function kill() onlyOwner public {
    selfdestruct(owner);
  }
}