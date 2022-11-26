// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //identify the version of solidity  ||  ^0.8.7 || >= 0.8.7 ge
import "./SimpleStrorage.sol";
contract ExtraStorage is SimpleStorage{
        // 
    
       function store(uint256 _favoriteNumber) public override {
        FavoriteNumber = _favoriteNumber+5;

    }
}