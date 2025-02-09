<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<html>
<head>
<title> [AAA.jsp]</title>
</head>
<%
	// int Gsabun=RS.getInt("sabun"); // twoList.jsp
	int Gsabun=2233; // DB에서 사번필드값가져와서 twoDetail.jsp에 넘기기
%>

<body>

	<h1>
	  <a href="BBB.jsp?idx=<%= Gsabun %>">[BBB.jsp]</a>
	  <a href="two.jsp">[two.jsp]</a>
	</h1>
	<p>
	<img src="images/aaa.gif">
	<img src="images/aaa.gif">
	<img src="images/aaa.gif">
	<img src="images/aaa.gif">
	
</body>
</html>