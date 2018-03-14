pragma solidity ^0.4.18;

contract Fourth {
    
    uint private val = 5;
    
    function passValue () public constant returns (uint) {
        plus3(val);
    }
    
    function plus3 ( uint a ) public pure returns (uint) {
        return a + 3;
    }
    
}