<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="css/main1.css" rel="stylesheet">
   
<title>::로그인::</title>

</head>
<body>
       
 <jsp:include page="top.jsp"/> 
 
 <hr>
   
 <div id="contents"> 
  <div class="main"> 
    <form method="post" id="logfm" action="#">      
  	  <table id="login_tb" align="center">       
       <tr>
        <td colspan="2" align="center" height="180px">
         <img src="img/login.png" width="70px"><p>
         <font size="4"><b>로그인</b></font>
        </td>
       </tr>  
       <tr id="log_id"> <!-- 아이디 -->
        <td height="35px" width="300px" align="right">
         <input type="text" id="mem_id" name="mem_id" placeholder="아이디">
        </td>
        <td rowspan="2" width="200px" align="left">
         <button id="logbtn">로그인</button>
        </td>
       </tr>
       <tr id="log_pwd"> <!-- 비밀번호 -->
        <td height="35px" width="300px" align="right">
         <input type="password" id="mem_pwd" name="mem_pwd" placeholder="비밀번호">
        </td>
       </tr>
       <tr id="find" >
        <td colspan="2" align="center" height="50px">
         <a id="login_a" href="id_find.jsp">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;
         <a id="login_a" href="pwd_find.jsp">비밀번호 찾기</a>&nbsp;&nbsp;|&nbsp;
         <a id="login_a" href="mem_join.jsp">회원가입 </a>
        <td>
       </tr>
   	  </table>
     </form>
     </div><!-- 메인 --> 
     </div><!-- contents -->
     
   <jsp:include page="footer.jsp"/>  
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>

</body>
</html>