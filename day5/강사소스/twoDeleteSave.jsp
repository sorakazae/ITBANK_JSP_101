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
<head> <title> [twoDeleteSave.jsp] </title>
	<style type="text/css">
		a{text-decoration:none; font-size:20pt; font-family:�ü�ü; }
		a:hover{text-decoration:underline; font-size:36pt; font-family:�ü�ü; }
	</style>
</head>

<body>
 <font size=7 color=red><b> [twoDeleteSave.jsp=�ܵ�����X]</b></font>
 <%
 	int data= Integer.parseInt(request.getParameter("sabun"));  //���
  	out.println("<h1>�����һ��:" + data +"</h1>");
 try{
	sql="delete from insa where sabun= " +  data ;
	ST=CN.createStatement();
	int OK=ST.executeUpdate(sql) ;
	 out.println("<h1>������������ </h1>"); 
  }catch(Exception ex){ out.println("<h1>��������: " + ex +"</h1>"); }
 %> 

<h1>
	<a href="two.jsp">[�Է�ȭ��]</a>
	<a href="twoList.jsp">[��ü����Ÿ���]</a>
</h1>
</body>
</html>












