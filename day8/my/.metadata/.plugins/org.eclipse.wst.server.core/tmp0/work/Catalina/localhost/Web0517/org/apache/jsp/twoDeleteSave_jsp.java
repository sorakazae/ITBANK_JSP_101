/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.53
 * Generated at: 2014-05-25 01:57:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class twoDeleteSave_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


	private Connection CN;  // DB서버연결정보
	private Statement ST;  // 정적명령어, select, delete쿼리문실행
	private PreparedStatement PST;  // insert, update쿼리문실행
	private ResultSet RS; //RS=ST.executeQuery(sql); 조회된결과
	private String sql; //쿼리문기술 insert, select
	
	private int Gsabun; //사번값을 받을 필드
	

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		CN=DriverManager.getConnection(url, "system","oracle");
		out.println("<h1>DB서버 접속성공</h1>");
	}catch(Exception ex){
		out.println("<h1>접속에러: "+ex.toString()+"</h1>");
	}


      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title> [twoDeleteSave.jsp] </title>\r\n");
      out.write("\t<style type=\"text/css\">\r\n");
      out.write("\t\ta{text-decoration:none; font-size:20pt; font-family:궁서체; }\r\n");
      out.write("\t\ta:hover{text-decoration:underline;font-size:36pt; font-family:궁서체; }\r\n");
      out.write("\t</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write(" <font size=7 color=\"#A8E8C8\"><b> [twoDeleteSave.jsp=단독실행X]</b></font>\r\n");
      out.write(" ");

 
	int data= Integer.parseInt(request.getParameter("sabun"));	// 사번
	out.println("<h1>넘어온삭제할사번 :" + data +"</h1>");
	
	try{
		sql="delete from insa where sabun=" + data;
		ST=CN.createStatement();
		ST.executeUpdate(sql);//저장처리
		//삭제성공하면 twoList.jsp문서로 자동이동
		response.sendRedirect("twoList.jsp"); //a태그는 사용자가 꼭 클릭을 해야이동
		// out.println("<h1>삭제성공실패 </h1>");
		// twoDeleteSave.jsp단독실행X
	}catch(Exception ex){ 
		out.println("<h1>삭제실패: " + ex +"</h1>");
		response.sendRedirect("twoList.jsp");
	} // 삭제실패해도 리스트목록으로 이동
		
 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<h1>\r\n");
      out.write("\r\n");
      out.write("\t<a href=\"two.jsp\">[입력화면]</a>\r\n");
      out.write("\t<a href=\"twoList.jsp\">[전체데이타출력]</a>\r\n");
      out.write("</h1>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
