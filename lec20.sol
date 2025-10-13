// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 <0.9.0;

contract lec20{

    //struct는 Mapping이나 Array의 변수를 변수에 따라 구조체에 넣어 타입을 정해 정리할 수 있다. 
    struct Character{
        uint256 age;
        string name;
        string job;
    }

    mapping(uint256=>Character) public CharacterMapping;
    Character[] public CharacterArray;

    function createCharacter(uint256 _age, string memory _name, string memory _job) pure public returns(Character memory){
        return Character(_age, _name, _job);
    }

    function createCharacterMapping(uint256 _key, uint256 _age, string memory _name, string memory _job) public{
        CharacterMapping[_key] = Character(_age, _name, _job);
    }
    function createCharacterArray(uint256 _age, string memory _name, string memory _job) public {
        CharacterArray.push(Character(_age,_name, _job));
    }
    function getCharacterArray(uint256 _index) public view returns (Character memory){
        return CharacterArray[_index];
    }
}