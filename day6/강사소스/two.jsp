<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head> <title> [two.jsp] </title>
	<style type="text/css">
		a{font-size:24pt; text-decoration:none ; }
		a:hover{font-size:32pt; text-decoration:underline ; }
	</style>
	
	<script type="text/javascript">
		function move( ){
		  if(myform.sabun.value==""){
			  alert("사번이 공백입니다"); //alert("메세지"); 안내문메세지
			  myform.sabun.focus( ); //재입력을 위해서 초점이가는겨
			  return false ; 
		  }else { myform.name.focus( ); }
		  
		  //이름공백체크하기전에  사번자릿수 4자리체크  length( )
		  var len= myform.sabun.value.length;
		  if( len != 4){
			  alert("사번입력란 자릿수는 4자리이어야 합니다");
			  myform.sabun.value="";
			  myform.sabun.focus( );
			  return false ; 
		  }
		  
		  if(myform.name.value==""){
			  alert("이름이 공백입니다");
			  myform.name.focus( );
			  return false ; 
		  }else { myform.pay.focus( ); }
		  
		  if(myform.pay.value==""){
			  alert("급여가 공백입니다");
			  myform.pay.focus( );
			  return false ; 
		  }else { myform.pay.focus( ); }
		  
		  //모든데이타입력했으면  action="twoSave.jsp"연결
		  document.myform.submit( ) ;  //action="twoSave.jsp"연결
		}  //move End
	</script>
</head>
<body>
  <font size=6 color=red><b> [two.jsp-단독실행X]</b></font>
  <p>
  <form  name="myform"  method="get"  action="twoSave.jsp">
  	<b>사번: </b>  <input type=text  name="sabun"> <br>
  	<b>이름: </b>  <input type=text  name="name" > <br>
  	<b>급여: </b>  	<input type=text  name="pay"   > <p>
  	<input type="button"  value="저 장"   onClick="move( )" >
  	<input type="reset"  value="취 소"  >
  </form>

  <p>
  <h1>
  	<a href="two.jsp">[입력화면]</a>
	<a href="twoList.jsp">[전체데이타출력]</a>
	<a href="twoDelete.jsp">[삭제화면]</a>
  </h1>
</body>
</html>