<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head><title> [twoDelete.jsp] </title>
</head>
<body>
  <font size=6 color=red><b> [twoDelete.jsp]</b></font>
  <p>
  <form  name="myform"  action="twoDeleteSave.jsp">
  	<b>삭제할사번: </b>
  	<input type=text  name="sabun"  style="font-size:20pt;"> 
  	<input type="submit"  value="삭 제" style="font-size:20pt;"> <br>
  </form>

  <p>
  <h1>
  	<a href="two.jsp">[입력화면]</a>
	<a href="twoList.jsp">[전체데이타출력]</a>
  </h1>
</body>
</html>
