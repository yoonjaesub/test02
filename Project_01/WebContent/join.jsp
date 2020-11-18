<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 회원가입 페이지</title>
<link rel="stylesheet" href="./css/main.css" />
<style>
.content {padding-top: 200px;}
.content h1 { text-align: center;}
.content table {margin: 0 auto; width: 600px; height: 500px; margin-top: 50px; margin-bottom: 50px;}
.content table td {width: 200px;}
.content table th {width: 100px;}
.content input {width: 310px; height: 35px; text-align: center; margin-left: 30px; }
#join_btn { width: 500px; height: 50px; margin-left: 50px; border: 2px solid #eee; font-size: 18px; font-weight: bold; border-radius: 20px; background-color: white;}
#join_btn:hover {background-color: #eee; border: 2px solid #aaa;}
</style>
</head>
<body>
<%@ include file ="index_header.jsp" %>
<section class="content">
	<h1>회원가입</h1>
	<form action="joinPro.jsp" name="form1" id="form1" method="get">
		<table class="tb">
			<tr>
				<th><label for="custid">아이디</label></th>
				<td><input type="text" name="custid" id="custid"/></td>
			</tr>
			<tr>
				<th><label for="password">비밀번호</label></th>
				<td><input type="password" name="password" id="password" /></td>
			</tr>
			<tr>
				<th><label for="author">성명</label></th>
				<td><input type="text" id="author" name="author" /></td>
			</tr>
			<tr>
				<th><label for="goods">관심상품</label></th> 
				<td><input type="text" name="goods" id="goods" /></td>
			</tr>
			<tr>
				<th><label for="phone">전화번호</label></th>
				<td><input type="text" name="phone" id="phone"/></td>
			</tr>
			<tr>
				<th><label for="email">이메일</label></th>
				<td><input type="text" name="email" id="email" /></td>
			</tr>
			<tr>
				<th><label for="area">거주지역</label></th>
				<td><input type="text" name="area" id="area" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="button" id="join_btn">회원가입</button>
				</td>
			</tr>
		</table>
	</form>
	<script>
	var form = document.form1;
	var join_btn = document.getElementById("join_btn");
	var custid = form.custid;
	var password = form.password;
	var author = form.author;
	var goods = form.goods;
	var phone = form.phone;
	var email = form.email;
	var area = form.area;
	
	join_btn.addEventListener("click",function(){
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
		if(author.value==""){
			alert("성명이 입력되지 않았습니다.");
			author.focus();
			return;
		}
		if(goods.value==""){
			alert("관심상품이 입력되지 않았습니다.");
			goods.focus();
			return;
		}
		if(phone.value==""){
			alert("연락처가 입력되지 않았습니다.");
			phone.focus();
			return;
		}
		if(email.value==""){
			alert("이메일이 입력되지 않았습니다.");
			email.focus();
			return;
		}
		if(area.value==""){
			alert("거주지역이 입력되지 않았습니다.");
			area.focus();
			return;
		}
		if(custid.value!="" && password.value!="" && author.value!="" && goods.value!="" &&
				phone.value!="" && email.value!="" && area.value!=""){
			form.submit();
		}
	});
	</script>
</section>
<%@ include file ="index_footer.jsp" %>