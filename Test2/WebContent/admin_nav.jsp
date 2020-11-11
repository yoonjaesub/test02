<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<style>
* {margin: 0; padding: 0;}
a {text-decoration: none;}
.hd { background-color: #999; width: 100%; height: 100px; text-align: center;}
.hd h2 {line-height: 100px;}
.gnb {width: 100%; background-color: #666; height: 50px;}
.gnb ul {width: 100%; list-style: none;}
.gnb li { float: left;}
.gnb li a {line-height: 50px; color: white; margin: 20px;}
.ft {width: 100%; height: 100px; background-color: #999;}
.copyright { text-align: center; line-height: 100px; color: white; font-size: 16px; font-weight: bold;}
</style>
<header class="hd">
	<h2 class="tit">도서관 도서관리 ver 1.0</h2>
</header>
<nav class="gnb">
	<ul>
		<li><a href="memberIns.jsp">회원등록</a></li>
		<li><a href="memberList.jsp">회원목록조회/수정</a></li>
		<li><a href="memberSearch.jsp">회원대출 조회</a></li>
		<li><a href="bookList.jsp">도서목록 조회</a></li>
		<li><a href="index.jsp">홈으로</a></li>
	</ul>
</nav>