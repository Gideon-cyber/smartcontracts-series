// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State Variables vs Local Variables
    // Local variables are variables that exist within functions

    // uint public MyUint = 1; // state variable
    // uint256 public UInt = 1;

    // string public MyString = "Hello World";

    // function getValue() public pure returns(uint) {
    //     uint value = 1; // local variable

    //     return value;
    // }

    //bytes type
    // bytes32 public myByte32 = "Hello World";

    // address type
    // address public myAdress = 0x32Be343B94f860124dC4fEe278FDCBD38C102D88;

    // struct myStruct {
    //     address myAdress;
    //     bytes32 myByte32;
    // }

    // array definition and types
    // uint[] public uintArray = [1,2,3];
    // string[] public stringArray = ["Apple", "Banana", "Carrot"];
    // string[] public valueArray; 
    // uint256[][] public array2D = [[1,2,3], [4,5,6]]

    // function addValue(string memory _value) public {
    //     valueArray.push(_value);
    // }

    // function valueArrayCount() public view returns(uint) {
    //     return valueArray.length;
    // }

    // Two dimensional array i.e An array in an array
    // uint256[][] public array2D = [[1,2,3], [4,5,6]];

    // Mapping
    // Basic mapping looks like: mapping(key => value) nameOfMapping ;
    // mapping (uint => string) names;
    // mapping (uint => Book) public books; 
    // mapping (address => mapping (uint => Book)) public myBooks;

    // struct Book {
    //     string title;
    //     string author;
    // }

    // constructor() {
    //     names[1] = "Adam";
    //     names[2] = "Eve";
    //     names[3] = "Cain";
    // }

    // function addBooks(uint _id, string memory _title, string memory _author) public {
    //     books[_id] = Book(_title, _author);
    // }

    // function getBook(uint _id) public view returns(Book memory) {
    //     return books[_id];
    // }

    // function addMyBook(uint _id, string memory _title, string memory _author) public {
    //     myBooks[msg.sender][_id] = Book(_title, _author);
    // }

    // // Conditionals & loop
    // Conditionals are controlled flow structures

    // uint[] public numbers = [1, 2,3,4,5, 6,7,8,9,10];
    // address public owner;

    // constructor() {
    //     owner = msg.sender;
    // }

    // function isEvenNumber(uint _number) public pure returns(bool) {
    //     if (_number % 2 == 0) {
    //         return true;
    //     } else {
    //         return false;
    //     }
    // }

    // function countEvenNumbers() public view returns(uint) {
    //     uint count = 0;

    //     for (uint i = 0; i< numbers.length; i++) {
    //         if (isEvenNumber(numbers[i])) {
    //             count++;       
    //         }
    //     }


    //     return count;
    // }

    // function isOwner() public view returns(bool) {
    //     return (msg.sender == owner);
    // }

}