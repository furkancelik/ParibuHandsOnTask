pragma solidity ^0.8.3;
// SPDX-License-Identifier: MIT


contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public{
        todos.push(Todo({text:_text, completed:false}));
    }

    function updateText(uint _index,string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
        //todos[_index].text = _text;
    }

    function get(uint _index) public view returns (string memory 
text , bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed); 
    }

    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
        //todos[_index].completed = !todos[_index].completed;
    }

}
