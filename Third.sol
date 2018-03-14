pragma solidity ^0.4.18;

contract Third {
    
    enum Status { New, Pending, Complete, Failed }
    
    Status public status;
    
    function statusValue () public /* internal, external, private */ 
    view /* constant, pure */ returns (uint8) {
        // Just an int to the EVM
        return uint8(status);
    }
    
    function getOuptutParam () public returns (uint myReturn) {
        myReturn = 3;
        if (true) {
            // Do something else
        }
    }
    
}