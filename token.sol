// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract token{
    string public TokenName = 'Phantom';
    string public TOkenAbr = 'Ptm';
    uint public TokenSupply = 1000;

    mapping(address => uint) public balances;

    function mint(address user, uint value) public {

        balances[user] += value;
        TokenSupply += value; 

    }

    function burn(address user, uint value) public {

        if (balances[user] >= value){
            balances[user] -= value;
            TokenSupply -= value; 
        }
    }
}
