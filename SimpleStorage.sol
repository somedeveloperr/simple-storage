pragma solidity ^0.8.20;

/// @title Простой контракт для хранения числа
/// @notice Позволяет сохранять и считывать число с эмиссией событий
contract SimpleStorage {
    /// @notice Сохраненное значение
    /// @dev Public автоматически создает getter-функцию myNumber()
    uint256 public myNumber;

    /// @notice Событие, вызываемое при изменении числа
    event NumberUpdated(address indexed setter, uint256 newNumber);

    /// @notice Сохраняет новое число в блокчейн
    /// @param _number Новое значение для записи
    function setNumber(uint256 _number) external {
        myNumber = _number;
        emit NumberUpdated(msg.sender, _number);
    }
}