// SPDX-License-Identifier GPL-30
pragma solidity >=0.7.0 <0.9.0;

// 에러 핸들러: require, revert, assert, try/catch

contract lec25{
/*
    0.4.22 ~ 0.7.x
    assert: gas를 다 소비한 후, 특정한 조건에 부합하지 않으면(false 일 때) 에러를 발생시킨다. 
    revert: 조건없이 에러를 발생시키고, gas를 환불 시켜준다. 
    require: 특정한 조건에 부합하지 않으면(false일 때) 에러를 발생시키고, gas를 환불 시켜준다. 
*/
    //gas를 상대적으로 많이 소비, 환불하지 않음 -> test 용으로 많이 사용함. 
    function assertNow() public pure{
        assert(false);
    }
    
    // 실제 프로그래밍에서 revert, require을 많이 사용함. 
    function revertNow() public pure{
        revert("error!!"); // if문을 쓰거나, require을 사용
    }

    // if + revert
    function requireNow() public pure{
        require(false, "occurred");
    }

    function onlyAdult(uint256 _age) public pure returns(string memory){
        if(_age < 19){
            revert("You are not  allowed to pay for the cigarette");
        }
        return "Your payment is succeeded";
    }
    // if문은 조건문이 true일 때 revert를 발생시킴

    function onlyAdult2(uint256 _age) public pure returns(string memory){
        require(_age>19,"You are not  allowed to pay for the cigarette");
        return "Your payment is succeeded";
    }
    //require은 조건문이 false일 때 error를 발생시킴 
}