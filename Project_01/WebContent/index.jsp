<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="Project.DBcon" %>
<%@ page import="java.sql.*, java.text.*, java.util.*, java.lang.*, java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/main.css" />
<meta charset="UTF-8">
<title>Project_01</title>
<style>
	    .content {width: 100%; height: 2500px; padding-top: 130px;}
        .ban{background-image: url("./img/ban.jpg"); width: 100%; height: 600px; background-repeat: no-repeat; background-size: cover;}

        .phone {clear: both; position: relative; width: 90%; height: 800px; margin: 0 auto; margin-top: 50px;
                background-image: url(./img/appdownload_bg.jpg); background-repeat: no-repeat; background-size: cover;}
        .phone p {margin-left: 300px;}
        .phone p:first-child {padding-top: 250px;}
        .phone img {margin-left: 70%; z-index: 1; position: absolute; top: 170px;}
        .mob {width: 390px; height: 580px; position: absolute; right: 108px; top: 227px; z-index: 6;}
        .mob ul {width: 100%; height: 100%;}
        .mob ul li {float: left; width: 100%; height: 100%; background-repeat: no-repeat; margin-top: 30px; position: absolute; z-index: 17;}

        .mob1 {background-image: url(./img/mob_01.jpg); opacity: 1; }
        .mob2 {background-image: url(./img/mob_02.jpg); opacity: 0; }
        .mob3 {background-image: url(./img/mob_03.jpg); opacity: 0; }
        .mob4 {background-image: url(./img/mob_04.jpg); opacity: 0; }
        .mob5 {background-image: url(./img/mob_05.jpg); opacity: 0; }


        .maincon {width: 90%; margin: 0 auto; height: 1000px; margin-top: 50px;}
        .maincon ul { width: 40%; height: 30%; margin-left: 100px; margin-top: 20px; float: left;}
        .maincon ul li {width: 45%; float: left; height: 90%; margin: 15px;}
        .maincon ul li:first-child {box-shadow: 0.4em 0.4em 0.9em;}
        .maincon ul li p { margin-top: 20px; text-align: center; font-weight: bold; font-size: 24px;}
        .maincon ul li a {display: block; width: 150px; height: 40px; border: 1px solid #999; text-align: center; line-height: 40px; font-size: 14px; color: black;
                            margin-left: 70px; margin-top: 20px; border-radius: 20px;}
        .maincon ul li a:hover {background-color: #ddd;}    
        .mctit { font-size: 14px; text-align: center; margin-top: 50px; display: block; font-weight: bold;}
        #mc1 {background-image: url(./img/maincon1.jpg); background-repeat: no-repeat; background-size: cover;}
        #mc2 {background-image: url(./img/maincon2.jpg); background-repeat: no-repeat; background-size: cover;}
        #mc3 {background-image: url(./img/maincon3.jpg); background-repeat: no-repeat; background-size: cover;}
        #mc4 {background-image: url(./img/maincon4.jpg); background-repeat: no-repeat; background-size: cover;}
        #mc5 {background-image: url(./img/maincon5.jpg); background-repeat: no-repeat; background-size: cover;}
        #mc6 {background-image: url(./img/maincon6.jpg); background-repeat: no-repeat; background-size: cover;}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./js/ban.js"></script>
</head>
<body>
<%@ include file = "index_header.jsp" %>
    <section class="content">
        <div class="ban"></div>
        <div class="phone">
            <p class="boldtxt">차별화된 혜택의 시작</p>
            <p class="boldtxt">YJS 모바일 앱</p>
            <p>앱만 있으면 쇼핑에 필요한 모든 것을 한번에!!</p>
            <p>관심있는 브랜드와 상품까지 알아서 추천해주는 쇼핑컨시어지 서비스를 경험해보세요.</p>
            <img src="./img/mockup.png" alt="">
            <div class="mob">
                <ul id="mob_box">
                    <li class="mob1"></li>
                    <li class="mob2"></li>
                    <li class="mob3"></li>
                    <li class="mob4"></li>
                    <li class="mob5"></li>
                </ul>
            </div>
        </div>
        <div class="maincon">
            <ul>
                <li id="mc1"></li>
                <li>
                    <span class="mctit">Food's</span>
                    <p>여섯시 오븐</p>
                    <span style="font-size: 12px;">정직한 재료와 시간이 만들어낸 갓 구운 빵과 음식으로 건강한 하루를 나누는 크래프트 아틀리에 여섯시오븐입니다.</span>
                    <a href="#">바로가기↗</a>
                </li>
            </ul>
            <ul>
                <li id="mc2"></li>
                <li>
                    <span class="mctit">MAGAZINE</span>
                    <p>11월호</p>
                    <span style="font-size: 12px; margin-left: 100px;">어느 토요일의 취향</span>
                    <a href="#">바로가기↗</a>
                </li>
            </ul>
            <ul>
                <li id="mc3"></li>
                <li>
                    <span class="mctit">Wedding</span>
                    <p>결혼준비는 역시,</p>
                    <span style="font-size: 12px;">YJS가 보증하는 고객맞춤 웨딩서비스로 고객님의 설레이는 출발을 응원합니다.</span>
                    <a href="#">바로가기↗</a>
                </li>
            </ul>
            <ul>
                <li id="mc4"></li>
                <li>
                    <span class="mctit">Home</span>
                    <p>계절에 맞는 홈 인테리어</p>
                    <span style="font-size: 12px;">쌀쌀한 가을, 포근한 분위기의 인테리어로 나만의 공간을 꾸며보세요.</span>
                    <a href="#">바로가기↗</a>
                </li>
            </ul>
            <ul>
                <li id="mc5"></li>
                <li>
                    <span class="mctit">Read</span>
                    <p>바쁜 일상속, 작은 이야기</p>
                    <span style="font-size: 12px;">지식은 돈으로 살 수 없지만, 책은 돈으로 살 수 있답니다.</span>
                    <a href="#">바로가기↗</a>
                </li>
            </ul>
            <ul>
                <li id="mc6"></li>
                <li>
                    <span class="mctit">Time</span>
                    <p>허전한 그의 손목에,</p>
                    <span style="font-size: 12px;">정품인증 브랜드 상품과 국내 최장기간 무상 A/S 케어 서비스를 책임집니다.</span>
                    <a href="#">바로가기↗</a>
                </li>
            </ul>
        </div>
    </section>
<%@ include file="index_footer.jsp" %>