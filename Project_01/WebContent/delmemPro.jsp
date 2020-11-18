<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 회원탈퇴처리</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	try{
		conn = DBcon.getConnection();
		String sql = "delete from custom_tbl where custid = ?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, (String) session.getAttribute("custid"));
		rs = pstmt.executeQuery();
		session.invalidate();
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
alert("회원탈퇴가 정상적으로 처리되었습니다.");
location.href = "index.jsp";
</script>
</body>
</html>