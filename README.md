# test02
- 도서관 관리 프로그램 예시 작성
- 기능 부분 공부를 위해 디자인은 간략히 진행하였습니다.

<img src="https://github.com/yoonjaesub/test02/blob/master/img/main.PNG" width="800px" height="300px">

## 메인페이지
```
메인페이지 입니다.
관리자 기능 위주로 작성하였습니다.
header, nav, footer 부분은 include로 모듈화 진행하였습니다.
```

<img src="https://github.com/yoonjaesub/test02/blob/master/img/newmem.PNG" width="800px" height="300px">

## 회원등록페이지
```
회원 등록 페이지입니다.
값을 입력 후 버튼을 누르면 데이터 베이스에 신규 회원 정보가 입력되도록 작성 하였습니다 (Insert)
```

<img src="https://github.com/yoonjaesub/test02/blob/master/img/null_alert.PNG" width="800px" height="300px">

## 비어있는 값
```
javaScript를 이용하여 input의 value가 비어있을 경우 alert를 나타내도록 작성하였습니다.
```

<img src="https://github.com/yoonjaesub/test02/blob/master/img/idcheck.PNG" width="800px" height="300px">

## 중복검사
```
아이디 값을 넣고 중복검사 버튼을 누르면
새창이 나타나서 중복검사를 실행 할 수 있도록 하였습니다.
javaScript의 window.open 기능을 이용하였으며, 링크부분에 input(아이디) 값을 가져갈 수 있도록 getElementById + value를 사용하였습니다.
```

<img src="https://github.com/yoonjaesub/test02/blob/master/img/idcheck_2.PNG" width="800px" height="300px">

## 중복검사2
```
별도의 boolean 타입을 선언해놓고,
Select where문을 이용하여 중복검사창에 입력된 아이디값과 동일한 아이디가 있는지 확인하였습니다.
이후 if문을 사용하여 아이디가 있을 경우 false를 반환하고, 사용가능할 경우 true를 반환하도록 하였습니다.
```

<img src="https://github.com/yoonjaesub/test02/blob/master/img/search.PNG" width="800px" height="300px">

## 회원목록
```
회원 목록 페이지 입니다.
데이터 베이스 내 데이터들을 나타내도록 하였습니다 Select문 사용
또한 회원의 아이디를 클릭하면 회원 정보를 수정하는 페이지로 이동하도록 하였습니다.
```

<img src="https://github.com/yoonjaesub/test02/blob/master/img/edit.PNG" width="800px" height="300px">

## 회원 정보 수정
```
회원 정보 수정 화면입니다.
아이디 값을 경우 readonly값을 부여하여 변경이 불가능하도록 작성하였으며
select 문을 이용하여 해당 회원의 데이터를 기본값으로 갖고있도록 하였습니다.
이후 변경을 희망하는 값을 작성 후 버튼을 누르면 update문을 통해 갱신되도록 작성하였습니다.
```

<img src="https://github.com/yoonjaesub/test02/blob/master/img/daechul.PNG" width="800px" height="300px">

## 회원 대출 조회
```
대출조회 화면입니다.
Join을 이용하여 대출정보와 회원정보를 나타내도록 작성하였습니다.
```

<img src="https://github.com/yoonjaesub/test02/blob/master/img/booklist.PNG" width="800px" height="300px">

## 도서목록 조회
```
도서목록 조회 화면입니다.
select 문을 통해 데이터베이스내 데이터를 나타내도록 작성 하였습니다.
```

### 2020/11
