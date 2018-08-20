pragma solidity ^0.4.0;

contract Tiny {

    /*
    Map of key to values
    key - The key for looking up the list of addresses
    values - The list of values, which correspond to the addresses
    */
    mapping (address => bytes32) public keyValues;
    address public key;

    constructor() public {

    }

    /*
    Adds a kv pair to the mapping
    */
    function addKv(bytes32 val) public {
        key = msg.sender;
        keyValues[key] = val;
    }

    /*
    Returns the value for this key
    */
    function getKv(address lookupKey) view public returns (bytes32) {
        return keyValues[lookupKey];
    }
}
