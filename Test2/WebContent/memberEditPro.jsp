<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.lang.*, java.text.*, java.net.*" %>
<%@ page import="Test2.DBcon" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서관 회원 정보수정 처리</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	String p_id = request.getParameter("p_id");
	
	System.out.println(p_id);
	try{
		conn = DBcon.getConnection();
		String sql = "update custom_01 set p_pw=?, c_name=?, ";
		sql+= "c_email=?, c_tel=? where p_id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("p_pw"));
		pstmt.setString(2, request.getParameter("c_name"));
		pstmt.setString(3, request.getParameter("c_email"));
		pstmt.setString(4, request.getParameter("c_tel"));
		pstmt.setString(5, request.getParameter("p_id"));
		pstmt.executeQuery();
	}catch(Exception e){
		System.out.println("DB Connection error : " + e);
	}finally{
		try{
			if(pstmt!=null)pstmt.close();
			if(conn!=null) conn.close();
			%>
			<script>
				alert("회원 정보 수정이 정삭적으로 완료되었습니다.");
				location.href = "memberList.jsp";
			</script>
			<%
		}catch(Exception e){
			System.out.println("DB Close error : " +e);
		}
	}
%>
</body>
</html>