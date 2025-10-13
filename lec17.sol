// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 <0.9.0;

// Mapping(key&value): key값으로 value 값을 얻을 수 있음. 
//length X
contract lec17{

    mapping(uint256=>string) private nameList;
    mapping(string=>uint256) private priceList;
    mapping(uint256=>uint256) private ageList; //key 값의 타입 => value값의 타입

    function setAgeList(uint256 _index, uint256 _age) public {
        ageList[_index] = _age;
    }
    function getAge(uint256 _index) public view returns(uint256){
        return ageList[_index];
    }

    function setNameList(uint256 _index, string memory _name) public{
        nameList[_index] =_name;
    }

    function getName(uint256 _index) public view returns(string memory){
        return nameList[_index];
    }
    function getPriceList(string memory _itemName, uint256 _price) public{
        priceList[_itemName] = _price;
    }

    function setPriceList(string memory _index) public view returns(uint256){
        return priceList[_index];
    }
}