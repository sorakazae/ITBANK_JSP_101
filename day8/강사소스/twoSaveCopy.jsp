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
<head> <title> [twoSaveCopy.jsp] </title>
	<style type="text/css">
		a{text-decoration:none; font-size:20pt; font-family:�ü�ü; }
		a:hover{text-decoration:underline; font-size:36pt; font-family:�ü�ü; }
	</style>
</head>

<body>
 <font size=7 color=red><b> [twoSaveCopy.jsp=�ܵ�����X]</b></font>
 <%
 	int data1= Integer.parseInt(request.getParameter("sabun"));  //���
 	String data2= request.getParameter("name"); //�̸�
 	int data3=  Integer.parseInt(request.getParameter("pay")); //�޿�
 	out.println("<h1>�Ѿ�»��:" + data1 +"</h1>");
 	out.println("<h1>�Ѿ���̸�:" + data2 +"</h1>"); 
 	out.println("<h1>�Ѿ�±޿�:" + data3 +"</h1>"); 
 try{
	//sql="insert into insa values(data1, 'data2', sysdate, data3 )" ;
sql="insert into insa values("+data1+", '"+data2+"', sysdate, "+data3+")" ;
	out.println("<h1>" + sql + "</h1>") ;
	
	//DBó���ϴ� ����
	//ù��°  ����Ÿ���̽�����̺� �ε�  Class.forName("oracle.jdb.driver.OracleDriver");  
	//�ι�°  DB�������� CN=DriverManager.getConnection(url, "system", "oracle")
 	//����°  ��ɾ����
 	ST=CN.createStatement();  //select�������� executeQuery( sql );
	ST.executeUpdate(sql) ;  //insert,update,delete�� executeUpdate( )
	out.println("<h1>insa���̺� ���� ����!!!</h1>"); 
 }catch(Exception ex){ out.println("<h1>�������: " + ex +"</h1>"); }
 %> 

<h1>
	<a href="two.jsp">[�Է�ȭ��]</a>
	<a href="twoList.jsp">[��ü����Ÿ���]</a>
	<a href="twoDelete.jsp">[����ȭ��]</a>
</h1>
</body>
</html>












