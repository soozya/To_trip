<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="css/main2.css" rel="stylesheet">
 <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/main1.css" rel="stylesheet">
 <script src="js/bootstrap.min.js"></script>
</head>
<body>
  <div id="top">
	<header class="title text-center">
	  <a href="main.jsp">함께 여행</a>
	</header>
	<div class="dv1 text-left"><!-- 로그인 -->
	  <ul> 
		<li><a href="login.jsp">Login</a></li>
		<li><a href="#">Join</a></li>
		<li><a href="#">My Page</a></li>
		<li><a href="#">고객센터</a></li>
	  </ul> <p>
	</div>
  </div><!-- <div id="top"> -->
  
  <div id="main1"> <!-- 메뉴1 탭+지역까지 -->
	<div class="f1">
	  <ul class="list nav nav-justified">
		<li><a href="#">계절별</a>
		  <ul>
			<li><a href="#">봄</a></li>
			<li><a href="#">여름</a></li>
			<li><a href="#">가을</a></li>
			<li><a href="#">겨울</a></li>
		  </ul>
		</li>
		<li><a href="#">테마별</a>
		  <ul>
			<li><a href="#">힐링</a></li>
			<li><a href="#">관광</a></li>
			<li><a href="#">맛집투어</a></li>
			<li><a href="#">액티비티</a></li>
		  </ul>
		</li>
		<li><a href="#">일행별</a>
		  <ul>
			<li><a href="#">혼자여행</a></li>
			<li><a href="#">가족여행</a></li>
			<li><a href="#">우정여행</a></li>
			<li><a href="#">커플여행</a></li>
			<li><a href="#">단체여행</a></li>
		  </ul>
		</li>
		<li><a href="#">렌트카예약</a></li>
		<li><a href="#">EVENT</a></li>
		<li><a href="list.do">커뮤니티</a></li>
	  </ul>
	</div> <!-- <div class="f1"> -->
  </div>
</body>
</html>