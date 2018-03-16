pragma solidity ^0.4.2;

import "./Owned.sol";

contract Cars is Owned {

struct Car {
    uint    id;
 //   address carAddress;
    string  field;
    string answer;
}
    uint numCars;
    mapping (uint => Car) cars;

    function setupCarList() onlyOwner public {
        uint newCarID;
        newCarID = newCar("title","Mini");
        newCarID = newCar("title","BMW");
        newCarID = newCar("title","Golf");
        newCarID = newCar("title","Rolls Royce");
    }

    function newCar(string _field, string _answer) public returns (uint _carID) {
        _carID = numCars++; // campaignID is return variable
        // Creates new struct and saves in storage. We leave out the mapping type.
        //_carAddress = address.new();
        cars[_carID] = Car(_carID,  _field, _answer);
        }

    //function listCars() public view returns (uint[]) {
    function listCars() public view returns (uint[]) {
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

    function getCar(uint _id) public view returns (string  _field,string _answer ) {
        // we check whether there is at least one car
    require(numCars > 0);

    // we check whether the article exists
    require(_id > 0 && _id <= numCars);
     
    //retrieve the car details
    Car storage car = cars[_id];

    //string[4] arrCar = car(_id); 
    return (car.field,car.answer);
       // car(0),car(_id)(1),car(_id)(2),car(_id)(3));

     }

    // kill the smart contract
    function kill() onlyOwner public {
    selfdestruct(owner);
  }
}