<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*"  %>    
<%@ page import="java.util.*"  %>      
<%@ page import="java.io.*"  %>    
<%@ page import="com.oreilly.servlet.MultipartRequest"  %>    
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"  %>  

<html>
<head><title> [DDD.jsp] </title>
</head>

<%
	ServletContext  context = this.getServletContext();
	String realpath=context.getRealPath("bank") ; //������ ����� ���ϰ��
	File  file = new File( realpath );
	file.mkdir( );
	
	MultipartRequest multi  = null ; //new MultipartRequest(1,2,3,4,5)
	//multi = new  MultipartRequest(request,���,������, "euc-kr", �ߺ�������);
	multi = new  MultipartRequest(request, realpath, 1024*1024*10,"euc-kr", new DefaultFileRenamePolicy( ) );
	out.println("<font size=6><b> [����Ÿ���] </b></font><br>");
	Enumeration et= multi.getParameterNames( );
	while(et.hasMoreElements()==true){
		String name=(String)et.nextElement() ; 
		String value=multi.getParameter(name) ;
		out.println("<font size=6>" +name +" : " +value +"</font><br>");
	} //while end
%>
<hr>

<!-- ����ó��  -->
<%
	out.println("<font size=6><b> [�������] </b></font><br>");
	Enumeration ef=multi.getFileNames();
	while(ef.hasMoreElements()==true){
		String fileName=(String)ef.nextElement() ;
		String fileValue=multi.getFilesystemName(fileName);
		out.println("<font size=6>" +fileName +" : " +fileValue +"</font><br>");
	}
%>
<p>
<hr>
<b>
	<%= realpath %>
</b>
</body>
</html>





