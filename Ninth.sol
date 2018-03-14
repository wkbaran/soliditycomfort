pragma solidity ^0.4.18;

contract owned {
    function owned() public { owner = msg.sender; }
    
    address owner;

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract mortal is owned {
    function close() public onlyOwner {
        selfdestruct(owner);
    }
}

/////////////////////////////////////////

contract priced {
    modifier costs (uint price) {
        if (msg.value >= price) {
            _;
        }
    }
}

contract Register is priced, owned {
    mapping (address => bool) registeredAddresses;
    uint price;

    function Register(uint initialPrice) public { 
        price = initialPrice; 
    }

    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}

/////////////////////////////////////////

contract Mutex {
    bool locked;
    
    modifier noReentrancy() {
        require(!locked);
        locked = true;
        _;
        locked = false;
    }

    function f () public noReentrancy returns (uint) {
        require(msg.sender.call());
        return 7;
    }
}