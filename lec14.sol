// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Lec14{
    //같은 parameter를 가지는 event 2개 정의
    event numberTracker(uint256 num, string str);
    event numberTracker2(uint256 indexed num, string str);
    //indexed: num을 통해 특정 이벤트 값을 가져올 수 있음

    uint256 num = 0;
    function PushEvent(string memory _str) public{
        emit numberTracker(num, _str);
        emit numberTracker2(num, _str);
        num++;
    }
}