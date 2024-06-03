// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ERC721Metadata {
    string private _name;
    string private _symbol;
    
    // Kryptobird로 정보를 전달 하는 과정.
    // 생성자의 파라미터는 Kryptobird 계약 안에서 선언된다. 
    // 생성자의 파라미터에는 type 뒤에 memory를 붙혀줘야 한다.
    constructor(string memory named, string memory symbolifiled){
        _name = named;
        _symbol = symbolifiled;
    }
    
    function getName() external view returns(string memory){
        return _name;
    }
    
    function getSymbol() external view returns(string memory){
        return _symbol;
    }
}