<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 회원가입처리</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	try{
		conn = DBcon.getConnection();
		String sql = "insert into custom_tbl(custid, password, author, goods, phone, email, area)";
		sql += " values(?, ?, ?, ?, ?, ?, ?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("custid"));
		pstmt.setString(2, request.getParameter("password"));
		pstmt.setString(3, request.getParameter("author"));
		pstmt.setString(4, request.getParameter("goods"));
		pstmt.setString(5, request.getParameter("phone"));
		pstmt.setString(6, request.getParameter("email"));
		pstmt.setString(7, request.getParameter("area"));
		pstmt.executeQuery();
	}catch(Exception e){
		System.out.println("DB Connection error : "+e);
	}finally{
		try{
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch(Exception e){
			System.out.println("DB Close error : " + e);
		}
	}
%>
<script>
alert("회원가입이 정상적으로 처리되었습니다.");
location.href = "index.jsp";
</script>
</body>
</html>