# Error-Handling in Solidity
This solidity program demonstrates the error handling mechanism in solidity. The purpose of the program is to give an idea about usage of assert(),revert() and require() statements for error handling in solidity and see how they work.
## Description
This solidity program implements the assert(), revert() and require() to check for errors that may occur. The smart contract created make use of require() for input validation. revert() is used to handle any unexpected condition (Here, to handle the situation if amount to be withdrawn is greater than the balance). assert() handles the internal errors or conditions which should never occur (Here, for division by zero condition). 
## Executing program
Use remix, an online solidity IDE to run the below code:
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyContract {
    mapping(address => uint) public balance;

    function mint(address _add, uint value) public{
        balance[_add] += value;
    }

    function check(address _add,uint amount) public {
        require(amount>0,"Invalid input");
        
        if (balance[_add] < amount){
            revert("Insufficient funds");
        }
        balance[_add] -= amount;
                
    }

    function number(uint x)public pure returns (uint){
        assert(x!=0);
        uint result = 10/x;
        return result;
    }
}
```
## Author
Sumanpreet Kaur
