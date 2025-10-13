// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 <0.9.0;

contract Father{
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimDaeho");
    }
}
contract Mother{
    event MotherName(string name);
    function who() public virtual{
        emit MotherName("leeSol");
    }
}
contract Son is Mother, Father{ //상속은 맨 오른쪽(최신의 것)이 됨
    function who() public override(Father, Mother){
        super.who();
    }
}