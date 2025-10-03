// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 <0.9.0;

contract lec7{
    /*
    1. Storage: 대부분의 변수, 함수들이 저장됨. 영속적으로 저장되어 가스 비용이 비쌈
    2. memory: 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장됨. 그러나, storage처럼 영속적이지 않고, 함수내에서만 유효하기에 storage보다 가스 비용이 쌈
    3. colldata: 주로 external function 의 파라미터에서 사용됨
    4. stack: Ethereum Virtual Machine(EVM)에서 stack data를 관리할 때 쓰는 영역, 1024Mb 제한적
    */

    //function -string
    function get_string(string memory _str) public pure returns(string memory) {
        return _str;
    }
    function get_uint(uint _ui) public pure returns(uint256){
        return _ui;
    }

}