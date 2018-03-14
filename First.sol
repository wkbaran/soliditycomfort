pragma solidity ^0.4.18;

import "./IncludeA.sol";
import "./IncludeB.sol" as packageB;
// import * as packageB from "./IncludeB.sol";
import {IncludeCa} from "./IncludeC.sol";
import {IncludeCb as ContractCb} from "./IncludeC.sol";

/**
 * This is the fisrt contract we'll look at.
 */
contract First {
    
    IncludeA contractA;
    packageB.IncludeB contractB;
    IncludeCa contractCa;
    ContractCb contractCb;
    
    function () public payable {
        // Fallback
    }
    
}