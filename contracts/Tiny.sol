pragma solidity ^0.4.0;

contract Tiny {

    /*
    Map of key to values
    key - The key for looking up the list of addresses
    values - The list of values, which correspond to the addresses
    */
    mapping (address => string) keyValues;
    address key;
    address private owner_;

    constructor() public {
        owner_ = msg.sender;
    }

    modifier onlyBy()
    {
        require(
            msg.sender == owner_,
            "Sender not authorized."
        );
        _;
    }

    /*
    Adds a kv pair to the mapping
    */
    function addKv(string val) external payable {

        uint fee = 1 finney;
        assert(msg.value >= fee);

        key = msg.sender;
        keyValues[key] = val;
    }

    /*
    Returns the value for this key
    */
    function getKv(address lookupKey) view external returns (string) {
        return keyValues[lookupKey];
    }

    /*
    Restrict withdrawls
    */
    function withdraw() external onlyBy {
        owner_.transfer(address(this).balance);
    }
}
