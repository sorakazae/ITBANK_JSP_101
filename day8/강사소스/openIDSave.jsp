<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*"  %>    
<%@ page import="java.util.*"  %>      

<%!
    private Connection CN; //DB������������
    private Statement  ST; //������ɾ�, Select, delete����������
    private PreparedStatement  PST; //insert, update����������
    private ResultSet  RS; //RS=ST.executeQuery(sql); ��ȸ�Ȱ��
    private String sql; //��������� insert, select
    
    private int Gsabun ; //������� ���� �ʵ�
%>


<%
  try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ; 
	CN=DriverManager.getConnection(url, "system","oracle");
	out.println("<h1>DB���� ���Ӽ��� 1:52</h1>"); 
  }catch(Exception ex){ 
	  out.println("<h1>���ӿ���:" + ex.toString() +"</h1>"); 
  }
%>
<html>
<head> <title> [openIDSave.jsp] </title>
	<style type="text/css">
		a{text-decoration:none; font-size:20pt; font-family:�ü�ü; }
		a:hover{text-decoration:underline; font-size:36pt; font-family:�ü�ü; }
	</style>
</head>

<body>
 <%
 	int data1= Integer.parseInt(request.getParameter("id"));  
 	//openIDSave.jsp 05-31-�����
 	int total=0;
     String sql2="select count(*) as cnt from insa where sabun=" + data1 ;
 try{
		Statement ST2=CN.createStatement() ;
		ResultSet RS2=ST2.executeQuery(sql2) ; 
		if(RS2.next()==true){
	       total=RS2.getInt("cnt");		
		}
 if(total>0) {
%>
	<script type="text/javascript">
	   alert("�̹� ������� ���̵��Դϴ�")
	   self.close( );
	   opener.document.myform.sabun.value="" ;
	   opener.document.myform.sabun.foucs( ) ;
	</script>	 
<%	 
 }else { 
%>	 
	<script type="text/javascript">
	  	alert("��밡���� ���̵��Դϴ�")
	  	self.close( );
	</script>	
	 
<%
 }
}catch(Exception ex){  }
 %> 

</body>
</html>












