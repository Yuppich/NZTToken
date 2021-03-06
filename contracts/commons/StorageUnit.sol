// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract StorageUnit {
    address private owner;
    mapping(bytes32 => bytes32) private store;

    constructor() {
        owner = msg.sender;
    }

    function write(bytes32 _key, bytes32 _value) external {
        /* solium-disable-next-line */
        require(msg.sender == owner);
        store[_key] = _value;
    }

    function read(bytes32 _key) external view returns (bytes32) {
        return store[_key];
    }
}