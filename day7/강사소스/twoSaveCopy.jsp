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
<head> <title> [twoSaveCopy.jsp] </title>
	<style type="text/css">
		a{text-decoration:none; font-size:20pt; font-family:궁서체; }
		a:hover{text-decoration:underline; font-size:36pt; font-family:궁서체; }
	</style>
</head>

<body>
 <font size=7 color=red><b> [twoSaveCopy.jsp=단독실행X]</b></font>
 <%
 	int data1= Integer.parseInt(request.getParameter("sabun"));  //사번
 	String data2= request.getParameter("name"); //이름
 	int data3=  Integer.parseInt(request.getParameter("pay")); //급여
 	out.println("<h1>넘어온사번:" + data1 +"</h1>");
 	out.println("<h1>넘어온이름:" + data2 +"</h1>"); 
 	out.println("<h1>넘어온급여:" + data3 +"</h1>"); 
 try{
	//sql="insert into insa values(data1, 'data2', sysdate, data3 )" ;
sql="insert into insa values("+data1+", '"+data2+"', sysdate, "+data3+")" ;
	out.println("<h1>" + sql + "</h1>") ;
	
	//DB처리하는 순서
	//첫번째  데이타베이스드라이브 로드  Class.forName("oracle.jdb.driver.OracleDriver");  
	//두번째  DB서버정보 CN=DriverManager.getConnection(url, "system", "oracle")
 	//세번째  명령어생성
 	ST=CN.createStatement();  //select쿼리문은 executeQuery( sql );
	ST.executeUpdate(sql) ;  //insert,update,delete은 executeUpdate( )
	out.println("<h1>insa테이블 저장 성공!!!</h1>"); 
 }catch(Exception ex){ out.println("<h1>저장실패: " + ex +"</h1>"); }
 %> 

<h1>
	<a href="two.jsp">[입력화면]</a>
	<a href="twoList.jsp">[전체데이타출력]</a>
	<a href="twoDelete.jsp">[삭제화면]</a>
</h1>
</body>
</html>












