<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<input type="hidden" name="uid" id="uid">
<%
String uid = (String) session.getAttribute("custid");
String password = (String) session.getAttribute("password");

%>
<div class="wrap">
    <header class="hd">
    <div class="searchbox">
    	<button id="close_btn"><img src="./img/close.png" alt="" /></button>
    	<h1>찾고싶은 상품이나 궁금한 점을 검색해주세요</h1>
    	<input type="text" id="search_txt" name="search_txt" />
    	<button type="button" id="search_click" name="search_click">찾기</button>
    </div>
        <ul>
            <li><a href="index.jsp" id="logo"></a></li>
  			<%if(uid!=null){ %>
            <li><span id="logout" style="cursor: pointer;">로그아웃</span></li>	
            <li><span id="mypage" style="cursor: pointer;">마이페이지</span></li>
	            <script>
	            var logout = document.getElementById("logout");
	            logout.addEventListener("click",function(){
	            	 	
	            		location.href = "logout.jsp";
	            		/* session.removeAttribute("custid");
	            		session.removeAttribute("password"); */
	            		/* session.removeAttribute("logcon"); */
	            	
	            	
	            });
	            
	            var mypage = document.getElementById("mypage");
	            mypage.addEventListener("click",function(){
	            	window.location.href = "http://localhost:8090/mypage.jsp";
	            });
	            </script>
          <%}else{ %>
            <li><a href="login.jsp">로그인</a></li>
            <li><a href="join.jsp">회원가입</a></li>
           <%} %>
            <li><span class="search" style="cursor: pointer;"></span></li>
        </ul>
    </header>
    <nav class="gnb">
        <ul>
            <li id="company">Company
                <a href="companyInst.jsp">회사소개</a>
                <a href="">오시는길</a>
                <a href="">연혁</a>
                <a href="">조직</a>
            </li>
            <li id="product">Product
                <a href="">화장품</a>
                <a href="">신발</a>
                <a href="">가방</a>
                <a href="">점퍼</a>
                <a href="">향수</a>
                <a href="">시계</a>
                <a href="">란제리</a>
                <a href="">기타</a>
            </li>
            <li id="service">Service
                <a href="">온라인 상담 서비스</a>
                <a href="">원격 상담 서비스</a>
                <a href="">전화 상담 서비스</a>
                <a href="">문자 상담 서비스</a>
            </li>
            <li id="community">Community
                <a href="">공지사항</a>
                <a href="">자주하는 질문</a>
                <a href="">제품후기</a>
            </li>
        </ul>
    </nav>
</div>