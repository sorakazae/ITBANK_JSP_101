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
  	<b>���: </b>
  	  <input type=text  name="sabun" maxlength="4" style="font-size:20pt;"> <br>
  	<b>�̸�: </b>
  	  <input type=text  name="name" style="font-size:20pt;"> <br>
  	<b>�޿�: </b>
  	<input type=text  name="pay"  value="92" style="font-size:20pt;" > <p>
  	<input type="submit"  value="��   ��" style="font-size:20pt;"> &nbsp;&nbsp;
  	<input type="reset"  value="��   ��"  style="font-size:20pt;" >
  </form>

  <p>
  <img  src="images/aaa.gif">
  <img  src="images/aaa.gif">
  <img  src="images/aaa.gif">
  <h1>
  	<a href="two.jsp">[�Է�ȭ��]</a>
	<a href="twoList.jsp">[��ü����Ÿ���]</a>
	<a href="twoDelete.jsp">[����ȭ��]</a>
  </h1>
</body>
</html>