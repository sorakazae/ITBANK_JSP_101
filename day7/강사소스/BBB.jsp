<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head><title> [BBB.jsp] </title>
</head>

<%
  String data=request.getParameter("idx");
  //out.println("<h1>넘어온값: " + data +"</h1>");
%>

 <h1>넘어온값: <%= data %></h1>
<body>
 
  <h1>
  	<a href="AAA.jsp">[AAA.jsp]</a>
  	<a href="two.jsp">[two.jsp]</a>
  </h1>

  <p>
  <img  src="images/bar.gif">
</body>
</html>





