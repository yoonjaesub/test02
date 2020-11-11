<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ include file ="admin_header.jsp" %>
<style>
.main_help { width: 90%; margin: 25px auto; font-size:14px;}
.main_help ol {padding-top: 5px;}
.content {width: 100%; height: 500px;}
.page_tit {text-align: center; margin-top: 20px;}
</style>
<meta charset="UTF-8">
</head>
<body>
<%@ include file ="admin_nav.jsp" %>
<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">도서관 회원관리 프로그램</h2>
		<div class="main_help">
			<h3 class="item_tit">도서관 회원정보와 회원대출정보 데이터베이스를 구축하고 도서관 회원관리 프로그램을 작성하는 프로그램이다.</h3>
			<br />
			<h3 class="item_tit">프로그램 작성 순서</h3>
			<br />
			<ol>
				<li>회원정보 테이블을 생성한다.</li>
				<li>대출정보 테이블을 생성한다.</li>
				<li>회원정보, 대출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</li>
				<li>회원정보 입력 화면프로그램을 작성한다.</li>
				<li>회원정보 조회 프로그램을 작성한다.</li>
				<li>회원대출정보 조회 프로그램을 작성한다.</li>
			</ol>
		</div>
	</section>
</main>
<%@ include file ="admin_footer.jsp" %>