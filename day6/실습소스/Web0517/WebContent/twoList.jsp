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
	private String Gname; //�̸����� ���� �ʵ�
	private int data1;//����� ����Ÿ�� ���� �ʵ�
	private String data2;//�̸� ����Ÿ�� ���� �ʵ�
	private int data3;//�޿� ����Ÿ�� ���� �ʵ�
%>


<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		CN=DriverManager.getConnection(url, "system","oracle");
		out.println("<h1>DB���� ���Ӽ��� 1:52</h1>");
	}catch(Exception ex){
		out.println("<h1>���ӿ���: "+ex.toString()+"</h1>");
	}

%>

<html>
<head>
<title> [twoList.jsp] </title>
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
 <%
   int total=0;
   String sql2="select count(*) as cnt from insa";
   try{
	   Statement ST2=CN.createStatement();
	   ResultSet RS2=ST2.executeQuery(sql2); // sql�� �ƴ϶� sql2�̴�
	   if(RS2.next()==true){
		   total=RS2.getInt("cnt");
	   }
   }catch(Exception ex){}
 %>
  
  <tr align="right">
  	<td colspan=4 height=40> 
  	<font size=6><b>�ѷ��ڵ尹��: <%= total %> &nbsp;&nbsp; </b></font> 
  	</td>
  </tr>
  
  <tr height=40 bgcolor=pink align="center">
  	<td> ��� </td> <td> �̸� </td> <td> ��¥ </td> <td> �޿� </td>
  </tr>
  <font size=7 color="#A8E8C8"><b> [twoList.jsp]</b></font>
 <%
	try{
		sql="select * from insa order by sabun";
		ST=CN.createStatement(); //��ɾ����
		RS=ST.executeQuery(sql); //��ȸ�� ����� ResultSet=RS���
		while(RS.next()==true){ // �ڹ��ڵ忡�� html�±� �и�
			Gsabun=RS.getInt("sabun");
			Gname=RS.getString("name");
%>
			<tr>
		  	<td> <%= RS.getInt("sabun") %>   </td>
		  	<td> <a href="twoDetail.jsp?idx=<%= Gsabun %>"><%= Gname %></a></td>
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
	</h1>
</body>
</html>





