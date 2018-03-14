pragma solidity ^0.4.18;

contract Seventh {
    
    struct BasicStruct {
        uint goal;
        uint amount;
    }
    
    mapping (uint => bool) bagOfNumbers;
    
    mapping (uint => BasicStruct) hashedStructs;
    
    mapping (uint => mapping(uint => string)) complexMap;
    
    function newStruct ( uint idx, uint g, uint amt ) public {
        hashedStructs[idx] = BasicStruct(g,amt);
    }
    // Can also be called as c.newStruct({g:3, amt:200, idx:-1})
    
    function setValue () public {
        complexMap[5][3] = "two";
    }
    
    function getBasicStruct( uint idx ) public view returns (uint, uint) {
        var rv = hashedStructs[idx];
        return (rv.goal, rv.amount);
        // var (goal,amount) = seventh.getBasicStruct(3); // destructuring assignment
    }
    
}