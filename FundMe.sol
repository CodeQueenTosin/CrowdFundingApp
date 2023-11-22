// SPDX-License-Identifier: MIT

pragma solidity   0.8.18;

contract FundMe {

function  Fund()  public payable {
   //Allow users  send money
   // Have a minimum value to be sent in USD
    //use paaybale lkeu
    //msg.value
    require(msg.value >  1e18, "didint send enought ether")    ;

} 



//function Withdraw  () public {

//s}

}