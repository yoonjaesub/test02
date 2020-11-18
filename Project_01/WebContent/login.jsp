<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 로그인페이지</title>
<link rel="stylesheet" href="./css/main.css" />
<style>
	.content {width: 100%; height: 550px; padding-top: 200px;}
	.content h1 {text-align: center;}
	.tb { width: 30%; height: 300px; margin: 0 auto; margin-top: 50px; padding-left: 45px;}
	.tb input { width: 300px; height: 50px; margin-left: 50px; border-radius: 15px; text-align: center;}
	#login_btn {width: 450px; height: 50px; border: none; font-weight: bold; border-radius: 25px; background-color: #eee;}
	#login_btn:hover {background-color: #aaa;}
	
	.joinbox {margin: 0 auto; height: 100px; width: 450px;}
	.joinbox li {float: left; margin-left: 30px;}
	.joinbox li a {font-size: 12px; color: black;}
	.joinbox li a:hover {font-weight: bold; text-decoration: underline;}
</style>
</head>
<body>
<%@ include file ="index_header.jsp" %>
<section class="content">
	<h1>로그인</h1>
	<form action="loginPro.jsp" name="form1" id="form1" method="get">
		<table class="tb">
			<tbody>
				<tr>
					<th><label for="custid">아이디</label></th>
					<td><input type="text" name="custid" id="custid" /></td>
				</tr>
				<tr>
					<th><label for="password">비밀번호</label></th>
					<td><input type="password" name="password" id="password" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" id="login_btn">로그인</button>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	<script>
	var form = document.form1;
	var login_btn = document.getElementById("login_btn");
	var custid = form.custid;
	var password = form.password;
	
	login_btn.addEventListener("click",function(){
		if(custid.value==""){
			alert("아이디가 입력되지 않았습니다.");
			custid.focus();
			return;
		}
		if(password.value==""){
			alert("비밀번호가 입력되지 않았습니다.");
			password.focus();
			return;
		}
		if(custid.value!="" && password.value!=""){
			form.submit();
		}
	})
	</script>
	<ul class="joinbox">
		<li><a href="join.jsp">신규회원가입</a></li>
		<li><a href="">아이디/비밀번호찾기</a></li>
		<li><a href="">개인정보처리방침</a></li>
	</ul>
</section>
<%@ include file ="index_footer.jsp" %>