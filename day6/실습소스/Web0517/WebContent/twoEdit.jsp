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
		//out.println("<h1>DB서버 접속성공 1:52</h1>");
	}catch(Exception ex){
		//out.println("<h1>접속에러: "+ex.toString()+"</h1>");
	}

%>

<html>
<head>
<title> [twoEdit.jsp] </title>
	<style type="text/css">
		td{ font-size:16pt; }
		a{text-decoration:none; font-size:20pt; font-family:궁서체; }
		a:hover{text-decoration:underline;font-size:36pt; font-family:궁서체; }
	</style>
</head>

<body>
   
  <font size=6><b> [twoEdit.jsp = 단독실행 X]</b></font>
 <%
	try{
		//twoDetail.jsp문서 맨마지막 a태그
		//<a href="twoEdit.jsp?idx=2233"[편집]</a>
		String data = request.getParameter("idx");
		sql="select * from insa where sabun="+ data; 
		ST=CN.createStatement(); 
		RS=ST.executeQuery(sql); 
		if(RS.next()==true){
		  data1=RS.getInt("sabun");
		  data2=RS.getString("name");
		  data3=RS.getInt("pay");
		}
	}catch(Exception ex){}
 %>
 <!-- two.jsp문서에 form 태그 복사 -->
 <!-- twoEdit.jsp문서 단독실행X, action="twoEditSave.jsp" -->
	<p>
	<form name="myform" action="twoEditSave.jsp">
		<b>사번:</b> <input type=text name="sabun" value="<%= data1 %>" readonly style="font-size:20pt;"> <br>
		<b>이름:</b> <input type=text name="name" value="<%= data2 %>"style="font-size:20pt;"> <br>
		<b>급여:</b> <input type=text name="pay" value="<%= data3 %>" style="font-size:20pt;"> <p>
		<input type="submit" value="수  정" style="font-size:20pt;"> &nbsp;&nbsp;
		<input type="reset" value="취  소" style="font-size:20pt;">
	</form>

<p>
	<h1>
	 <a href="two.jsp">[입력]</a>
	 <a href="twoList.jsp">[전체데이타출력]</a>
	 <a href="twoDelete.jsp">[삭제]</a> <!-- 단독실행 가능 -->
	 <a href="twoEdit.jsp?idx=<%= RS.getInt("sabun") %>">[수정]</a>
	</h1>
</body>
</html>





