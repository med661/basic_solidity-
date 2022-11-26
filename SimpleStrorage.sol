// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //identify the version of solidity  ||  ^0.8.7 || >= 0.8.7 ge
 
contract SimpleStorage{
    //boolean,uint (defult 256,u c use :uint8 ) ,init ,adress ,bytes
    uint256  FavoriteNumber;
  
    //People public person = People({FavoriteNumber:2,name:"mohamed"});
    mapping (string =>uint256) public nameToFavoriteNumber;
    struct People {
        uint256 FavoriteNumber;
        string name;
    }
    People[] public people;
    

    function store(uint256 _favoriteNumber) public virtual  {
        FavoriteNumber = _favoriteNumber;

    }
    function resciver() public view returns (uint256){
        return FavoriteNumber;
    }
//0xd9145CCE52D386f254917e481eB44e9943F39138
    function addPerson(string memory _name,uint256 _favoriteNumber) public {
        People memory newPerson=People({FavoriteNumber:_favoriteNumber,name:_name});
        people.push(newPerson);
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }
}