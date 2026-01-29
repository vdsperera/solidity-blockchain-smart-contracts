// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract User_Profile{
    struct User{
        string name;
        uint age;
        bool is_registered;
    }
    mapping(address => User) public users;
    address[] public user_list;

    function register(string memory _name, uint _age) public {
        users[msg.sender] = User(_name, _age, true);
        user_list.push(msg.sender);
    }

    function get_user(address _address) public view returns(string memory, uint){
        User memory user = users[_address];
        return (user.name, user.age);
    }


}
