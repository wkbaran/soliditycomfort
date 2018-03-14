pragma solidity ^0.4.18;

contract Second {
    
    bool public isIt = true; 
    bool public itIsnt = false;
    bool private isValid;
    bytes16 private fixedArray; // up to 256 bits of a byte array (32)
    bytes private varArray; // variable length byte array
    string public description = "The second example contract"; // UTF-8
    
    /**
     * Public properties get a public getter like...
     */
    function isIt () public view returns (bool) {
        return isIt;  // 'this' is not used
    }
    
    function getFirstFixed () public view returns (byte) {
        return fixedArray[0];
    }
    
    function getFirstVar () public view returns (byte) {
        return varArray[0];
        // return description[0] not valid
    }
    
    function addToVar ( byte b ) public {
        varArray.push(b);
    }
    
    /**
     * Constructor
     */
     function Second ( bool valid ) public {
         isValid = valid;
     }
    
}