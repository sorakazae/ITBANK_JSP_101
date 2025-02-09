<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<html>
<head>
<title> [CCC.jsp]</title>
</head>
<body>
	<form action="DDD.jsp" method="post" enctype="multipart/form-data">
	 이름: <input type=text name="name" value="name"> <br>
	 제목: <input type=text name="title" value="title"> <br>
	 <!-- <input type=hidden name="num" value="32"> <br> -->
	 파일1: <input type=file name="file1"> <br>
	 파일2: <input type=file name="file2"> <br>
	 
	 <input type="submit" value="데이타전송">
	 
	</form>
	
	<p>
	<img src="images/bar.gif">
</body>
</html>