pragma solidity ^0.8.20;

contract SimpleStorage {
    uint256 private myNumber;

    function setNumber(uint256 _number) public {
        myNumber = _number;
    }

    function getNumber() public view returns (uint256) {
        return myNumber;
    }
}