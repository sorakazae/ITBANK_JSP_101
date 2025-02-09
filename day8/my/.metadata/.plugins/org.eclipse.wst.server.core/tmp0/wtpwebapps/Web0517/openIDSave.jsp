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
	
%>


<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		CN=DriverManager.getConnection(url, "system","oracle");
		out.println("<h1>DB서버 접속성공</h1>");
	}catch(Exception ex){
		out.println("<h1>접속에러: "+ex.toString()+"</h1>");
	}

%>

<html>
<head>
<title> [openIDSave.jsp] </title>
</head>

<body>
 <%
	int data1= Integer.parseInt(request.getParameter("id"));	// 사번
	//openIDSave.jsp 05-31-토요일
	int total=0;
   String sql2="select count(*) as cnt from insa where sabun="+ data1;
   try{
	   Statement ST2=CN.createStatement();
	   ResultSet RS2=ST2.executeQuery(sql2); // sql이 아니라 sql2이다
	   if(RS2.next()==true){
		   total=RS2.getInt("cnt");
		   }
if(total>0){
%>
	<script type="text/javascript">
	 alert("중복된 아이디입니다")
	 self.close();
	 opener.document.myform.sabun.value="";
	 opener.document.myform.sabun.focus();
	</script>
<%	
}else{
%>
 	<script type="text/javascript">
	 alert("사용가능한 아이디입니다")
	 self.close();
	</script>
<%
	}

	}catch(Exception ex){}
 %>


</body>
</html>





