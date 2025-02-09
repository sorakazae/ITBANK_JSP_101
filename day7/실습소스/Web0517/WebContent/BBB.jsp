<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<html>
<head>
<title> [BBB.jsp]</title>
</head>
<%
  String data=request.getParameter("idx");
  // out.println("<h1>넘어온값 :"+data+"</h1>");
%>

<h1>넘어온값 : <%= data %> </h1>
<body>
	<font size=6 color="#A8E8C8"><b> [BBB.jsp]</b></font>
	<h1>
	  <a href="AAA.jsp">[AAA.jsp]</a>
	  <a href="two.jsp">[two.jsp]</a>
	</h1>
	
	<p>
	<img src="images/aaa.gif">
		
</body>
</html>