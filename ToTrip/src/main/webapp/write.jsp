<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Board.*"%>
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
   <p>
   <h2 class="com1 text-center"><b>커뮤니티</b></h2>
   <p> <hr>
   
   <h5 class="com2"><b>여행에 대한 자유로운 대화를 나누어보세요!</b></h5>
   <div>
    <form class="com_fm" action="write.do">
      <table class="write_tb">
     	<tr>
     	  <td height="40" align="center" valign="middle" width="10%"><b>글 제목</b></td>
     	  <td height="40" width="90%"> 
     	    <input type="text" name="title" size="129"
     		          placeholder="제목을 입력해 주세요." required />
      	  </td>
      	</tr>
      	<tr>
      	  <td align="center" valign="top"><b>글 내용</b></td>
     	  <td><textarea name="content" rows="10" cols="130"
     					 placeholder="내용을 입력해 주세요." required></textarea>
     	  </td>
      	</tr>
      </table>
	 <button type="submit" class="btn btn-primary write_up" 
	         onclick="alert('작성이 완료되었습니다.')">글쓰기</button>
    </form>
    <button type="submit" class="btn btn-secondary write_cancel"
    		 onclick="history.back()">취소</button>
   </div>
 
 <jsp:include page="footer.jsp" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>