pragma solidity ^0.4.2;

import "./Owned.sol";

contract TopBlox is Owned {

struct User {
    address user;
    address wallet;
}

struct Packs {
    string name;
    address pack;
}

// State variables
mapping(uint => Packs) public packs;
uint packCounter;

struct Cards {
    string name;
    string details;
    uint   pack;
}

struct Draws {
    uint id;
    uint user1;
    uint256 user1Stake;
    uint user2;
    uint256 user2Stake;
    uint    packId;
    uint    winningUserId;
    mapping(uint => Cards) cards;
}

// function addPack(){

// }

//function addUser() {}
//function editWallet() {}
//function enterDraw() {}

//Get the number of packs in the contract
// function getNumberOfPacks() public constant returns (uint) {
//     return packCounter;
// }

// //Get and return all pack ids
// function getPacks() public constant returns (uint[]) {
// //check whether there's at least one card
//     if (packCounter == 0) {
//     return new uint[](0);
//     }
//     //prepare intermediate array
//     uint[] memory packIds = new uint[](packCounter);

//     uint numberOfPacks = 0;
//     //iterate through packs
//     for (uint i = 1; i <= packCounter; i++){
//         packIds[numberOfPacks] = Packs[i].pack;
//         numberOfPacks++;
//     }
// }
// function getCards() public constant returns (uint, string){
//     if (packCounter != 0) {
//     //return new uint[], new string[];
//     }
// }
//function getUserCardsByPack() {}
//function listUsersMatchingCards() {}






}
