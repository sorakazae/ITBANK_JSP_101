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
<title> [twoDetail.jsp] </title>
	<style type="text/css">
		td{ font-size:16pt; }
		a{text-decoration:none; font-size:20pt; font-family:�ü�ü; }
		a:hover{text-decoration:underline;font-size:36pt; font-family:�ü�ü; }
	</style>
</head>

<body>
 <table border=1 width=600>
  <tr>
  	<td colspan=4 height=40> <img src="images/bar.gif"> </td>
  </tr>
  
  <font size=6><b> [twoDetail.jsp = �ܵ����� X]</b></font>
 <%
	try{
		 // twoList.jsp���� �̸��ʵ尪 Ŭ���ϸ� �ڵ����� �Ѿ���°�
		String data = request.getParameter("idx");
		sql="select * from insa where sabun="+ data; //2233��� data�� ��ü
		ST=CN.createStatement(); //��ɾ����
		RS=ST.executeQuery(sql); //��ȸ�� ����� ResultSet=RS���
		if(RS.next()==true){ //while�ݺ������ if������ ��ü
%>
		<tr height=50 bgcolor=pink align="center">
  		 <td colspan=4>
  			<font size=6><b><%= RS.getString("name") %>���� ������ </b></font>
  		 </td>
  		</tr>
		  <tr height=50>
		  	<td> <%= RS.getInt("sabun") %>   </td>
		  	<td> <%= RS.getString("name") %> </td>
		  	<td> <%= RS.getDate("nalja") %>  </td>
		  	<td> <%= RS.getInt("pay") %>     </td>
		  </tr>
<%
		}
	}catch(Exception ex){}
 %>
</table>

	<h1>
	 <a href="two.jsp">[�Է�ȭ��]</a>
	 <a href="twoList.jsp">[��ü����Ÿ���]</a>
	 <a href="twoDelete.jsp">[����ȭ��]</a>
	 <a href="twoEdit.jsp">[����ȭ��]</a>
	</h1>
</body>
</html>





