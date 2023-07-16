// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.8;



contract assertStatement {
   
    // Defining a state variable 
    bool result;
 
    // Defining a function to check condition
    function checkOverflow(uint _num1, uint _num2) public {
        uint sum = _num1 + _num2;
        assert(sum<=255);
        result = true;
    }
    
    // Defining a function to print result of assert statement
    function getResult() public view returns(string memory){
         if(result == true){
             return "No Overflow";
         }
         else{
             return "Overflow exist";
         }
    }
}
