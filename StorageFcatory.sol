//SPDX-License-Identifier:MIT

pragma solidity 0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{

    SimpleStorage public mysimpleStorage;
    
    function CreateSimpleStorageContract() public {
           //How does this contract know which contract to interact with
         // simpleStorage = new SimpleStorage();
    
    }
}   
