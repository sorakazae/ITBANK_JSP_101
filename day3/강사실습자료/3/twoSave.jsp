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
    private int data1 ; //����� ����Ÿ�� ���� �ʵ�
    private String data2 ; //�̸� ����Ÿ�� ���� �ʵ�
    private int data3 ; //�޿� ����Ÿ�� ���� �ʵ�
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
<head> <title> [twoSave.jsp] </title>
	<style type="text/css">
		a{text-decoration:none; font-size:20pt; font-family:�ü�ü; }
		a:hover{text-decoration:underline; font-size:36pt; font-family:�ü�ü; }
	</style>
</head>

<body>
 <font size=7 color=red><b> [twoSave.jsp=�ܵ�����X]</b></font>
 <%
 	data1= 2234;
 	data2= "orange";
 	data3= 95;
 try{
	sql="insert into insa values(2234, 'orange',sysdate, 95)" ;
 }catch(Exception ex){ }
 %> 

<h1>
	�Ѿ�»��: <%= data1 %> <br>
	�Ѿ���̸�: <%= data2 %> <br>
	�Ѿ�±޿�: <%= data3 %> <p>
	
	<a href="two.jsp">[�Է�ȭ��]</a>
	<a href="twoList.jsp">[��ü����Ÿ���]</a>
	<a href="twoDelete.jsp">[����ȭ��]</a>
</h1>
</body>
</html>












