<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*" %>
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
    <li><a href="CRM.jsp">관악CRM</a></li>
    <li><a href="../GA/GA.jsp">관악금융</a></li>
    <li><a href="../NY/NY.jsp">남영</a></li>
    <li><a href="../YD/YD.jsp">여의도</a></li>
    <li><a href="../SC/SC.jsp">서울시티</a></li>
    <li><a href="../JAM/JAM.jsp">잠실</a></li>
    <li><a href="../JR/JR.jsp">종로</a></li>
    <li><a href="../BS/BS.jsp">부산</a></li>
				<table width="100%" border="1">
					<thead>
						<tr>
							<th>프로젝트 명</th>
							<th>대표번호</th>
							<th>착신번호</th>
						</tr>
					</thead>
					<tbody>
						<% 
						request.setCharacterEncoding("utf-8");//post요청 한글 처리
						
						String Name = request.getParameter("Name");
						String Tel_1 = request.getParameter("Tel_1");
						String Tel_2 = request.getParameter("Tel_2");
						
						Connection conn = null;
						PreparedStatement pstmt = null;
						ResultSet rs = null;
						
							
							String jdbcDriver = "jdbc:mysql://localhost:3306/phone?serverTimezone=UTC";
							String dbUser = "root";
							String dbPwd = "root";
							
							Class.forName("com.mysql.cj.jdbc.Driver");

							conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
							
							pstmt = conn.prepareStatement("insert into crm_num (Name,Tel_1,Tel_2) values (?,?,?)");
							pstmt.setString(1,Name);
							pstmt.setString(2,Tel_1);
							pstmt.setString(3,Tel_2);
							pstmt.executeUpdate();
							
							pstmt.close();
							conn.close();
						%>

					</tbody>
				</table>
			<tr>
		</div>
	</div>
	<script>
		alert("저장 성공!!");
		location.href = 'CRM.jsp';
	</script>
</body>
</html>