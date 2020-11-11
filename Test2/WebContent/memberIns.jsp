<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Test2.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<%@ include file ="admin_header.jsp" %>
<style>
.main_help {width: 960px; margin: 25px auto; font-size: 14px;}
.main_help ol {padding-top: 5px;}
.tb { display: table; border:1; width: 960px;}
.tb tr { display: table-row;}
.tb td, .tb th { display: table-cell; padding: 10px;}
button { display: block; float: left; width: 120px; line-height: 36px; height: 36px; text-align: center; margin-right: 25px; margin-left: 25px;
		border-radius: 5px; background-color: #999; color:#fff;}
button:first-child {margin-left: 300px;}
input, select { border:1px solid #999; line-height: 24px; padding-left: 5px;}
</style>
</head>
<body>
<%@ include file="admin_nav.jsp" %>
<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">도서관 회원등록</h2>
		<div class="main_help">
			<form action="memberInsPro.jsp" name="register1" id="register1" method="get">
				<table class="tb" border="1">
					<tbody>
						<tr>
							<th><label for="p_id">회원ID</label></th>
							<td><input type="text" name="p_id" id="p_id" />
								<input type="button" name="con_btn" id="con_btn" value="중복확인" style="padding:3px 6px;" />
							</td>
						</tr>
						<tr>
							<th><label for="p_pw">비번</label></th>
							<td><input type="password" name="p_pw" id="p_pw" /></td>
						</tr>
						<tr>
							<th><label for="c_name">회원명</label></th>
							<td><input type="text" name="c_name" id="c_name"/></td>
						</tr>
						<tr>
							<th><label for="c_email">회원 이메일</label></th>
							<td><input type="text" name="c_email" id="c_email"/></td>
						</tr>
						<tr>
							<th><label for="c_tel">연락처</label></th>
							<td><input type="text" name="c_tel" id="c_tel" /></td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="button" id="submit_btn">등 록</button>
								<button type="button" id="search_btn">조 회</button>
							</td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" name="passon" id="passon" />
			</form>
			<script>
		
			var form = document.register1;
			var submit_btn = document.getElementById("submit_btn");
			var search_btn = document.getElementById("search_btn");
			var con_btn = document.getElementById("con_btn");
			var p_id = form.p_id;
			var p_pw = form.p_pw;
			var c_name = form.c_name;
			var c_email = form.c_email;
			var c_tel = form.c_tel;
			var passon = form.passon;
			
			con_btn.addEventListener("click",function(){
				if(p_id.value=="") {
					alert("아이디 입력란이 비어있습니다.");
					p_id.focus();
					return;
				} else {
					window.name = "parentForm";
					window.open("idcheck.jsp?p_id="+document.getElementById("p_id").value, "chkForm", "width=500, height=300, resizable = no, scrollbars = no");
				}
			});
			
			submit_btn.addEventListener("click", function(){
				if(passon.value!="ok"){
					alert("아이디에 대한 중복확인을 하지 않았습니다.");
					con_btn.focus();
					return;
				}
				if(p_id.value==""){
					alert("아이디가 입력되지 않았습니다.");
					p_id.focus();
					return;
				}
				if(p_pw.value==""){
					alert("비번이 입력되지 않았습니다.");
					p_pw.focus();
					return;
				}
				if(c_name.value==""){
					alert("회원명이 입력되지 않았습니다.");
					c_name.focus();
					return;
				}
				if(c_email.value==""){
					alert("회원 이메일이 입력되지 않았습니다.");
					c_email.focus();
					return;
				}
				if(c_tel.value==""){
					alert("연락처가 입력되지 않았습니다.");
					c_tel.focus();
					return;
				}
				if(passon.value=="ok" && p_id.value!="" && p_pw.value!="" && c_name.value!="" && c_email.value!="" && c_tel.value!="" ){
					form.submit();
				}
			});
			
			search_btn.addEventListener("click",function(){
				location.href = "memberSearch.jsp";
			});
			</script>
		</div>
	</section>
</main>
</body>
</html>