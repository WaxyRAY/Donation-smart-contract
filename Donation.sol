// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Donate{
   mapping (address => uint256) donor;
   
   mapping (address => uint256) use;

   function deposit(address receiver, uint256 amount) public  {
        donor[receiver] += amount;
   }

     function withdraw( uint256 amount) public  {
        donor[msg.sender] -=amount;
     }
    
    function balance(address owner) public view returns(uint256) {
        return donor [owner];
    }

}
