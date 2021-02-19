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
<!-- <style type="text/css">
#box {
	position:relative;
	width: 36rem;
	height: 30rem;
	background-color: white;
	border-radius: 20px;
	margin-left: 650px;
}
#heada{
	position: relative;
	font-size: 38px;
	top: 0px;
	text-align: center;
}
</style> -->
<script type="text/javascript">
	$(function(){
		
			 getid();
			  $("#idsave").click(function(){
			   saveid();
			  }); 
	});
	
	function saveid() {
		   var expdate = new Date();
		// 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
		   if($("#idsave").prop("checked")){
		    expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 1); //1일동안 기억 -> 필요하면 1을 원하는 날짜로 변경 가능
		   } else {
		    expdate.setTime(expdate.getTime() - 1); //쿠키 삭제 
		   }
		   setCookie("saveid", $("input[name='id']").val(), expdate);
		 } 

	 function setCookie (name, value, expires) {
    document.cookie = name + "=" + escape (value) +"; path=/; expires=" + expires.toGMTString();
  } 

	function getCookie(Name) {
    var search = Name + "=";
    if (document.cookie.length > 0) { //쿠키 설정이 되어있으면
      offset = document.cookie.indexOf(search);
      if (offset != -1) { //쿠키가 존재하면
        offset += search.length;
        
        end = document.cookie.indexOf(";", offset);
        
        if (end == -1)
          end = document.cookie.length;
        //쿠키 값의 마지막 위치 인덱스 번호 설정
        return unescape(document.cookie.substring(offset, end));
      }
    }
    return "";
  } 
  
   function getid() {
  var saveId = getCookie("saveid");
  if(saveId != "") {
   $("input[name='id']").val(saveId);
   $("#idsave").prop("checked",true);
  }
 } 

	$(function(){

		$("#btn-Yes").click(function(){
		var id=$("input[name='id']");
		var pw=$("input[name='pw']");
		
		//alert(id.val()+" "+pw.val());	
		if(id.val().length==0 || pw.val().length==0){
			alert('ID와 Password를 입력해 주세요');
			id.val('');
			pw.val('');
			return false;
		}
		
		 $.ajax({
 			url:'/web/login.do',
 			dataType:'text',
 			type:'POST',
 			data:{id:id.val(),pw:pw.val()},
 			success:function(v){
 		    	if(v=='fail'){
 		    		$("span#sp").html("<font color=red size=3>ID 또는 Password가 올바르지 않습니다.</font>")
 		    	}else{
 		    		document.location.href='/web/eduList.do';		    		
 		    	}
 		    },
 		    error:function(){
 		    	alert('Error');
 		    }
 		 });
	  });

	});
</script>
</head><%@include file="/Project/main/header.jsp"%>

<!-- 메뉴------------------------------------------------------------>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
 <!-- <form class="form-signin" method="POST" onSubmit="logincall();return false"> -->
	 <div class="card align-middle" id="boxsize">
	<!-- <div id="box"> -->
		<div class="card-title" style="margin-top:30px;">
			<div id="but_group">
			
			</div>
		</div>
		<div class="card-body">
     
         <h5 class="form-signin-heading" id="login-head">Orda <br>Education</h5>
        <!-- <h5 id="heada">Miso <br>Education</h5> -->
        <span id="sp"></span> <!-- 11/19 추가 --> 
        <input type="text" id="loginuid" class="form-control" name="id" placeholder="ID" required autofocus><BR>
        <input type="password" id="loginuid" class="form-control" name="pw" placeholder="Password" required><br>
        <div class="checkbox">
          <label id="remem">
            <input type="checkbox" value="remember-me" name="idsave" id="idsave" onClick="javascript:saveid(document.new_user_session)" > 기억하기
          </label>
        </div>
        <span class="login-menu"><a href="/web/Project/login/idfind.jsp" id="idfind">&nbsp;아이디찾기&nbsp;|</a></span>
        <span class="login-menu"><a href="/web/Project/login/psfind.jsp" id="idfind">&nbsp;비밀번호찾기&nbsp;|</a></span>
        <span class="login-menu"><a href="/web/Project/login/jointerms.jsp" id="idfind">회원가입</a></span>
        <button id="btn-Yes" class="login-but" type="button" >로 그 인</button>
        
		</div>
	</div>
      <!-- </form> -->

	<div class="modal">
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> --> 
  </body><%@include file="/Project/main/footer.jsp"%>
</html>

