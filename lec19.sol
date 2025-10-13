// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 <0.9.0;
contract lec19{
    uint256 num = 89;
    mapping(uint256 => uint256) numMap;
    uint256[] numArray;

    function changeNum(uint256 _num) public{
        num = _num;
    }
    function showNum() public view returns(uint256){
        return num;
    }
    function numMapAdd() public{
        numMap[0] = num;
    }
    function showNumMap() public view returns(uint256){
        return numMap[0];
    }
    function numArrayAdd() public{
        numArray.push(num);
    }
    function showNumArray() public view returns(uint256){
        return numArray[0];
    }

    //mapping과 배열은 referenc로 저장하지 않고, 값을 캡쳐해서 저장함.
    // 따라서 값이 변경되면 업데이트가 필요

    //업데이트 하기
    function updateArray() public{
        numArray[0]=num;
    }
}