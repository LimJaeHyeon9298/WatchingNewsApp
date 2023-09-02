# WatchingNewsApp
-Watching News App


## :sparkles: 프로젝트 소개

- 상단의 키워드를 클릭하면 관련된 뉴스를 읽을 수 있는 앱
 
 - MVP Architecture 사용



## :people_holding_hands: 멤버구성

- 개인 프로젝트 진행

## :gear: 개발 환경 

- xcode 14.3.1

- framework : Snapkit 5.0.0 , Alamofire 5.0.0 , TTGTagCollectionView 2.4.2

- API : Naver 검색 API (뉴스)

## :pushpin: 주요 기능 

앱 상단의 각각 키워드를 클릭하면 제목과 내용이 포함된 뉴스 기사가 실시간으로 뜨고, 클릭해서 뉴스를 읽을 수 있다.(webView 로 이동)



![newsApp1](https://github.com/LimJaeHyeon9298/LoginWithFirebase/assets/115773990/1c0fe084-3162-4334-a3fc-904e59306966)            ![newsApp2 (1)](https://github.com/LimJaeHyeon9298/LoginWithFirebase/assets/115773990/0ad292e6-0b23-43b7-989e-623ce1a8cd83)


읽다가 주변 친구들한테 공유하고 싶을때 오른쪽 위의 클립보드 버튼을 누르면 링크 전송이 가능하다.


## :coffee: 소감

mvp 패턴 공부와 네이버 API 를 사용하는 법을 공부하기위한 간단한 앱이여서, UI 가 너무 간단하고 기능을 많이 구현하지는 못하였다.
다음번에 기회가 되면 지금 정해저 있는 keyword 검색 뿐만 아니라 설정에서 내가 관심있는 키워드로 맞춤설정 할 수있고, 관심있거나 나중에 다시보고 싶은 기사를 즐겨찾기 설정을 해놓으면, 원할때 선택된
기사만 다시 볼 수 있는 기능을 추가하는 방식으로 리팩토링을 진행해 볼 예정이다.
