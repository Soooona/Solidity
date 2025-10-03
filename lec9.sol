// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 <0.9.0;

contract A{
    string public name;
    uint256 public age;

    //생성자: 어떤 contract를 인스턴스화 할 때 초기값을 지정해줄 수 있음
    constructor(string memory _name, uint256 _age){
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age)public{
        name = _name;
        age = _age; 
    }
} 

contract B{

    A instance = new A("Alice", 52);

    function change(string memory _name, uint256 _age) public {
        instance.change(_name, _age); //A의 change function을 가져옴
    }

    function get() public view returns(string memory, uint256){
        return(instance.name(), instance.age()); // instance의 변수를 return
    }

}

