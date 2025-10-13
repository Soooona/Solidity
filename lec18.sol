// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 <0.9.0;

//Array(배열) -length를 구할 수 있음. 순회할 수 있음. 
//그러나 solidity에서는 mapping을 더 선호함 (iteration이 DDos 공격에 취약하기 때문)

contract lec18{
    uint256[] public ageArray; //배열 정의
    uint256[10] public ageFixedSizeArray; //array length 제한
    string[] public nameArray = ["Kal","John","Kerri"];

    function AgeLength()public view returns(uint256){
        return ageArray.length;
    }

    function AgePush(uint256 _age)public{
        ageArray.push(_age);
    }

    function AgeGet(uint256 _index)public view returns(uint256){
        return ageArray[_index];
    }

    function AgePop()public{
        ageArray.pop();
    } 

    function AgeDelete(uint256 _index)public{
        delete ageArray[_index];
    } 

    function AgeChange(uint _index, uint _age) public{
        ageArray[_index] = _age;
    }



}