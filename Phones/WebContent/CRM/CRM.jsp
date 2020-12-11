<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>

<%@ page import="boardre.*"%>
<!DOCTYPE html>
<html>
<head>
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

</ul>
<div class="container">
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
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				

				try {
					String jdbcDriver = "jdbc:mysql://localhost:3306/phone?serverTimezone=UTC"; //test?useUnicode=true&characterEncoding=utf8"
					String dbUser = "root";
					String dbPwd = "root";

					conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);

					pstmt = conn.prepareStatement("select * from phone.crm_num");

					rs = pstmt.executeQuery();
					
					//System.out.println("성공");

					while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString("Name")%></td>
					<td><%=rs.getString("Tel_1")%></td>
					<td><%=rs.getString("Tel_2")%></td>
				</tr>
				<%
					}
				} catch (SQLException se) {
					se.printStackTrace();
				} finally {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				}
				%>
			</tbody>
		</table>
		<%--  >
		<button onclick="location='yd_date.jsp'" class="btn"  style="float:right">
			수정
		</button>
		
		--%>
		<button onclick="location='crm_insert.jsp'" class="btn"  style="float:right">
			추가
		</button>
		<button onclick="location='crm_delete.jsp'" class="btn"  style="float:right">
			삭제
		</button>
	
			<tr>
		</div>
	</div>
</nav>	
</body>
</html>