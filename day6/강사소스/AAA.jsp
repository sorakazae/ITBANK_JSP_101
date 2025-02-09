<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head><title> [AAA.jsp] </title>
</head>
<%
   //int  Gsabun=RS.getInt("sabun"); //twoList.jsp
     int  Gsabun=2200; //DB에서 사번값가져와서 twoDetail.jsp
%>

<body>
  <font size=6 color=red><b> [AAA.jsp]</b></font>
  <h1>
  	<a href="BBB.jsp?idx=<%= Gsabun %>">[BBB.jsp]</a>
  	<a href="two.jsp">[two.jsp]</a>
  </h1>

  <p>
  <img  src="images/aaa.gif">
  <img  src="images/aaa.gif">
  <img  src="images/aaa.gif">
  <img  src="images/aaa.gif">

</body>
</html>