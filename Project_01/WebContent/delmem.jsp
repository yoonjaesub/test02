<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 회원탈퇴</title>
<link rel="stylesheet" href="./css/main.css" />
<style>
.content {width: 100%; padding-top: 150px; text-align: center; z-index: 9;}
.content h1, h3 {margin-top: 50px;}
.notice { width: 600px; margin: 30px auto; font-weight: bold; text-align: center;}
.notice li {font-size: 14px; color: red;}
.content input {width: 300px; height: 40px; margin: 50px;}
#exit {display: block; width: 350px; height: 50px; margin: 0 auto; border: 1px solid #ddd; margin-bottom: 100px; background-color: white;}
#exit:hover {background-color: #eee;}
</style>
</head>
<body>
<%@ include file = "index_header.jsp" %>
<section class="content"> 
	<h1>회원 탈퇴</h1>
	<h3>그동안 이용해 주셔서 감사합니다.</h3>
	<ul class="notice">* 안내사항
		<li>회원 탈퇴시 회원님의 개인정보 및 지금까지의 거래내역이 소멸됩니다.</li>
		<li>보유하신 쿠폰 혹은 포인트가 소멸되오며 복구 혹은 재지급은 불가능합니다.</li>
		<li>비밀번호를 재입력하시면 회원탈퇴가 진행됩니다.</li>
	</ul>
	<form action="delmemPro.jsp" method="get" id="exitform" name="exitform">
	<label for="password">비밀번호</label><input type="text" name="password" id="password"/>
	<button type="button" id="exit">회원탈퇴</button>
	<script>
	var form = document.getElementById("exitfoem");
	var pwd = document.getElementById("password");
	var btn = document.getElementById("exit");
	btn.addEventListener("click",function(){
		if(pwd.value == '<%=password%>') {
			document.exitform.submit();
		}else{
			alert("비밀번호가 일치하지 않습니다.");
			pwd.focus();
			pwd.value = "";
		}
	});
	
	</script>
	</form>
</section>
<%@ include file = "index_footer.jsp" %>