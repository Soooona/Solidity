// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//super

contract Father{
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimDaeho");
    }
}

contract Son is Father{
    event SonName(string name);
    function who() public override{
        //emit FatherName("KimDaeho"); 이렇게 해도 되지만, 상속받을 function 이 매우 길 수 있음. super로 대체
        super.who();
        emit SonName("KimJin");
    }
}