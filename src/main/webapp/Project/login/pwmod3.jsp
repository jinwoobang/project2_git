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
<link href="/web/Project/cssall/popup.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn-mod").click(function(){
		var id=$("input[name='id']");
		var pw=$("input[name='pw']");
		//var pw1=$("input[name='pw1']");
		var pw2=$("input[name='pw2']");
		var pw3=$("input[name='pw3']");
		//var name=${name}; 
		
		if(pw2.val()!=pw3.val()){
			alert('새로운 비밀번호가 일치하지 않습니다. 다시 입력해 주세요');
		}else{
		pw.val(pw2.val());	
		id.val("${id}");
		$("form[name='frm']").submit();
		}		
	});
});


</script>
</head>

<!-- 메뉴------------------------------------------------------------>
<body>
	<div class="card1 align-middle" id="boxsize6">
		<div class="card-title" style="margin-top:30px;">
			<div id="but_group">
			
			</div>
		</div>
		<div class="card-body">
      <form class="form-signin" method="POST" name="frm" action="/web/pwmod3.do">
        <!-- <ul class="nav nav-tabs nav-justified">
         <li class="active"><a href="#">메뉴1</a></li>
         <li><a href="#">메뉴2</a></li>
     
     </ul>   -->
        <h5 class="form-signin-heading" id="passmod-head">비밀번호 수정</h5>
       <  <label for="Name" id="modtitle" class="labelname" >현재 비밀번호</label> 	
        <input name="pw1" type="password" id="mod" class="form-control" placeholder="현재 사용중인 비밀번호를 입력하세요." required autofocus>
        
        <label for="Name" id="modtitle" class="labelname" >새로운 비밀번호</label>
        <input name="pw2" type="password" id="mod" class="form-control" placeholder="새로운 비빌번호를 입력하세요." required autofocus>
        
        <label for="Name"  id="modtitle" class="labelname" >비밀번호 확인</label>
        <input name="pw3" type="password" id="mod" class="form-control" placeholder="새로운 비밀번호를 입력하세요." required autofocus><BR>
         <input type="hidden" name="pw" placeholder="비밀번호">
         <input type="hidden" name="id" placeholder="아이디">
        
        </div>
        <button id="btn-mod" class="idlogin-but" type="button" >확   인</button>
        
		</div>
	</div>
      </form>

	<div class="modal">
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <!--  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> --> 
  </body>
</html>


</body>
</html>