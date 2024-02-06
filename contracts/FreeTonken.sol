//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract FreeToken {
    address owner;
    event Mint(address indexed to, uint amount);
    event Burn(address indexed from, uint amount);
    constructor () payable {
        owner = msg.sender;
    }
    uint public amount;
    mapping(address => uint) public balances;
    mapping(address => uint) public experience;

    function mint(address _to, uint _amount) public {
        balances[_to] += _amount;
        amount += _amount;
        emit Mint(_to, _amount);
    }
    function burn(address _from, uint _amount) public {
        balances[_from] -= _amount;
        emit Burn(_from, _amount);
    }
}