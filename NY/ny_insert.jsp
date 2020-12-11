<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Content-Type"
	content="text/html; charset=UTF-8">
<meta charset="UTF-8" http-equiv="Content-Type"
	content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<title>TCK_콜 테스트</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");//post요청 한글 처리
	%>
<nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed" 
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    aria-expaned="false">
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="../login.jsp">TCK 콜 테스트</a>

  </div>

  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">

   <ul class="nav navbar-nav">

    <li><a href="../GR/GR.jsp">구로</a></li>
    <li><a href="">관악CRM</a></li>
    <li><a href="">관악금융</a></li>
    <li><a href="NY.jsp">남영</a></li>
    <li><a href="../YD/YD.jsp">여의도</a></li>
    <li><a href="">서울시티</a></li>
    <li><a href="">잠실</a></li>
    <li><a href="">종로</a></li>
		
		
		<form method="post" action="ny_insert_OK.jsp">
			<table width="100%" border="1">
			<thead>
				<tr>
					<th>프로젝트 명</th>
					<th>대표번호</th>
					<th>착신번호</th>
				</tr>
			</thead>
			<tbody>
				
				<tr>
					<td><input type="text" name="Name" > </td>
					<td><input type="text" name="Tel_1"> </td>
					<td><input type="text" name="Tel_2"> </td>
				</tr>
				
			</tbody>
		</table>
		<input type="submit" value="저장">
		</form>
		<button type="btn" oneclick="'NY.jsp'" >취소</button>
		</div>
	</div>
</body>
</html>