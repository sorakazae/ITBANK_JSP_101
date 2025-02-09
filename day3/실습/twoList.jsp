<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%!
	private Connection CN;  // DB서버연결정보
	private Statement ST;  // 정적명령어, select, delete쿼리문실행
	private PreparedStatement PST;  // insert, update쿼리문실행
	private ResultSet RS; //RS=ST.executeQuery(sql); 조회된결과
	private String sql; //쿼리문기술 insert, select
	
	private int Gsabun; //사번값을 받을 필드
	private int data1;//사번값데이타값 받을 필드
	private String data2;//이름 데이타값 받을 필드
	private int data3;//급여 데이타값 받을 필드
%>


<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		CN=DriverManager.getConnection(url, "system","oracle");
		out.println("<h1>DB서버 접속성공 1:52</h1>");
	}catch(Exception ex){
		out.println("<h1>접속에러: "+ex.toString()+"</h1>");
	}

%>

<html>
<head>
<title> [twoList.jsp] </title>
	<style type="text/css">
		a{text-decoration:none; font-size:20pt; font-family:궁서체; }
		a:hover{text-decoration:underline;font-size:36pt; font-family:궁서체; }
	</style>
</head>

<body>
 <font size=7 color="#A8E8C8"><b> [twoList.jsp]</b></font>
 <%
	try{
		sql="select sabun, name, nalja, pay from insa";
	}catch(Exception ex){}
 %>

	<h1>
	 <a href="two.jsp">[입력화면]</a>
	 <a href="twoList.jsp">[전체데이타출력]</a>
	 <a href="twoDelete.jsp">[삭제화면]</a>
	</h1>
</body>
</html>





