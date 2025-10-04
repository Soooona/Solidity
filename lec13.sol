// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;


//event로 출력

contract lec13{
    event info(string name, uint256 money); //info라는 event: name, money 출력 

    // 이 값이 저장되므로, 언제든지 꺼내서 사용 가능함. 
    function sendMoney() public{
        emit info("KimeDaeJin", 1000);
    }
}