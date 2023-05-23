# Phantom Token

This Solidity program is a simple contract that demonstrates the creation of a token using the Solidity programming language. The purpose of this program is to serve as a starting point for those who want to create their own token on the Ethereum blockchain.

## Description

This program is a contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has two functions: `mint` and `burn`. The `mint` function allows the contract owner to create new tokens and add them to a user's balance. The `burn` function allows the contract owner to destroy tokens from a user's balance.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., PhantomToken.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the “Solidity Compiler” tab in the left-hand sidebar. Make sure the “Compiler” option is set to “0.8.18” (or another compatible version), and then click on the “Compile PhantomToken.sol” button.

Once the code is compiled, you can deploy the contract by clicking on the “Deploy & Run Transactions” tab in the left-hand sidebar. Select the “token” contract from the dropdown menu, and then click on the “Deploy” button.

Once the contract is deployed, you can interact with it by calling its functions. Click on the “token” contract in the left-hand sidebar to see its available functions.

#Authors
Metacrafter Aadil
@PhantomZNeuroX



