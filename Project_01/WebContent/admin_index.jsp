<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 관리자 페이지</title>
<link rel="stylesheet" href="./css/admin_main.css" />
<style>
.content {width: 100%; clear: both; height: 300px; padding-top: 150px;}
</style>
</head>
<body>
<div class="wrap">
	<header class="hd">
		<ul>
			<li><a href="admin_index.jsp" id="logo"></a></li>
			<li>로그아웃</li>
		</ul>
	</header>
	<nav class="gnb">
		<ul>
			<li>회사관리
				<a href="">회사기본정보</a>
				<a href="">회사연혁관리</a>
				<a href="">지도관리</a>
				<a href="">조직관리</a>
			</li>
			<li>제품관리
				<a href="">제품목록 보기</a>
				<a href="">제품 등록</a>
				<a href="">제품 삭제</a>
				<a href="">제품 정보 수정</a>
				<a href="">판매 목록</a>
			</li>
			<li>서비스 관리
				<a href="">온라인 상담</a>
				<a href="">원격 상담</a>
				<a href="">전화 상담</a>
				<a href="">문자 상담</a>
			</li>
			<li>게시판 관리
				<a href="">공지사항 목록</a>
				<a href="">자주하는 질문 목록</a>
				<a href="">제품 후기 목록</a>
			</li>
			<li>기타 기능
				<a href="">DM 목록</a>
				<a href="">회원 목록/수정</a>
			</li>
		</ul>
	</nav>
</div>
<section class="content">
</section>
<%@ include file ="index_footer.jsp" %>