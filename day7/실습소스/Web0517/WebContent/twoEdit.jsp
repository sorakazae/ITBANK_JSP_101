<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%!
	private Connection CN;  // DB������������
	private Statement ST;  // ������ɾ�, select, delete����������
	private PreparedStatement PST;  // insert, update����������
	private ResultSet RS; //RS=ST.executeQuery(sql); ��ȸ�Ȱ��
	private String sql; //��������� insert, select
	
	private int Gsabun; //������� ���� �ʵ�
	private int data1;//���������Ÿ�� ���� �ʵ�
	private String data2;//�̸� ����Ÿ�� ���� �ʵ�
	private int data3;//�޿� ����Ÿ�� ���� �ʵ�
%>


<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		CN=DriverManager.getConnection(url, "system","oracle");
		//out.println("<h1>DB���� ���Ӽ��� 1:52</h1>");
	}catch(Exception ex){
		//out.println("<h1>���ӿ���: "+ex.toString()+"</h1>");
	}

%>

<html>
<head>
<title> [twoEdit.jsp] </title>
	<style type="text/css">
		td{ font-size:16pt; }
		a{text-decoration:none; font-size:20pt; font-family:�ü�ü; }
		a:hover{text-decoration:underline;font-size:36pt; font-family:�ü�ü; }
	</style>
</head>

<body>
   
  <font size=6><b> [twoEdit.jsp = �ܵ����� X]</b></font>
 <%
	try{
		//twoDetail.jsp���� �Ǹ����� a�±�
		//<a href="twoEdit.jsp?idx=2233"[����]</a>
		String data = request.getParameter("idx");
		sql="select * from insa where sabun="+ data; 
		ST=CN.createStatement(); 
		RS=ST.executeQuery(sql); 
		if(RS.next()==true){
		  data1=RS.getInt("sabun");
		  data2=RS.getString("name");
		  data3=RS.getInt("pay");
		}
	}catch(Exception ex){}
 %>
 <!-- two.jsp������ form �±� ���� -->
 <!-- twoEdit.jsp���� �ܵ�����X, action="twoEditSave.jsp" -->
	<p>
	<form name="myform" action="twoEditSave.jsp">
		<b>���:</b> <input type=text name="sabun" value="<%= data1 %>" readonly style="font-size:20pt;"> <br>
		<b>�̸�:</b> <input type=text name="name" value="<%= data2 %>"style="font-size:20pt;"> <br>
		<b>�޿�:</b> <input type=text name="pay" value="<%= data3 %>" style="font-size:20pt;"> <p>
		<input type="submit" value="��  ��" style="font-size:20pt;"> &nbsp;&nbsp;
		<input type="reset" value="��  ��" style="font-size:20pt;">
	</form>

<p>
	<h1>
	 <a href="two.jsp">[�Է�]</a>
	 <a href="twoList.jsp">[��ü����Ÿ���]</a>
	 <a href="twoDelete.jsp">[����]</a> <!-- �ܵ����� ���� -->
	 <a href="twoEdit.jsp?idx=<%= RS.getInt("sabun") %>">[����]</a>
	</h1>
</body>
</html>





