<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title> [JSTL0531.jsp]</title>
</head>
<body>
 <font size=5> <b> [JSTL0531.jsp]</b></font> <br>
 <c:set var="data" value="${-123}"/>
 <c:catch>
  <c:choose>
  	<c:when test="${data>0}"> <b> ${data} 양수 </b></c:when>
  	<c:when test="${data==0}"> <b> ${data} 제로 </b></c:when>
  	<c:when test="${data<0}"> <b> ${data} 음수 </b></c:when>
  	<c:otherwise> <b> ${data} 숫자가 아닙니다 </b></c:otherwise>
  </c:choose>
 </c:catch>
 
 
 <p>
 <c:set var="dan" value="${4}"/>
 <c:catch>
 	<c:forEach var="i" begin="1" end="10" step="1">
   		<c:if test="${dan != null && dan != ''}">
   		<b>${"dan"}*${i}=${dan*i} </b>&nbsp;
   		</c:if>
 	</c:forEach>
 </c:catch>
 

 
 <p>
<%
	int dan=3;
	for(int i=1; i<10; i++){
		out.println(dan+"*"+i+"="+(dan*i)+"&nbsp;&nbsp;");
	}
%>
	
</body>
</html>