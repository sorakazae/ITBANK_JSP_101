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
	Class.forName("  ");
	String url="  XE" ; 
	//CN=DriverManager.getConnection(url, "system","oracle");
	//out.println("<h1>DB���� ���Ӽ���</h1>"); 
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
 <font size=7 color=red><b> [twoSave.jsp]</b></font>
 <%
 	data1= Integer.parseInt(request.getParameter("sabun"));
 	data2= request.getParameter("name");
 	data3= Integer.parseInt(request.getParameter("pay"));
 %> 

<h1>
	�Ѿ�»��: <%= data1 %> <br>
	�Ѿ���̸�: <%= data2 %> <br>
	�Ѿ�±޿�: <%= data3 %> <p>
</h1>
</body>
</html>












