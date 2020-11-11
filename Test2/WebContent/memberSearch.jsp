<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Test2.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<%@ include file = "admin_header.jsp" %>
<style>
.main_help {width: 960px; margin: 25px auto; font-size: 14px;}
.main_help ol {padding-top: 5px;}
.tb { display: table; border:1; width: 960px;}
.tb tr { display: table-row;}
.tb td, .tb th { display: table-cell; padding: 10px;}
button { display: block; float: left; width: 120px; line-height: 36px; height: 36px; text-align: center; margin-right: 25px; margin-left: 25px;
		border-radius: 5px; background-color: #999; color:#fff;}
button:first-child {margin-left: 300px;}
input, select { border:1px solid #999; line-height: 24px; padding-left: 5px;}
</style>
</head>
<body>
<%@ include file = "admin_nav.jsp" %>
<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">회원대출조회</h2>
		<div class="main_help">
			<table class="tb" border="1" cellpadding="10">
				<thead>
					<tr>
						<th class="p_id">회원 아이디</th>
						<th class="c_name">회원성명</th>
						<th class="cnt">대출건수</th>
						<th class="status">대출상태</th>
					</tr>
				</thead>
				<tbody>
				<%
				request.setCharacterEncoding("utf-8");
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs;
				String p_id, c_name, status;
				int cnt, st;
				
				try{
					conn = DBcon.getConnection();
					String sql = "select a.p_id, a.c_name, count(b.custname) as cnt, min(status) as st ";
					sql += "from custom_01 a ";
					sql += "JOIN reservation_tbl b ON a.p_id = b.custname ";
					sql += "group by (a.p_id, a.c_name) ";
					sql += "order by cnt desc";
					
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					while(rs.next()) {
						p_id = rs.getString("p_id");
						c_name = rs.getString("c_name");
						cnt = rs.getInt("cnt");
						status = rs.getString("st");
						if(status == null) {
							status = "";
						}else if("1".equals(status)){
							status = "대출";
						}else {
							status="반납";
						}
						%>
						<tr>
							<td class="p_id"><%=p_id %></td>
							<td class="c_name"><%=c_name %></td>
							<td class="cnt"><%=cnt %></td>
							<td class="status"><%=status %></td>
						</tr>
						<%
					}
					%>
				</tbody>
			</table>
			<%
				}catch(Exception e) {
					System.out.println("DB Connection error : " + e);
			%>
			<script>
			alert("데이터베이스 연결이 실패되어 회원매출정보 조회 작업이 완료되지 못했습니다.");
			location.href = "memberIns.jsp";
			</script>
			<%
			}finally {
				try{
					if(pstmt!=null) pstmt.close();
					if(conn!=null) conn.close();
				}catch(Exception e) {
					System.out.println("DB Close error : " +e);
				}
			}
				%>
		</div>
	</section>
</main>
</body>
</html>