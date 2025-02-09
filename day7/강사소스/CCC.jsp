<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head><title> [CCC.jsp] </title>
</head>
	<form  enctype="multipart/form-data"  action="DDD.jsp"   method="post" >
		이름: <input type=text name="name"  value="Lee" > <br>
		제목: <input type=text name="title"  value="book"> <br>
		<!-- <input type=hidden  name="num"  value="95"> <br> -->
		파일1: <input type=file  name="file1"> <br>
		파일2: <input type=file  name="file2"> <br>
		<input type="submit"  value="데이타전송">
	</form>
	
  <p>
  <img  src="images/bar.gif">
</body>
</html>





