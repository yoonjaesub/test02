<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Test2.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<%@ include file ="admin_header.jsp" %>
<style>
a { color: blue;}
.main_help { width: 960px; margin: 25px auto; font-size: 14px;}
.main_help ol {padding-top: 5px;}
.tb { display: table; border:1; width: 960px;}
.tb tr {display: table-row;}
.tb td, .tb th {display: table-cell; padding: 10px;}
button { display: block; float: left; width: 120px; line-height: 36px; height: 36px;
		text-align: center; margin-right: 25px; margin-left: 25px; border-radius: 5px;
		background-color: #999;}
button:first-child { margin-left: 300px;}
input, select { border: 1px solid #999; line-height: 24px; padding-left: 5px;}
</style>
</head>
<body>
<%@ include file ="admin_nav.jsp" %>
<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">회원목록조회/수정</h2>
		<div class="main_help">
			<table border="1" cellpadding="10" class="tb">
				<thead>
					<tr>
						<th class="p_id">회원아이디</th>
						<th class="c_name">회원명</th>
						<th class="c_email">회원이메일</th>
						<th class="c_tel">연락처</th>
					</tr>
				</thead>
				<tbody>
				<%
					DBcon db;
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs;
					String p_id, p_pw, c_name, c_email, c_tel;
					
					try{
						conn = DBcon.getConnection();
						String sql = "select * from custom_01";
						
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						
						while(rs.next()){
							p_id = rs.getString("p_id");
							p_pw = rs.getString("p_pw");
							c_name = rs.getString("c_name");
							c_email = rs.getString("c_email");
							c_tel = rs.getString("c_tel");
				%>
				<tr>
					<td class="p_id">
						<a href="memberEdit.jsp?p_id=<%=p_id%>"><%=p_id%></a>
					</td>
					<td class="c_name"><%=c_name %></td>
					<td class="c_email"><%=c_email %></td>
					<td class="c_tel"><%=c_tel %></td>
				</tr>
				<%
				}
				%>
				</tbody>
			</table>
			<%
					}catch(Exception e){
						System.out.println("DB Connection error : " +e);
			%>
			<script>
			alert ("데이터베이스 연결이 실패되어 회원정보 조회 작업이 완료되지 못했습니다.");
			location.href = "memberIns.jsp";
			</script>
			<%
					}finally{
						try{
							if(pstmt!=null) pstmt.close();
							if(conn!=null) conn.close();
						}catch(Exception e){
							System.out.println("DB Close error : " + e);
						}
					}
			%>
		</div>
	</section>
</main>
<%@ include file ="admin_footer.jsp" %>