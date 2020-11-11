<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.lang.*, java.text.*, java.util.*" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import="Test2.DBcon" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
</head>
<style>

</style>
<body>
<div id="wrap">
	<br />
	<div id="msg"></div>
	<strong style="font-size: 12px; color: gray;">아이디 중복체크</strong>
	<hr size="1" width="460"/>
	<br />
	<div id="chk">
		<form id="checkForm" name="checkForm">
			<input type="text" name="c_id" id="c_id" readonly/>
			<input type="button" value="중복확인" id="chk_btn" onclick="idCheck()" />
			<br />
			<br />
			<p></p>
			<div class="btn_grp">
				<input type="button" id="cancelBtn" value="취소"  onclick="window.close()" class="btn"/>
				&nbsp;&nbsp;
				<input type="button" value="사용하기" onclick="sendCheckValue()" id="useBtn" class="btn" />
			</div>
		</form>
	</div>
</div>
<script>
	<%
		request.setCharacterEncoding("utf-8");
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		boolean idck = false;
		String data, str;
	%>
	var chk_btn = document.getElementById("chk_btn");
	var use_btn = document.getElementById("useBtn");
	var id, msg;
	
	window.addEventListener("load",function loading() {
		/* location.href = "idcheck.jsp?p_id="+opener.document.register1.p_id.value; */
		document.getElementById("c_id").value= opener.document.register1.p_id.value;
	});
	chk_btn.addEventListener("click",function(){
		location.href = "idcheck.jsp?p_id="+document.getElementById("c_id").value; 
		
		id = document.getElementById("c_id").value;
		
		if(!id) {
			alert("아이디를 입력하지 않았습니다.");
			document.getElementById("c_id").focus();
			return;
		}else{
			<%
			String p_id = request.getParameter("p_id");
			try{
				conn = DBcon.getConnection();
				String sql = "select p_id from custom_01 where p_id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, p_id);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					data = rs.getString("p_id");
					idck = true;
				}
				if(idck){
					str = "사용이 불가능한 아이디입니다.";
				}else{
					str = "사용이 가능한 아이디입니다.";
				}
				%>
				alert("<%=str%>");
				<%
			}catch(Exception e) {
				System.out.println("ProductBean error : " + e);
			}finally{
				try{
					if(pstmt!=null) pstmt.close();
					if(conn!=null) conn.close();
				}catch(Exception e){
					System.out.println("DB Close error : "+e);
				}
			}
			%>
		}
	});
	
	// 사용하기 클릭 시 부모창으로 값전달
	use_btn.addEventListener("click",function(){
		//중복체크 체크 통과를 전달
		opener.document.register1.passon.value="ok";
		//중복체크한 사용 가능 id 값을 전달
		opener.document.register1.p_id.value = document.getElementById("c_id").value;
		self.close();
	})
	
	
</script>
</body>
</html>