// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBlockchain {
    struct Question {
        string q1;
        string q2;
        string q3;
        string a1;
        string a2;
        string a3;
    }

    Question[] public questions;

    constructor() {
        // Create some initial questions and answers
        questions.push(Question("What is 1+1?", "2+2","3+3","2","4","6"));
    }

    function addQuestion(string memory _q1,string memory _q2,string memory _q3,string memory _a1,string memory _a2,string memory _a3) public {
        questions.push(Question(_q1,_q2,_q3, _a1,_a2,_a3));
    }

    function getNumberOfQuestions() public view returns (uint256) {
        return questions.length-1;
    }

 //   function getQuestion(uint256 index) public view returns (string memory, string memory,string memory, string memory,string memory, string memory) {
 //       require(index < questions.length, "Question index out of range");
 //       Question memory q = questions[index];
 //      return (q.question, q.answer);
 //   }
}