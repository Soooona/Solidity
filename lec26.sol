// SPDX-License-Identifier GPL-30
pragma solidity >=0.7.0 <0.9.0;

// 에러 핸들러: require, revert, assert, try/catch

contract lec26{
/*  
    0.8.0 포함 X
    0.8.1~
    assert: 오직 내부적 에러 테스트 용도, 불변성 채크 용도
    assert가 에러를 발생시키면, Panic(uint256)이라는 에러타입의 에러 발생
*/

    function assertNow() public pure{
        assert(false);
    }
     
    function revertNow() public pure{
        revert("error!!"); 
    }

    function requireNow() public pure{
        require(false, "occurred");
    }

}