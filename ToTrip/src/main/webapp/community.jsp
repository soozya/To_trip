<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.Date, Board.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>::함께 여행::</title>
 <link href="css/other.css" rel="stylesheet">
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body> 
   <div class="left_title"><a href="main.jsp">함께 여행</a></div>
   <h2 class="com1 text-center"><a href="list.do"><b>커뮤니티</b></a></h2>
   <p> <hr>
 <div class="list">
   <div>
     <button class="btn btn-primary wr_bt" onclick="location.href='writeform.do'">글쓰기</button>
   </div>
   <p> <p>
	 <table class="table table-hover com_tb">
	    <thead>
	      <tr>
	    	<th class="text-center" width="15%">글 번호</th>
	        <th class="text-center" width="40%">글 제목</th>
	      	<th class="text-center" width="15%">작성자</th>
	      	<th class="text-center" width="20%">작성일</th>
	      	<th class="text-center" width="10%">조회수</th>
	      </tr>
	    </thead>
	    <tbody> 
		 <c:forEach var="list" items="${list}">
	      <tr>
	        <td class="text-center"> ${list.num}</td>
	        <td class="text-left"><a href="view.do?num=${list.num}">${list.title}</a></td>
	        <td class="text-center">닉네임</td>
	        <td class="text-center">
			   <fmt:formatDate value="${list.cdate}" timeStyle="medium" pattern="yyyy-MM-dd" />
			 </td>
	        <td class="text-center"> ${list.readc}</td>
	      </tr>	
	     </c:forEach>      
	    </tbody>
	 </table> 
 </div> <!-- class="main" -->
 <jsp:include page="footer.jsp" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>