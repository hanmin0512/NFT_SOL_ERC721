// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './ERC721Metadata.sol';
import './ERC721.sol';
// ERC721Metadata.sol를 Connector에 연결하기 is는 동일하다 즉 상속한다는 뜻임..
contract ERC721Connector is ERC721Metadata, ERC721{
    //우리는 커넥터를 바로 배포하려고 할때
    // 메타데이터 정보를 ERC721Metadata(부모클래스)에 전달 함.
    constructor(string memory name, string memory symbol) ERC721Metadata(name, symbol) {
        
    }
}