# ERC721 구현하기

## ERC721 Class Diagram
![image](https://github.com/hanmin0512/NFT_SOL_ERC721/assets/37041208/49d45303-d34e-42fd-8309-9ad63cebcf72)


## 컴파일
```
truffle compile
truffle migrate --reset
ganache-cli
truffle console
```

- truffle console
```
kryptoBird = await KryptoBird.deployed()
```

> <img width="509" alt="스크린샷 2024-06-23 오후 5 30 16" src="https://github.com/hanmin0512/NFT_SOL_ERC721/assets/37041208/c5640f6d-64af-47ee-b088-d89aefec3844">

## mint()

- NFT 이미지를 특정 사용자에게 부여하기.

```
kryptoBird.mint("https://...1")
kryptoBird.mint("https://...2")
kryptoBird.mint("https://...3")
```

> <img width="651" alt="스크린샷 2024-06-23 오후 5 33 19" src="https://github.com/hanmin0512/NFT_SOL_ERC721/assets/37041208/0391f28e-6270-4c2f-a84f-407d1fd221f4">

> <img width="658" alt="스크린샷 2024-06-23 오후 5 39 05" src="https://github.com/hanmin0512/NFT_SOL_ERC721/assets/37041208/c0fa9806-8265-4ce6-bed9-aaa05d26a56e">

> <img width="659" alt="스크린샷 2024-06-23 오후 5 39 41" src="https://github.com/hanmin0512/NFT_SOL_ERC721/assets/37041208/d3b92a44-f45d-4925-b923-a6d8f1bc2aa2">
