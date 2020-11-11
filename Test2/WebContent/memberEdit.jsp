<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Test2.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<%@ include file = "admin_header.jsp" %>
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
<%@ include file = "admin_nav.jsp" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	String p_id = request.getParameter("p_id");
	String p_pw, c_name, c_email, c_tel;
	
	try{
		conn = DBcon.getConnection();
		String sql = "select * from custom_01 where p_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("p_id"));
		rs = pstmt.executeQuery();
		while(rs.next()) {
			p_pw = rs.getString("p_pw");
			c_name = rs.getString("c_name");
			c_email = rs.getString("c_name");
			c_tel = rs.getString("c_tel");
			%>
			<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">도서관 회원정보 수정</h2>
		<div class="main_help">
			<form action="memberEditPro.jsp" name="register1" method="get" id="register1">
				<table class="tb" border="1">
					<tbody>
						<tr>
							<th><label for="p_id">회원ID</label></th>
							<td><input type="text" name="p_id" id="p_id" value="<%=p_id%>" readonly/></td>
						</tr>
						<tr>
							<th><label for="p_pw">비번</label></th>
							<td><input type="password" name="p_pw" id="p_pw" value="<%=p_pw%>"/></td>
						</tr>
						<tr>
							<th><label for="c_name">회원명</label></th>
							<td><input type="text" name="c_name" id="c_name" value="<%=c_name%>"/></td>
						</tr>
						<tr>
							<th><label for="c_email">회원 이메일</label></th>
							<td><input type="text" name="c_email" id="c_email" value="<%=c_email%>"/></td>
						</tr>
						<tr>
							<th><label for="c_tel">연락처</label></th>
							<td><input type="text" name="c_tel" id="c_tel" value="<%=c_tel%>"/></td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="button" id="submit_btn">수 정</button>
								<button type="button" id="search_btn">조 회</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
			<script>
			var form = document.register1;
			var submit_btn = document.getElementById("submit_btn");
			var search_btn = document.getElementById("search_btn");
			var p_pw = form.p_pw;
			var c_name = form.c_name;
			var c_email = form.c_email;
			var c_tel = form.c_tel;
			
			submit_btn.addEventListener("click",function(e){
				if(p_pw.value=="") {
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
				if(p_pw.value!="" && c_name.value!="" && c_email.value!="" && c_tel.value!=""){
					form.submit();
				}
			});
			search_btn.addEventListener("click",function(){
				location.href = "memberList.jsp";
			});
			</script>
		</div>
	</section>
</main>
<%
		}
	}catch(Exception e) {
		System.out.println("데이터베이스 연결이 되지 않아 회원정보가 로딩되지 않았습니다. : + e");
	}finally {
		try{
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch(Exception e) {
			System.out.println("DB Close error : " + e);
		}
	}
%>
<%@ include file="admin_footer.jsp" %>