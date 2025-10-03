// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 <0.9.0;

/*
instance: 한 컨트랙에서 다른 컨트랙에 접근할 때 사용
A instance = n A();
instance.a(); instance.change(_val); // .을 통해 인스턴스 내의 함수/변수에 접근 가능
*/
contract A{

    uint256 public a=5;
    
    function change(uint256 _value)public{
        a = _value;
    }

}
contract B{

    A instance = new A();
    
    function get_A() public view returns(uint256){
        return instance.a(); 
    }

    function change_A(uint256 _value)public{
        instance.change(_value);
    }


}