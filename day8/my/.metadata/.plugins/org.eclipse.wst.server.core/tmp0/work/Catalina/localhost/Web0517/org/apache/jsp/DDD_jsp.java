/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.53
 * Generated at: 2014-06-01 00:12:26 UTC
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
import java.io.*;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public final class DDD_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title> [DDD.jsp]</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");

  ServletContext context = this.getServletContext();
  String realpath=context.getRealPath("bank"); // 파일이 저장될 파일경로
  File file = new File(realpath);
  file.mkdir();
  
  MultipartRequest multi = null; // new MultipartRequest(1,2,3,4,5)
  // multi = new MultipartRequest(request,경로,사이즈,"euc-kr",중복된파일);
  multi = new MultipartRequest(request,realpath,1024*1024*10,"euc-kr",new DefaultFileRenamePolicy());
  out.println("<font size=6><b>[데이타출력]</b></font><br>");
  Enumeration et = multi.getParameterNames();
  while(et.hasMoreElements()==true){
	  String name = (String)et.nextElement();
	  String value = multi.getParameter(name); // request.getParameter("sabun")
	  out.println("<font size=6>"+name+":"+value+"</font><br>");
  }//while end

      out.write("\r\n");
      out.write("<hr>\r\n");
      out.write("\r\n");
      out.write("<!--  파일처리 0601 일요일 다시 지우고 작성 -->\r\n");

	out.println("<font size=6><b>[파일출력]</b></font><br>");
	Enumeration ef = multi.getFileNames();
	while(ef.hasMoreElements()==true){
		String fileName=(String)ef.nextElement();
		String fileValue=multi.getFilesystemName(fileName); // getFilesystemName("file1")  <-  getParameter("file1")
		out.println("<font size=6>"+fileName+":"+fileValue+"</font><br>");
	}

      out.write("\r\n");
      out.write("<p>\r\n");
      out.write("<hr>\r\n");
      out.write("<b>\r\n");
      out.write("\t");
      out.print( realpath );
      out.write("\r\n");
      out.write("</b>\r\n");
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
