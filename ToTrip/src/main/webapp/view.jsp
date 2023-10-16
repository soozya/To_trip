<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*,Board.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<!doctype html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>::함께 여행::</title>
 <link href="css/other.css" rel="stylesheet">
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
</head>
<body> 
   <div class="left_title"><a href="main.jsp">함께 여행</a></div>
   <p>
   <h2 class="com1 text-center"><a href="list.do"><b>커뮤니티</b></a></h2>
   <p> <hr>
  <div class="view">
    <table class="table view_tb">
     <tr>
	   <td class="col-md-1 text-center"> <b>제목</b></td>
	   <td class="col-md-6 text-left"><b>${data.title}</b></td>
	   <td class="col-md-1 text-center"> <b>조회수</b></td>
	   <td class="col-md-1 text-left">${data.readc}</td>
     </tr>
	 <tr>
	   <td class="col-md-1 text-center"> <b>작성자</b></td>
	   <td class="col-md-4 text-left">닉네임</td>
	   <td class="col-md-1 text-center"> <b>작성일</b></td>
	   <td class="col-md-2 text-left">
		 <fmt:formatDate value="${data.cdate}" timeStyle="medium" pattern="yyyy-MM-dd" />
	   </td>
	 </tr>
	 <tr>
	   <td class="col-md-1 text-center"> <b>글 내용</b> </td>
	   <td class="col-md-8" colspan="3" style="white-space:pre">${data.content} </td>
	 </tr>   
	</table>
     <button type="submit" class="btn btn-default delete_bt"
    		 onclick="location.href='delete.do?num=${data.num}'">삭제</button>	
     <button type="submit" class="btn btn-primary update_bt"
    		 onclick="location.href='updateform.do?num=${data.num}'">글 수정</button>	 
  </div>
     <button type="submit" class="btn btn-secondary com_list"
    		 onclick="location.href='list.do'">글 목록</button>
 <jsp:include page="footer.jsp" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>