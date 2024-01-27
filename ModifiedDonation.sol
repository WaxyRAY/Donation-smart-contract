// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract ModifiedDonation{
   
   uint256 public immutable goal;
   address payable use;
   address payable owner;
   
   
   constructor (uint256 _goal) {
    goal = _goal;
    owner = payable (msg.sender);
   }
   function deposit() public payable {
    
   }

   function GetaddressUse() public view returns(address) {
    
    return use;
   }

   function withdraw() public payable {
    use.transfer(address(this).balance);
       }

   function balance() public view returns(uint256){
    return address(this).balance;
   }
}
