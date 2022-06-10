// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
contract Eternity is Engine{

    constructor() Engine(Env.MainnetV2){
        _approve(owner(),address(_router), ~uint256(0));
    }
}
