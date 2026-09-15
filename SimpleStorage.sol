// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public storageContract;

    event NumberUpdated(uint256 indexed newNumber);

    function setUp() public {
        storageContract = new SimpleStorage();
    }

    // Юнит-тест с проверкой эмиссии событий
    function test_SetNumber() public {
        vm.expectEmit(true, false, false, true);
        emit NumberUpdated(42);
        
        storageContract.setNumber(42);
        assertEq(storageContract.myNumber(), 42);
    }

    // Фуззинг: проверка на случайных значениях
    function testFuzz_SetNumber(uint256 x) public {
        storageContract.setNumber(x);
        assertEq(storageContract.myNumber(), x);
    }
}