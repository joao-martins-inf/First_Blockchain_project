pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0; // state of the variable in the smart contract (inside of the blockchain)

    struct Task {
        uint id; // id of the task
        string content; // content/text of the task
        bool completed; // checkbox state of the todolist
    }

    mapping(uint => Task) public tasks; //hash with key value pair

    constructor() public {
        createTask("My first task");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }


}
