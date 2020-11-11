<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Test2.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서관 회원 등록 처리</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	String passon = request.getParameter("passon");
	try{
		conn = DBcon.getConnection();
		String sql = "insert into custom_01 values(?, ?, ?, ?, ?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("p_id"));
		pstmt.setString(2, request.getParameter("p_pw"));
		pstmt.setString(3, request.getParameter("c_name"));
		pstmt.setString(4, request.getParameter("c_email"));
		pstmt.setString(5, request.getParameter("c_tel"));
		pstmt.executeQuery();
	}catch(Exception e){
		System.out.println("DB Connection error : " + e);
	}finally{
		try{
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch(Exception e) {
			System.out.println("DB Close error : " + e);
		}
	}
%>
<script>
location.href = "index.jsp";
</script>
</body>
</html>