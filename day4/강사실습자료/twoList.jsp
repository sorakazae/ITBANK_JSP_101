<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*"  %>    
<%@ page import="java.util.*"  %>      

<%!
    private Connection CN; //DB서버연결정보
    private Statement  ST; //정적명령어, Select, delete쿼리문실행
    private PreparedStatement  PST; //insert, update쿼리문실행
    private ResultSet  RS; //RS=ST.executeQuery(sql); 조회된결과
    private String sql; //쿼리문기술 insert, select
    
    private int Gsabun ; //사번값을 받을 필드
    private int data1 ; //사번값 데이타값 받을 필드
    private String data2 ; //이름 데이타값 받을 필드
    private int data3 ; //급여 데이타값 받을 필드
%>


<%
  try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ; 
	CN=DriverManager.getConnection(url, "system","oracle");
	out.println("<h1>DB서버 접속성공 1:52</h1>"); 
  }catch(Exception ex){ 
	  out.println("<h1>접속에러:" + ex.toString() +"</h1>"); 
  }
%>
<html>
<head> <title> [twoList.jsp] </title>
	<style type="text/css">
	    td{ font-size:20pt; }
		a{text-decoration:none; font-size:20pt; font-family:궁서체; }
		a:hover{text-decoration:underline; font-size:36pt; font-family:궁서체; }
	</style>
</head>

<body>
 <table border=1  width=600>
 	<tr>
 		<td colspan=4 height=40> <img src="images/bar.gif"> </td>
 	</tr>
 	<tr height=40 bgcolor=pink align="center">
 		<td>사번</td>  <td>이름</td> <td>날짜</td> <td>급여</td>
 	</tr>
 	
 	<font size=7 color=red><b> [twoList.jsp=단독실행]</b></font>
 <%
  try{
	sql="select * from insa order by sabun " ;
	ST=CN.createStatement(); //명령어생성
	RS=ST.executeQuery( sql ) ; //조회한결과는 ResultSet=RS기억
	while(RS.next()==true){ //자바코드에서 tr,td태그를 분리시키세요
 %>
	  <tr>
 		<td> <%= RS.getInt("sabun")  %>  </td>  
 		<td> <%= RS.getString("name") %> </td> 
 		<td> <%= RS.getDate("nalja") %>  </td> 
 		<td> <%= RS.getInt("pay") %>     </td>
 	  </tr>	
 <%
	}
  }catch(Exception ex){ }
 %> 
</table>

  <h1>
  	<a href="two.jsp">[입력화면]</a>
	<a href="twoList.jsp">[전체데이타출력]</a>
	<a href="twoDelete.jsp">[삭제화면]</a>
  </h1>
</body>
</html>












