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
