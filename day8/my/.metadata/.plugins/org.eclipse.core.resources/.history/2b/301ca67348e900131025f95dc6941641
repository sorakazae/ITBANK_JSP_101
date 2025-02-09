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
    private String  Gname ; //이름값을 받을 필드
    private int data1 ; //사번값 데이타값 받을 필드
    private String data2 ; //이름 데이타값 받을 필드
    private int data3 ; //급여 데이타값 받을 필드
    
    private  int startPage; //페이징구분에  시작페이지 
%>


<%
  try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//String url="jdbc:oracle:thin:@192.168.33.127:1521:XE" ;
	String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ; 
	//String url="jdbc:oracle:thin:@localhost:1521:XE" ;
	CN=DriverManager.getConnection(url, "system","oracle");
	out.println("<h1>DB서버 접속성공 1:52</h1>"); 
  }catch(Exception ex){ 
	  out.println("<h1>접속에러:" + ex.toString() +"</h1>"); 
  }
%>

<%
//06-01-일요일 < a href="twoList.jsp?pageNUM=2"> [1][2][3] </a>
String pnum=request.getParameter("pageNUM") ;
if(pnum==null)  pnum="1" ;
int pageNUM = Integer.parseInt(pnum) ;  // [2]클릭 
int pagesize=10;  // [1][2]~[9][10]
int limit=10; //1~10씩 출력
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
 		<td colspan=5 height=40> <img src="images/bar.gif"> </td>
 	</tr>
<%
  int total=0;
  String sql2="select count(*) as cnt from insa" ;
  try{
	Statement ST2=CN.createStatement() ;
	ResultSet RS2=ST2.executeQuery(sql2) ;  //sql아니라 sql2기억하세요
	if(RS2.next()==true){
       total=RS2.getInt("cnt");		
	}
  }catch(Exception ex){ }
  
  int pageCount =0 ; //전체레코드  total=74개데이타  => [1][2]~~ [8]
  if( total%pagesize==0) { pageCount=total/pagesize; }
  else { pageCount= (total/pagesize)+1 ;  }
	
  int start= (pageNUM-1)*10 + 1 ;  //[2]페이지선택  시작레코드=11    2*10+1
  int end= pageNUM*10;    //[2]페이지선택  끝레코드=20        2*10
  sql = "select * from  " ;
  sql += " (select rownum as  rn, sabun, name, nalja, pay from  insa ) "; 
  sql += "   where rn between " + start + "  and " + end ;   
%>
 	
 	<tr align="right">
 		<td colspan=5  height=40> 
 		  <font size=6><b>총레코드갯수:<%= total %> &nbsp;&nbsp;</b></font> 
 		</td>
 	</tr>
 	
 	<tr height=40 bgcolor=pink align="center">
 		<td>글번호</td> <td>사번</td>  <td>이름</td> <td>날짜</td> <td>급여</td>
 	</tr>
 	
 	<font size=7 color=red><b> [twoList.jsp]</b></font>
 <%
  try{
	//sql쿼리문 위쪽에 있어요 
	ST=CN.createStatement(); //명령어생성
	RS=ST.executeQuery( sql ) ; //조회한결과는 ResultSet=RS기억
	// 06-01-일요일 추가
	 int temp= (pageNUM-1)%10 ;  //[이전] [41]~[45]현재위치~[50][다음]
	 startPage=pageNUM-temp ;  //temp=4,   45-1=41 
	  
	while(RS.next()==true){ //자바코드에서 tr,td태그를 분리시키세요
		Gsabun=RS.getInt("sabun") ; 
		Gname=RS.getString("name") ;
 %>
	  <tr
	  	onMouseOver="style.backgroundColor='#00FFFF'"
	  	onMouseOut="style.backgroundColor='' "
	  >
 		<td> <%= RS.getInt("rn")  %>  </td> 
 		<td> <%= RS.getInt("sabun")  %>  </td>   
 		<td> <a href="twoDetail.jsp?idx=<%=Gsabun%>"> <%= Gname %></a></td>  
 		<td> <%= RS.getDate("nalja") %>  </td> 
 		<td> <%= RS.getInt("pay") %>     </td>
 	  </tr>	
 <%
	}
  }catch(Exception ex){ }
 %> 
 
  	<tr height=40 bgcolor=pink align="center">
 		<td colspan=5>
 			<font size=6><b> 
<%
for(int i=startPage ; i<(startPage+10) ; i++) {   //[41]~[45]~[50]
	if( i==pageNUM) {
		out.println("<font size=7 color=red><b>["+ i +"]</b></font>");
	} //[45]선택시 
	else{
		out.println( "<a href='twoList.jsp?pageNUM=" + i +"'>[" + i + "]</a>" );
	}
  if( i >= pageCount)break ;   //총레코드 total=74개데이타 [1]~~[8]   
} //for end
%> 			 			
 			 </b></font>
 		</td> 
 	</tr>
</table>

  <h1>
  	<a href="two.jsp">[입력화면]</a>
	<a href="twoList.jsp">[전체데이타출력]</a>
  </h1>
</body>
</html>




