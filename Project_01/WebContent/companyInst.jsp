<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/main.css" />
<meta charset="UTF-8">
<title>YJS - 회사소개</title>
<style>
.content {padding-top: 140px; width: 100%; height: 2000px;}
#bread { border-bottom: 1px solid #eee; width: 100%; height: 30px; margin-bottom: 20px; display: block;}
#bread ul li {float: left; margin-left: 50px;}
#bread ul li:after {content : ">"; padding-left: 50px;}
#bread ul li:last-child:after {content:none;}
#bread ul li a {color: black;}
.ban { width: 100%; height: 600px; background-image: url("./img/cominst_bg.jpg"); background-repeat: no-repeat; background-size: cover;}
.ban ul li {float: left;}
.ban_leftbox span {font-size: 70px; color: white; font-weight: bold;}
.ban_leftbox { width: 30%; height: 100px;  margin-top: 10%; margin-left: 200px;}
.ban_rightbox {width: 50%; height: 300px; margin-top: 5%; margin-left: 150px;}
.ban_rightbox p {color: white; font-size: 20px; margin-bottom: 100px;}

.content h1 { text-align: center; margin-top: 100px;} 

.brand {clear: both; width: 100%;}
.brand ul {width: 1280px; height: 800px; margin: 0 auto; margin-top: 50px;	}
.brand ul li {float: left; width: 233px; height: 236px; margin: 10px;}
.brand ul li a{width: 100%; height: 100%; display: block; box-shadow: 0.3em 0.3em 0.5em black;}
.brand ul li a img {width: 100%; height: 100%;}
.brand ul li a:hover {background-color: #333; box-shadow: 0.3em 0.3em 0.5em black; transition : 0.5s;}
</style>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./js/ban.js"></script>
<%@ include file = "index_header.jsp" %>
<section class="content">
	<breadcrumb id="bread">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="companyInst.jsp">Company</a></li>
			<li><a href="companyInst.jsp">회사소개</a></li>
		</ul>
	</breadcrumb>
	<div class="ban">
		<ul>
			<li class="ban_leftbox">
				<span>저희 YJS 몰은...</span>
			</li>
			<li class="ban_rightbox">
				<p>국내외 다양한 제품군과 브랜드가 입점해있어, 쇼핑의 모든것을 누리실 수 있습니다.</p>
				<p>고객님들께 최상의 서비스를 제공하기 위해 사소한 것 하나 하나 고객님의 말씀에 귀기울입니다.</p>
				<p>위생과 청결에 신경쓰며 하루 3회 방역을 실시합니다.</p>
			</li>
		</ul>
	</div>
	<h1>입점 브랜드</h1>
	<div class="brand">
		<ul>
			<li><a href=""><img src="./img/logo_AlexanderMcqueen_blk.png" onmouseover="this.src='./img/logo_AlexanderMcqueen.png'" onmouseout="this.src='./img/logo_AlexanderMcqueen_blk.png'" alt="AlexanderMcqueen"/></a></li>
			<li><a href=""><img src="./img/logo_BottegaVeneta_blk.png" onmouseover="this.src='./img/logo_BottegaVeneta.png'" onmouseout="this.src='./img/logo_BottegaVeneta_blk.png'" alt="BottegaVeneta" /></a></li>
			<li><a href=""><img src="./img/logo_burberry_blk.png" onmouseover="this.src='./img/logo_burberry.png'" onmouseout="this.src='./img/logo_burberry_blk.png'" alt="burberry" /></a></li>
			<li><a href=""><img src="./img/logo_Celine_blk.png" onmouseover="this.src='./img/logo_Celine.png'" onmouseout="this.src='./img/logo_Celine_blk.png'" alt="Celine" /></a></li>
			<li><a href=""><img src="./img/logo_chanel_blk.png" onmouseover="this.src='./img/logo_chanel.png'" onmouseout="this.src='./img/logo_chanel_blk.png'" alt="chanel" /></a></li>
			<li><a href=""><img src="./img/logo_Dior_blk.png" onmouseover="this.src='./img/logo_Dior.png'" onmouseout="this.src='./img/logo_Dior_blk.png'" alt="Dior" /></a></li>
			<li><a href=""><img src="./img/logo_Etro_blk.png" onmouseover="this.src='./img/logo_Etro.png'" onmouseout="this.src='./img/logo_Etro_blk.png'" alt="Etro" /></a></li>
			<li><a href=""><img src="./img/logo_Fendi_blk.png" onmouseover="this.src='./img/logo_Fendi.png'" onmouseout="this.src='./img/logo_Fendi_blk.png'" alt="Fendi" /></a></li>
			<li><a href=""><img src="./img/logo_Givenchy_blk.png" onmouseover="this.src='./img/logo_Givenchy.png'" onmouseout="this.src='./img/logo_Givenchy_blk.png'" alt="Givenchy" /></a></li>
			<li><a href=""><img src="./img/logo_gucci_blk.png" onmouseover="this.src='./img/logo_gucci.png'" onmouseout="this.src='./img/logo_gucci_blk.png'" alt="gucci" /></a></li>
			<li><a href=""><img src="./img/logo_hermes_blk.png" onmouseover="this.src='./img/logo_hermes.png'" onmouseout="this.src='./img/logo_hermes_blk.png'" alt="hermes" /></a></li>
			<li><a href=""><img src="./img/logo_Loewe_blk.png" onmouseover="this.src='./img/logo_Loewe.png'" onmouseout="this.src='./img/logo_Loewe_blk.png'" alt="Loewe" /></a></li>
			<li><a href=""><img src="./img/logo_louisvuitton_blk.png" onmouseover="this.src='./img/logo_louisvuitton.png'" onmouseout="this.src='./img/logo_louisvuitton_blk.png'" alt="louisvuitton" /></a></li>
			<li><a href=""><img src="./img/logo_salvatore-ferragamo_blk.png" onmouseover="this.src='./img/logo_salvatore-ferragamo.png'" onmouseout="this.src='./img/logo_salvatore-ferragamo_blk.png'" alt="salvatore-ferragamo" /></a></li>
			<li><a href=""><img src="./img/logo_TODS_blk.png" onmouseover="this.src='./img/logo_TODS.png'" onmouseout="this.src='./img/logo_TODS_blk.png'" alt="TODS" /></a></li>
			<li><a href=""><img src="./img/logo_Valentino_blk.png" onmouseover="this.src='./img/logo_Valentino.png'" onmouseout="this.src='./img/logo_Valentino_blk.png'" alt="TODS" /></a></li>
		</ul>
	</div>
</section>
<%@ include file="index_footer.jsp" %>
