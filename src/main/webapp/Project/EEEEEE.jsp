<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">


#check-img{
    position: relative;
    width: 200px;
    height: 250px;
    bottom: 2em;
    left: 5em;
    margin-top: 2em;
}

#boxsize5.card.align-middle {
    width: 30rem;
    height: 36rem;
    background-color: white;
    border-radius: 20px;

}

#login-head1.form-signin-heading{
font-size: 40px;
position: relative;
    top: 38px;
}
.loginend-but{
    position: relative;
    top: 49px;
    width: 10em;
    height: 3.3em;
    color: #fff;
    background-color: #5cb85c;
    border: none;
    font-size: 14px;
    right: 7em;

}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web/Project/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web/Project/logincss.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<%-- </head><%@include file="header.jsp"%> --%>

<!-- 메뉴------------------------------------------------------------>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	<div class="card align-middle" id="boxsize5">
		<div class="card-title" style="margin-top:30px;">
			<div id="but_group">
			
			</div>
		</div>
		<div class="card-body">
      <form class="form-signin" method="POST" onSubmit="logincall();return false">
        <h5 class="form-signin-heading" id="login-head1">회원가입이 <br>완료되었습니다.</h5>
        <img src="/web/Project/images/check2.png" id="check-img">
        <button id="btn-login" class="loginend-but" type="button" >로 그 인</button>
        
		</div>
	</div>
      </form>

	<div class="modal">
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
  </body>
</html>


<%-- </body><%@include file="footer.jsp"%> --%>
</html>