pragma solidity >=0.4.21 <0.7.0;

contract Adoption{
    address[16] public adopters;

    function adopt(uint petid) public returns (uint) {
        require(petid >=0 && petid<=15 );
        adopters[petid] =  msg.sender;
        return petid;
    }
    
    function getAdopters() public view returns(address[16] memory){
        return adopters;
    }
}