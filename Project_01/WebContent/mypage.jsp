<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 마이페이지</title>
<link rel="stylesheet" href="./css/main.css" />
<style>
.content {width: 100%; height: 1000px; padding-top: 130px;}
.mybox {width: 1280px; height: 600px; margin: 0 auto; margin-top: 80px; text-align: center;}
.mybox table {float: right; width: 880px; height: 80%;}
.mybox table th, td {border: 1px solid #333; text-align: center;}
.mybox button { width: 150px; height: 50px; margin: 30px; border: 1px solid #ddd; background-color: white;}
.mybox button:hover { background-color: #eee;}
.profile {width: 398px; height: 80%; float: left; text-align: center; }
.profile img {width: 200px; height: 200px; display: block; margin: 100px; border-radius: 100px; margin-bottom: 50px; border: 1px solid #eee;}
.profile button { width: 150px; height: 50px; border: none; background-color: white; font-weight: bold; border: 1px solid #ddd;}
.profile button:hover {background-color: #eee;}
</style>
</head>
<body>
<%@ include file ="index_header.jsp" %>
<div class="content">
	<div class="mybox">
		<div class="profile">
			<img src="./img/profile.png" alt="" />
			<button type="button">프로필사진 변경</button>
		</div>
		<table>	
		<%  Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs;
			String custid, author, goods, phone, email, area, pwd;
	
			try{
				conn = DBcon.getConnection();
				String sql = "select custid, author, goods, phone, email, area from custom_tbl where custid=?";
		
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, (String) session.getAttribute("custid"));
				rs = pstmt.executeQuery();
		
				while(rs.next()) {
					custid = rs.getString("custid");
					author = rs.getString("author");
					goods = rs.getString("goods");
					phone = rs.getString("phone");
					email = rs.getString("email");
					area = rs.getString("area");
		%>
		<tr><th>아이디</th><td><%=custid %></td></tr>
		<tr><th>성 명</th> <td><%=author %></td></tr>
		<tr><th>관심상품</th> <td><%=goods %></td></tr>
		<tr><th>연락처</th> <td><%=phone %></td></tr>
		<tr><th>이메일</th> <td><%=email %></td></tr>
		<tr><th>주소</th> <td><%=area %></td></tr>	
		<%		}	
			}catch(Exception e) {
				System.out.println("DB Connection error : " + e);
			}finally{
				try{
					if(pstmt !=null) pstmt.close();
					if(conn !=null) conn.close();
				}catch(Exception e) {
					System.out.println("DB Close error : " + e);
				}
			}
		%>
		</table>
		<button type="button" id="editmem">회원정보수정</button>
		<button type="button" id="delmem">회원탈퇴</button>
		<script>
		var editmem = document.getElementById("editmem");
		editmem.addEventListener("click",function(){
			location.href = "edit.jsp";
		});
		
		var delmem = document.getElementById("delmem");
		delmem.addEventListener("click",function(){
			alert("회원을 탈퇴하시겠습니까?");
			location.href = "delmem.jsp";
		});
		</script>
	</div>	
</div>
<%@ include file ="index_footer.jsp" %>