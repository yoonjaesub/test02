<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 내 정보 수정</title>
<style>
.content { width: 100%; padding-top: 140px;}
#editbox { width: 700px; height: 800px; margin: 0 auto;}
#editbox ul {margin-top: 50px;}
#editbox ul li {font-size: 12px; color: red;}
#editbox table {width: 100%; height: 300px; margin-top: 50px;}
#editbox table input {width: 400px; height: 40px; text-align: center;}
#editbox table label {width: 400px; height: 30px; text-align: center; display: block;}
#editbox table th {width: 200px;}
#editbox table tr {display: block; margin-top: 20px;}
#edit_btn { width: 200px; height: 50px; display: block; margin: 0 auto; margin-top: 50px; border: 1px solid #ddd; background-color: white;}
#edit_btn:hover {background-color: #eee;}
</style>
<link rel="stylesheet" href="./css/main.css" />
</head>
<body>
<%@ include file = "index_header.jsp" %>
<section class="content">
	<form action="editPro.jsp" method="post" name="editbox" id="editbox">
		<ul>
			<li>* 변경하시고자 하는 내용을 입력 후 변경버튼을 눌러주세요.</li>
			<li>* 아이디는 변경이 불가능 하오니, 아이디 변경희망시 탈퇴 후 재가입 부탁드립니다.</li>
		</ul>
		<table>
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs;
			String custid, pwd, author, goods, phone, email, area;
			
			try{
				conn = DBcon.getConnection();
				String sql = "select * from custom_tbl where custid = ?";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, (String) session.getAttribute("custid"));
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					custid = rs.getString("custid");
					pwd = rs.getString("password");
					author =rs.getString("author");
					goods = rs.getString("goods");
					phone = rs.getString("phone");
					email = rs.getString("email");
					area = rs.getString("area");
				
		%>
			<tr>
				<th>아이디</th><td><label for=""><%=custid %></label></td>
			</tr>
			<tr>
				<th>비밀번호</th><td><input type="text" value="<%=pwd%>" name="pwd"/></td>
			</tr>
			<tr>
				<th>성명</th><td><input type="text" value="<%=author%>" name="author"/></td>
			</tr>
			<tr>
				<th>관심상품</th><td><input type="text" value="<%=goods%>" name="goods"/></td>
			</tr>
			<tr>
				<th>연락처</th><td><input type="text" value="<%=phone%>" name="phone"/></td>
			</tr>
			<tr>
				<th>이메일</th><td><input type="text" value="<%=email%>" name="email" /></td>
			</tr>
			<tr>
				<th>거주지</th><td><input type="text" value="<%=area%>" name="area"/></td>
			</tr>
			<%
			}
				}catch(Exception e){
					System.out.println("DB Connection error : " + e);
				}finally{
					try{
						if(pstmt!=null) pstmt.close();
						if(conn!=null) conn.close();
					}catch(Exception e){
						System.out.println("DB Close error : " + e);
					}
				}
				%>
		</table>
		<button type="submit" id="edit_btn">변경하기</button>
	</form>
</section>
<%@ include file = "index_footer.jsp" %>