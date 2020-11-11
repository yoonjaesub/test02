<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Test2.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<%@ include file ="admin_header.jsp" %>
<style>
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
.ft {position: static;}
</style>
</head>
<body>
<%@ include file="admin_nav.jsp" %>
<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">도서목록 조회</h2>
		<div class="main_help">
			<table border="1" cellpadding="10" class="tb">
				<thead>
					<tr>
						<th class="bookno">도서코드</th>
						<th class="author">저자</th>
						<th class="bookname">도서이름</th>
						<th class="st">상태</th>
					</tr>
				</thead>
				<tbody>
				<%
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs;
				String bookno, author, bookname, st;
				String status;
				
				try{
					conn = DBcon.getConnection();
					String sql = "select a.bookno, a.author, a.bookname, status ";
					sql += "from bookinfo_tbl a LEFT OUTER JOIN reservation_tbl b ON a.bookno = b.bookno order by a.bookno asc";
					
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					while(rs.next()){
						bookno = rs.getString("bookno");
						author = rs.getString("author");
						bookname = rs.getString("bookname");
						status = rs.getString("status");
						if(status == null) {
							st = "";
						}else if("1".equals(status)){
							st = "대출";
						}else {
							st = "반납";
						}
						%>
						<tr>
							<td class="bookno"><%=bookno %></td>
							<td class="author"><%=author %></td>
							<td class="bookname"><%=bookname %></td>
							<td class="st"><%=st %></td>
						</tr>
						<% 
						}
						%>
				</tbody>
			</table>
			<%
				}catch(Exception e){
					System.out.println("DB Connection error :" + e);
				
			%>
			<script>
			alert("데이터베이스 연결이 실패되어 회원정보 조회 작업이 완료되지 못했습니다.");
			location.href = "memberIns.jsp";
			</script>
			<%
				}finally{
					try{
						if(pstmt!=null) pstmt.close();
						if(conn!=null) conn.close();
					}catch(Exception e){
						System.out.println("DB Close error : " +e );
					}
				}
			%>
		</div>
	</section>
</main>
<%@ include file = "admin_footer.jsp" %>