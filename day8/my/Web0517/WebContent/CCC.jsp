<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<html>
<head>
<title> [CCC.jsp]</title>
</head>
<body>
	<form action="DDD.jsp" method="post" enctype="multipart/form-data">
	 �̸�: <input type=text name="name" value="name"> <br>
	 ����: <input type=text name="title" value="title"> <br>
	 <!-- <input type=hidden name="num" value="32"> <br> -->
	 ����1: <input type=file name="file1"> <br>
	 ����2: <input type=file name="file2"> <br>
	 
	 <input type="submit" value="����Ÿ����">
	 
	</form>
	
	<p>
	<img src="images/bar.gif">
</body>
</html>