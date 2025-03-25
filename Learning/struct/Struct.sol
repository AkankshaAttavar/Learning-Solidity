// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Structure {
    struct TodoList {
        string text;
        bool isCompleted;
    }
    TodoList[] public todos;

    function set(string calldata _text) public {
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(TodoList(_text, false));

        // key value mapping
        todos.push(TodoList({text: _text, isCompleted: false}));

        // initialize an empty struct and then update it
        TodoList memory todo;
        todo.text = _text;
        // todo.completed initialized to false

        todos.push(todo);
    }

    // update text
    function updateText(uint256 _index, string calldata _text) public {
        TodoList storage todo = todos[_index];
        todo.text = _text;
    }

    function todoCompleted(uint256 _index) public {
        TodoList storage todo = todos[_index];
        todo.isCompleted = true;
    }
}
