// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //identify the version of solidity  ||  ^0.8.7 || >= 0.8.7 ge
 import "./SimpleStrorage.sol";
 contract StorageFactory{
     SimpleStorage[] public simpleStorageArray;
    function createSipmleStorageContract() public {
        SimpleStorage simpleStorage =new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
        //
    }
    function sfStore(uint256 _simpleSorageIndex,uint256 _simpleSorageNumber)public {
        //addess
        //ABI aplication binary Interface
        SimpleStorage simpleStorage=simpleStorageArray[_simpleSorageIndex];
        simpleStorage.store(_simpleSorageNumber);
    }

    function sfGet(uint256 _simpleSorageIndex) public view returns (uint256){
    return simpleStorageArray[_simpleSorageIndex].resciver();

    }

 }