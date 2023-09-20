<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>::함께 여행::</title>
 <link rel="stylesheet" href="css/main2.css">
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/main1.css">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
 <link rel="stylesheet" href="/resources/demos/style.css">
 <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
 <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 <script src="js/jquery.cycle2.js"></script>
 <script src="js/main.js"></script>

</head>

 <!-- main1 -->
<body>
 <jsp:include page="top.jsp"/>
  
	<p>
	<div class="f2"> <!-- 메뉴2 지역선택 -->
	  <ul class="ar1">
	    <li class="dv3"><b>| 지역 | </b></li>
		<li><a href="#">&nbsp;서울&nbsp;</a></li>
		<li><a href="#">&nbsp;경기&nbsp;</a></li>
		<li><a href="#">&nbsp;강원&nbsp;</a></li>
		<li><a href="#">&nbsp;인천&nbsp;</a></li>
		<li><a href="#">&nbsp;전남&nbsp;</a></li>
		<li><a href="#">&nbsp;전북&nbsp;</a></li>
		<li><a href="#">&nbsp;광주&nbsp;</a></li>
		<li><a href="#">&nbsp;경남&nbsp;</a></li>
		<li><a href="#">&nbsp;경북&nbsp;</a></li>
		<li><a href="#">&nbsp;대구&nbsp;</a></li>
		<li><a href="#">&nbsp;부산&nbsp;</a></li>
		<li><a href="#">&nbsp;울산&nbsp;</a></li>
		<li><a href="#">&nbsp;충남&nbsp;</a></li>
		<li><a href="#">&nbsp;충북&nbsp;</a></li>
		<li><a href="#">&nbsp;대전&nbsp;</a></li>
		<li><a href="#">&nbsp;제주&nbsp;</a></li>
	  </ul> 
    </div><!-- <div class="f2"> -->
    
<!-- main2 -->
  <div class=middle>
    <!-- 본문1, 이벤트(슬라이드 쇼) -->
    <div class="cycle-slideshow" >
	  <img src="img/ev1.jpg" alt="main" width="90%">
	  <img src="img/ev2.jpg" alt="main" width="90%">
    </div>
    
    <!-- 본문2, 제휴 할인 -->
    <div class="at2">
	  <h4><b>'함께 여행' 제휴 할인</b></h4>
	    <b>[안동 단풍 구경]</b><br>
	     1박 2일 여행 지원금 받자!
		<img src="img/bd6.jpg" width="20%" style="margin-bottom:2%"><p><p>
		<b>출발일 선택</b>&nbsp;&nbsp;<input type="text" id="datepicker" size="12"> 
		&nbsp;<button id="btn1" onclick="booking()">예약</button>
    </div>
  </div>
	 
<!-- 본문3, 여행 후기 -->
	 <div class="at3">
	    <h3><b>❤ 현재 인기 있는 여행지</b></h3>
	    <p><p>
		<table class="tb1">
		  <tr>
			<td width="15%" class="vd" ><a href="#"><video src="vd/snoopy.mp4" controls width="200px"></video></a></td>
			<td width="35%"><b>❤ 841 | <a href="#">[제주] 스누피가든</a></b><p>
							 날씨가 좋아서 사진도 이쁘게 잘 나오고, 전시장 안에서도 볼 게 많아서 너무 만족했어요!
							 사람이 많으니까 빨리 가시는 걸 추천합니다. ...</td>
			<td width="15%" class="img"><a href="#"><img src="img/bd2.jpg" alt="like2" width="200px"></a></td>
			<td width="35%"><b>❤ 637 | <a href="#">[서울] 경복궁 경회루 </a></b><p>
							 물에 비치는 경회루가 멋있어요. 옛 궁을 느낄 수 있어서 너무 좋았어요.
							 사진찍기에도 좋을 것 같고, 한복입고 다니는 사람들도 많아서 너무 이뻤어요. ...</td>
		  </tr>
		  <tr>
			<td width="15%" class="img"><a href="#"><img src="img/bd3.jpg" alt="like3" width="200px"></a></td>
			<td width="35%"><b>❤ 575 | <a href="#">[경주] 경주 동궁과 월지</a></b><p>
						   경주는 야경이 진짜 최고인것 같아요. 사람들이 많고 어두워도 사진이 잘나와서 인생샷 건졌어요.
						   가족들과 가기에도 너무 좋습니다. ...</td>
			<td width="15%" class="img"><a href="#"><img src="img/bd4.jpg" alt="like4" width="200px"></a></td>
			<td width="35%"><b>❤ 410 | <a href="#">[강원] 속초 해수욕장 </a></b><p>
						   물 완전 맑고, 가족단위로 물놀이 하는 모습도 보기 좋아요!! 바람도 솔솔 부는게 날씨 완전 좋음!
						   바다보면서 물멍 하기에도 완전 좋을것 같아요! 마음에 듭니다! ...</td>
		  </tr>
		</table>
	  </div>
	  
<jsp:include page="footer.jsp" />
 </body>
</html>