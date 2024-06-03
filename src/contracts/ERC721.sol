// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    /*
    민팅 함수 만들기
        1. NFT 지갑 주소를 정확하게 가르키게 한다.
        2. NFT 토큰을 추적한다(고유식별번호)
        3. 토큰 소유자의 주소를 추적한다.(이 방식으로 누가 토큰 소유자인지 확인 가능하다.)
        4. 지갑 주소의 소유자가 몇개의 NFT 토큰을 갖고 있는지 확인한다.
        5. 이벤트를 생성함으로서 민팅된 위치, 계약 주소를 로그로 남긴다.
            민팅 함수를 만들어 NFT를 생성

    */
contract ERC721 {

    event Transfer(
    address indexed from, 
    address indexed to, 
    uint256 indexed tokenId);

    //매핑은 해시테이블로 파이썬의 딕셔너리랑 똑같다.
    mapping(uint256 => address) private _tokenOwner;
    
    //소유자의 소유 갯수 토큰 매핑해보십시오
    mapping(address => uint256) private _ownedTokensCount;

    

    function _exists(uint256 tokenId) internal view returns(bool) {
        address owner = _tokenOwner[tokenId];
        // 소유자 주소가 address(0) (즉, 초기값, 설정되지 않음)인인지 아닌지 확인
        return owner != address(0);
    }


    function _mint(address to, uint256 tokenId) internal{
        //require문으로 주소 설정이 되어있는지 안되어 있는지 확인하고
        require(to != address(0),'ERC721: minting to the zero address '); //주소가 0이면 안된다.
        
        //require문으로 토큰이 이미 생성된 토큰 인지 아닌지 검사한다.
        require(!_exists(tokenId),'ERC721: token already minted');
        
        //위 검사를 다 통과 하면 우리는 민팅을 하여 NFT를 보상으로 준다.
        _tokenOwner[tokenId] = to;
        // 이것은 민팅된 주소의 토큰 갯수를 추적하기위한 매핑이다.
        _ownedTokensCount[to] += 1;
        
        // emit은 event 함수를 실행시키는 예약어 이다.
        emit Transfer(address(0), to, tokenId);
    }
}