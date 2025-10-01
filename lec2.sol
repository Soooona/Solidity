// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract lec2{
    // data type
    // boolean, bytes, address, uint

    // boolean: true / false 
    bool public b = false;

    // ! || == &&
    bool public b1 = !false; //true
    bool public b2 = false || true; // true
    bool public b3 = false == true; // false
    bool public b4 = false && true; // false

    //byte 1 ~ 32
    bytes4 public b5 = 0x12345678;
    bytes public bt2 = "STRING";

    // address 고유 계좌를 통해 돈을 주고 받는 것과 같은 이치, 스마트컨트랙트를 배포할 때도 생성됨
    address public addr = 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8;
    // address는 20byte 

    // int vs uint

    // int8
    // -2^7 ~ 2^7-1
    int8 public it = 4;

    // uint8, 보통 uint를 많이 씀
    // 0 ~ 2^8-1
    uint256 public uit = 132213;

    // + - * /

    //uint8 public uit2 = 256;

}