//SPDX-License-Identifier:MIT

pragma solidity 0.8.18;

contract SimpleStorage{
    uint256 myFavouriteNumber;

    struct Person {
        uint256 favouriteNumber;
        string name;

    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nametoFavouriteNumber;

    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        listOfPeople.push(Person(_favouriteNumber,_name));
        nametoFavouriteNumber[_name] = _favouriteNumber ;
    }

}
