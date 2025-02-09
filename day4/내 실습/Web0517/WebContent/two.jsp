<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> [two.jsp]</title>
</head>
<body>
	<font size=6 color="#A8E8C8"><b> [two.jsp]</b></font>
	<p>
	<form name="myform" action="twoSave.jsp">
		<b>사번:</b> <input type=text name="sabun" maxlength="4" style="font-size:20pt;"> <br>
		<b>이름:</b> <input type=text name="name" style="font-size:20pt;"> <br>
		<b>급여:</b> <input type=text name="pay" value="92" style="font-size:20pt;"> <p>  <!-- value = 기본값 -->
		<input type="submit" value="저  장" style="font-size:20pt;"> &nbsp;&nbsp;  <!-- submit이 twoSave.jsp와 연결됨 -->
		<input type="reset" value="취  소" style="font-size:20pt;">
	</form>
	
	<p>
	<h1> 입력화면 작성</h1>
	<img src="images/aaa.gif">
	<img src="images/aaa.gif">
	<img src="images/aaa.gif">
	<h1>
	 <a href="two.jsp">[입력화면]</a>
	 <a href="twoList.jsp">[전체데이타출력]</a>
	 <a href="twoDelete.jsp">[삭제화면]</a>
	</h1>
</body>
</html>