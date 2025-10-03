// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 <0.9.0;

contract lec6{
    /*
    - view: function 밖의 변수들을 읽을 수 잇으나, 변경 불가능
    - pure: function 밖의 변수들을 읽지 못하고, 변경도 불가능
    - view와 pure 둘다 명시하지 않을 때: function 밖의 변수들을 읽어서, 변경을 해야함.
    */
    uint256 public a=1;
    
    //view
    // function 밖의 a를 불러와서 계산 가능, a값이 변경되지 X
    function read_a() public view returns(uint256){
        return a+2;
    }

    //pure
    function read_a2() public pure returns(uint256){
        uint b=1;
        return 4+2+b;
    }

    // 둘다 사용하지 않을 때
    function read_a3() public returns(uint256){
        a=13;
        return a;
    }
}