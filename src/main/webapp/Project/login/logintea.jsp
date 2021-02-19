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
	$(function(){
		
			 getid();
			  $("#saveid").click(function(){
			   saveid();
			  }); 
	});
	
	function saveid() {
		   var expdate = new Date();
		// 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
		   if($("#saveid").prop("checked")){
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
   $("#saveid").prop("checked",true);
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
 			url:'/web/logintea.do',
 			dataType:'text',
 			type:'POST',
 			data:{id:id.val(),pw:pw.val()},
 			success:function(v){
 		    	if(v=='fail'){
 		    		/* $("span#sp").html("<font color=red size=3>ID 또는 Password가 올바르지 않습니다.</font>") */
 		    		alert('ID 또는 Password가 올바르지 않습니다. 다시 확인해 주세요.');
 		    	}else{
 		    		document.location.href='/web/eduList.do';		    		
 		    	}
 		    },
 		    error:function(){
 		    	alert('Error');
 		    }
 		 });
	  });
		
		$("#buttont").click(function(){
			$(this).css("background-color","blue");
			 if($("#buttons").css("background-color","blue") || $("#buttona").css("background-color","blue")){
				$("#buttons").css("background-color","#5dafe2");
				$("#buttona").css("background-color","#5dafe2");
			} 
			
			});
		
		$("#buttona").click(function(){
			$(this).css("background-color","blue");
			if($("#buttons").css("background-color","blue") || $("#buttont").css("background-color","blue")){
				$("#buttons").css("background-color","#5dafe2");
				$("#buttont").css("background-color","#5dafe2");
			} 
		});
		
		$("#buttonst").click(function(){
			$(this).css("background-color","blue");
			 if($("#buttont").css("background-color","blue") || $("#buttona").css("background-color","blue")){
				$("#buttont").css("background-color","#5dafe2");
				$("#buttona").css("background-color","#5dafe2");
			} 
			
			});

	});
</script>
<style type="text/css">
#div1{
	margin-top:20px;
	width: 36rem;
	height: 30rem;
	background-color: white;
	border-radius: 20px;
	margin-left: 770px;
	border: solid 0px;
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
    text-align: center;
    left: 160px;
   
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
    left: 360px;
}

#button1:hover,#button2:hover {
	background: blue;
}

#buttonst{
position : relative;
width: 32%;
height: 45px;
top: 40px;
background-color: #5dafe2;
color: #fff;
text-align: center;

}
#buttont{
position : relative;
width: 32%;
height: 45px;
top: 40px;
background-color: #5dafe2;
color: #fff;
text-align: center;
}
#buttona{
position : relative;
width: 32%;
height: 45px;
top: 40px;
background-color: #5dafe2;
color: #fff;
text-align: center;
}
#h5{
position: relative;
font-size: 35px;
text-align: center;
}

#divcheck{
position: relative;
top: -40px;
}
#check{
position: relative;
width: 72%;
height: 45px;
margin-left: 60px;
border: solid 1px rgba(0, 0, 0, 0.15);
border-radius: 0.50em;
}

#span1{
position: relative;
top: 20px;
left: 135px;
}

#saveid{
position: relative;
margin-top : 10px;
margin-left: 60px;
}

#btn-Yes{
position: relative;
margin-top : -35px;
margin-left: 50px;
width: 80%;
height: 50px;
color: white;
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
	<input type="button" value="학생 로그인" id="buttonst" onclick="location.href='/web/Project/login/loginstu.jsp'">
	<input type="button" value="강사 로그인" id="buttont" onclick="location.href='/web/Project/login/logintea.jsp'">
	<input type="button" value="관리자 로그인" id="buttona" onclick="location.href='/web/Project/login/loginadmin.jsp'">
	<div>
	  <h5 id="h5">Orda <br>Education</h5>
	  <div id="divcheck">
	  <input type="text" name="id" id="check" placeholder="ID" required autofocus><br><br>
      <input type="password" name="pw" id="check" placeholder="Password" required><br><br>
      <input type="checkbox" value="remember-me" name="idsave" id="saveid" onClick="javascript:saveid(document.new_user_session)" > 기억하기  
      </div>
	</div>
	   <button id="btn-Yes" type="button" >로 그 인</button><br><br><br>
	   <span id="span1"><a href="/web/Project/login/idfind2.jsp" id="idfind">&nbsp;아이디찾기&nbsp;|</a></span>
       <span id="span1"><a href="/web/Project/login/psfind2.jsp" id="idfind">&nbsp;비밀번호찾기&nbsp;|</a></span>
       <span id="span1"><a href="/web/Project/login/jointerms.jsp" id="idfind">회원가입</a></span>
	</div>
	<br><br>
	
	
     

	<!-- <div class="modal">
	</div> -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> --> 
  </body><%@include file="/Project/main/footer.jsp"%>
</html>

