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
<link href="/web/Project/cssall/logincss.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn-Yes1").click(function(){
		var name=$("input[name='name']");
		var pwq=$("select[name='pwq']");
		var pwa=$("input[name='pwa']");
		  $.ajax({
			url:'/web/idfind.do',
			dataType:'text',
			type:'POST',
			data:{name:name.val(),pwq:pwq.val(),pwa:pwa.val()},
			//data:{id:'${id}'},
			success:function(v){
				if(v=='success'){
					alert("해당하는 정보의 ID는 '${id}' 입니다");
				}else{
					alert("해당하는 정보의 ID가 없습니다");
					pwa.val('');
					$("select[name='pwq'] option:eq(0)").prop("selected",true);
					
				}
				//console.log(v[0].id);
				
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

	<div class="card align-middle" id="boxsize1">
		<div class="card-title" style="margin-top:30px;">
			<div id="but_group">
			
			</div>
		</div>
		<div class="card-body">
      <form class="form-signin" method="POST" name="frm">
        <!-- <ul class="nav nav-tabs nav-justified">
         <li class="active"><a href="#">메뉴1</a></li>
         <li><a href="#">메뉴2</a></li>
     
     </ul>   -->
      
       <a href="/web/Project/login/idfind.jsp"> 
       <button id="btn-idps1" class="form-signin-heading btTab check" type="button" >아이디 찾기</button></a>
       <a href="/web/Project/login/psfind.jsp"> 
       <button id="btn-idps2" class="form-signin-heading btTab" type="button">비밀번호 찾기</button></a>
        
        <label for="Name" id="title" class="labelname" >이 &emsp;름</label> 	
        <input type="text" id="uid1" class="form-control" name="name" placeholder="이   름" required autofocus>
        
        <label for="Name" id="title" class="labelname" >질 &emsp;문</label>
        <select id="uid1" name="pwq"class="form-control">
        
          <option value=' '>선택하세요.</option>
          <option value='졸업한 초등학교 이름은?'>졸업한 초등학교 이름은?</option>
          <option value='제일 친한 친구의 핸드폰 번호는?'>제일 친한 친구의 핸드폰 번호는?</option>
          <option value='아버지 성함은?'>아버지 성함은?</option>
          <option value='어머니 성함은?'>어머니 성함은?</option>
          <option value='어릴 적 내 별명은?'>어릴 적 내 별명은?</option>
          <option value='가장 아끼는 물건은?'>가장 아끼는 물건은?</option>
          <option value='좋아하는 동물은?'>좋아하는 동물은?</option>
          <option value='좋아하는 색깔은?'>좋아하는 색깔은?</option>
          <option value='좋아하는 음식은?'>좋아하는 음식은?</option>
        
        </select>
        
        <label for="Name"  id="title" class="labelname" >답 &emsp;변</label>
        <input type="text" id="uid1" name="pwa" class="form-control" placeholder="답   변" required autofocus><BR>
        
        
        </div>
        <button id="btn-Yes1" class="idlogin-but" type="button" >확   인</button>
        
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
<%@include file="/Project/main/footer.jsp"%>
</html>