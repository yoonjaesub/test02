<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 회원정보변경 처리</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	try{
		conn = DBcon.getConnection();
		String sql = "update custom_tbl set password=?, author=?, goods=?, phone=?, email=?, area=? where custid=? ";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("pwd"));
		pstmt.setString(2, request.getParameter("author"));
		pstmt.setString(3, request.getParameter("goods"));
		pstmt.setString(4, request.getParameter("phone"));
		pstmt.setString(5, request.getParameter("email"));
		pstmt.setString(6, request.getParameter("area"));
		pstmt.setString(7, (String) session.getAttribute("custid"));
		pstmt.executeQuery();
		
	}catch(Exception e) {
		System.out.println("DB Connection error : " + e);
	}finally{
		try{
			if(pstmt!=null) pstmt.close();
			if(conn !=null) conn.close();
			%>
			<script>
			alert("정보 변경이 완료되었습니다. 다시 로그인 해주세요");
			location.href = "login.jsp";
			</script>
			<%session.invalidate();
		}catch(Exception e) {
			System.out.println("DB Close error : " + e);
		}
	}
%>
</body>
</html>