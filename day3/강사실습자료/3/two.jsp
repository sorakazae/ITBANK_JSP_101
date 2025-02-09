<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> [two.jsp] </title>
</head>
<body>
  <font size=6 color=red><b> [two.jsp]</b></font>
  <p>
  <form  name="myform"  action="twoSave.jsp">
  	사번: <input type=text  name="sabun"> <br>
  	이름: <input type=text  name="name"> <br>
  	급여: <input type=text  name="pay"> <p>
  	<input type="submit"  value="저장"> &nbsp;&nbsp;
  	<input type="reset"  value="취소">
  </form>

  <p>
  <img  src="images/aaa.gif">
  <img  src="images/aaa.gif">
  <img  src="images/aaa.gif">
  <h1>
  	<a href="two.jsp">[입력화면]</a>
	<a href="twoList.jsp">[전체데이타출력]</a>
	<a href="twoDelete.jsp">[삭제화면]</a>
  </h1>
</body>
</html>