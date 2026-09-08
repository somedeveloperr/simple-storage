// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../contracts/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public storageContract;

    function setUp() public {
        storageContract = new SimpleStorage();
    }

    function test_SetNumber() public {
        storageContract.setNumber(42);
        assertEq(storageContract.myNumber(), 42);
    }
}