pragma solidity ^0.4.18;

contract Eighth {
    
    event Deposit(
        address indexed from,
        bytes32 indexed id,
        uint value
    );

    function deposit(bytes32 _id) public payable {
        Deposit(msg.sender, _id, msg.value);
    }
    
}