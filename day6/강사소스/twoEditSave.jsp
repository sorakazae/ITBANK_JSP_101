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
<head> <title> [twoEditSave.jsp] </title>
	<style type="text/css">
		a{text-decoration:none; font-size:20pt; font-family:궁서체; }
		a:hover{text-decoration:underline; font-size:36pt; font-family:궁서체; }
	</style>
</head>

<body>
 <font size=7 color=red><b> [twoEditSave.jsp=단독실행X]</b></font>
 <%
 	int data1= Integer.parseInt(request.getParameter("sabun"));  //사번
 	String data2= request.getParameter("name"); //이름
 	int data3=  Integer.parseInt(request.getParameter("pay")); //급여
 	out.println("<h1>수정될사번:" + data1 +"</h1>");
 	out.println("<h1>수정될이름:" + data2 +"</h1>"); 
 	out.println("<h1>수정될급여:" + data3 +"</h1>"); 
 try{
	//sql="insert into insa values(2234, 'blue', sysdate, 95 )" ;
	//sql="update insa set name='gooCopy', nalja=sysdate, pay=456 where sabun=2234 ;
	sql="update insa set name=? , nalja=sysdate, pay=? where sabun=? " ;
	PST=CN.prepareStatement(sql) ; 
		PST.setString(1, data2);//이름
		PST.setInt(2, data3);  //급여
		PST.setInt(3, data1) ; 
	PST.executeUpdate(); //DB서버에서 진짜 실행됨, 괄호안의 매개인자X
	response.sendRedirect("twoList.jsp") ; 
	//식사한후 다시 시작=> 편집성공, twoSave.jsp문서에서 PreparedStatement연습
 }catch(Exception ex){ 
	 out.println("<h1>수정실패: " + ex +"</h1>"); 
	// response.sendRedirect("twoList.jsp") ; 
}
 %> 

<h1>
	<a href="two.jsp">[입력화면]</a>
	<a href="twoList.jsp">[전체데이타출력]</a>
	<a href="twoDelete.jsp">[삭제화면]</a>
</h1>
</body>
</html>












