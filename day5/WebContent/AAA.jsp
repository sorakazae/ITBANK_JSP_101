<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<html>
<head>
<title> [AAA.jsp]</title>
</head>
<%
	// int Gsabun=RS.getInt("sabun"); // twoList.jsp
	int Gsabun=2233; // DB���� ����ʵ尪�����ͼ� twoDetail.jsp�� �ѱ��
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