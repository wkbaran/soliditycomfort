pragma solidity ^0.4.18;

contract Fifth {
    
    uint[] x; // the data location of x is storage
    
    uint[3] ex = [1,2,3];

    // the data location of memoryArray is memory
    function f (uint[] memoryArray) public {
        x = memoryArray; // works, copies the whole array to storage
        var y = x; // works, assigns a pointer, data location of y is storage
        
        y[7]; // fine, returns the 8th element
        y.length = 2; // fine, modifies x through y
        
        x[1] = 3; // modifies x and therefor y
        delete x; // fine, clears the array, also modifies y
        
        // The following does not work; it would need to create a new temporary /
        // unnamed array in storage, but storage is "statically" allocated:
        // y = memoryArray;
        uint[] memory z = memoryArray; // instead do this
        
        // This does not work either, since it would "reset" the pointer, but there
        // is no sensible location it could point to.
        // delete y;
        
        h(x); // calls h and creates an independent, temporary copy in memory
        g(x); // calls g, handing over a reference to x
    }

    function h (uint[] memoryArray) public pure {}
    
    function g (uint[] storage storageArray) internal pure {}
    
}
