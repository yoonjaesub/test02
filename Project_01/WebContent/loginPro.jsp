<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YJS - 로그인 처리</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	String custid, password;

	try{
		conn = DBcon.getConnection();
		String sql = "select custid, password from custom_tbl where custid = ? and password = ?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, request.getParameter("custid"));
		pstmt.setString(2, request.getParameter("password"));
		rs = pstmt.executeQuery();
		if(rs.next()){
			custid = rs.getString("custid");
			password = rs.getString("password");
			session.setAttribute("custid", custid);
			session.setAttribute("password", password);
			
			
			if(custid.equals("admin") && password.equals("1234")){
				%>
				<script>
				alert("관리자로 로그인 하셨습니다. 환영합니다.");
				location.href = "admin_index.jsp";
				</script>
				<%} %>
				<script>
				<%-- document.getElementById("uid").value="<%=custid %>"; --%>
				alert("<%=custid%>님 로그인 하셨습니다. 환영합니다.");
				
				location.href = "index.jsp"; 
				</script>
			<%} else {	%>
			<script>
			alert("등록된 회원이 아닙니다.");
			window.history.back();
			</script>
			<%}
	}catch(Exception e) {
		System.out.println("DB Connection error : " + e);
	}finally{
		try{
			if(pstmt!=null) pstmt.close();
			if(conn !=null) conn.close();
		}catch(Exception e){
			System.out.println("DB Close error : " +e);
		}
	} 
%>
</body>
</html>