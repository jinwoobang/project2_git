<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web/Project/cssall/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web/Project/cssall/logincss.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
#div1{
	background-color : white;
	border: 0px solid red;
	 margin-top:50px; 
	width: 50%;
	height: 50%;
	margin-left: 500px;	
	margin-bottom: 40px;
}
#button1{
  	position : relative;
	top: 170px;
	color: #fff;
    background-color: #5dafe2;
    font-size: 16px;
    text-align: center;
     width: 12em;
    height: 5em;
    left: 220px;
   
}
#button2{
  	position : relative;
	top: 170px;
	color: #fff;
    background-color: #5dafe2;
    font-size: 16px;
    text-align: center;
     width: 12em;
    height: 5em;
    text-align: center;
    left: 430px;
}

#button1:hover,#button2:hover {
	background: blue;
}


</style>
</head><%@include file="/Project/main/header.jsp"%>

<!-- 메뉴------------------------------------------------------------>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">
 
<!-- 	<div class="card align-middle" id="boxsize">
		<div class="card-title" style="margin-top:30px;">
			<div id="but_group">
			
			</div>
		</div>
		
	</div> -->
	
	<div id="div1">
	<input type="button" value="학생 회원가입" id="button1" onclick="location.href='/web/Project/login/join.jsp'" >
	<input type="button" value="강사 회원가입" id="button2" onclick="location.href='/web/Project/login/joinTeacher.jsp'">
	</div>
     

	<div class="modal">
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> --> 
  </body><%@include file="/Project/main/footer.jsp"%>
</html>

