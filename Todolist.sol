pragma solidity ^0.8.6;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;
    function create(string calldata _text) external {
        todos.push( Todo({
            text: _text,
            completed: false
        }));
    }
    function updatetext(uint _index,string memory _text) external {
        todos[_index].text = _text;
    }
    function get(uint _index) public view returns(string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }
    function toggleCompleted(uint_text) external {
        todos[_index].completed = !todos[_index].completed;
    }
}