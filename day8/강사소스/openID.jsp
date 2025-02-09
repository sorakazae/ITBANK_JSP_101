<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head><title></title>
	<script type="text/javascript">
		function data( ){
			subform.id.value=opener.document.myform.sabun.value ; 
		}
	</script>
</head>
<body bgcolor=pink   onLoad="data()" >
   <div  align="center">
   	 <form name="subform"  action="openIDSave.jsp">
   	 	  <font size=5 color=blue> 사번:</font>
   	 	  <input type=text  name="id">
   	 	  <input type="submit" value="확인">
   	 </form>
   </div>
  <p>
  <img src="images/line.gif">
</body>
</html>