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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 다음주소 -->
<script type="text/javascript">
	$(function(){
		
		$("button[name='u']").click(function(){
			new daum.Postcode({
				oncomplete:function(data){
					var addr='';
					var extraAddr='';
					
					  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }

					  if(data.userSelectedType==='R'){
						  if(data.bname!=='' && test(data.bname)){
							  extraAddr+=data.bname;
						  }
						  if(data.buildingName !=='' && data.apartment ==='Y'){
							  extraAddr += (extraAddr !== '' ? ',' + data.buildingName : data.buildingName);
						  }
						  if(extraAddr !== ''){
							  extraAddr = '('+ extraAddr+ ')';
						  }
						  
						  $("input[name='address4']").val(extraAddr);
						  
					  }else{
						  $("input[name='address4']").val('');
						  
					  }
			
				$("input[name='address1']").val(data.zonecode);
				$("input[name='address2']").val(addr);
			}
			}).open();
		});
		
		
	   $("#btn-join").click(function(){
	      //var birth=$("select[name='birth1']").val()+'/'+$("select[name='birth2']").val()+'/'+$("select[name='birth3']").val();
	      $("input[name='birth']").val($("select[name='birth1']").val()+'/'+$("select[name='birth2']").val()+'/'+
	    		  $("select[name='birth3']").val());
	       //birth값+
	       
	      var email1=$("input[name='email1']");
	      var email2=$("select[name='email2']");
	      $("input[name='email']").val(email1.val()+"@"+email2.val());
	      //email값 +
	      
	      var address1=$("input[name='address1']");
	         var address2=$("input[name='address2']");
	         var address3=$("input[name='address3']");
	         $("input[name='address']").val(address1.val()+" "+address2.val()+" "+address3.val());
	         //address값 +
	      
	      var pw1=$("input[name='pw1']");
	      var pw2=$("input[name='pw2']");
	      if(pw1.val()!=pw2.val() || pw1.val().length==0 || pw2.val().length==0){
	         alert('비밀번호를 다시 확인해 주세요.');
	         pw1.val('');
	         pw2.val('');
	         return false;
	      }else{
	         $("input[name='pw']").val(pw1.val());
	      }
	      $("form[name='frm']").submit();   
	   });
	   
	  
	   
	   $("button[name='idcheck']").click(function(){
			var id=$("input[name='id']");
			//alert(id);
			 $.ajax({
				url:'/web/idcheck.do',
				dataType:'text',
				type:'POST',
				data:{id:id.val()},
				success:function(v){
					if(v=='success'){
					alert("사용 가능한 ID입니다.");
					}else{
					alert("이미 사용중인 ID입니다. 다른 ID를 입력해 주세요");
					id.val('');
					id.focus();
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

<script type="text/javascript">
function showPopup() { window.open("address.jsp", "a", "width=510, height=600, left=100, top=50"   ); }
</script>

<!-- 메뉴------------------------------------------------------------>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">

   <div class="card align-middle" id="boxsize3">
      <div class="card-title" style="margin-top:30px;">
         <div id="but_group">
         
         </div>
      </div>
      
      <div class="card-body">
      <form class="form-signin" method="POST" action="/web/eduSpring.do" name="frm">
        <h5 class="form-signin-heading" id="login-head">회원가입</h5>
        
        <h3><label id="joinlist">이름</label></h3>
        <input type="text" id="uid" class="form-control" placeholder="이름" name="name"><BR>
       
        <h3><label id='joinlist'>아이디</label></h3>
        <input type="text" id="uidid" class="form-control" name="id" placeholder="ID" required autofocus>
        <button id="idbtn-code" class="btn-code"  name="idcheck" type="button" >중복확인</button><BR>
        
        <h3><label id='joinlist'>비밀번호</label></h3>
        <input type="password" id="uid" class="form-control"  name="pw1" placeholder="Password" required><br>
        <input type="password" id="uid" class="form-control"  name="pw2" placeholder="Password Check" required><br>
        <input type="hidden" name="pw" value="비밀번호pw">
      
      <h3><label id='joinlist'>생년월일</label></h3>
      <select class="form-control" id="birth" name="birth1" >
         <option>선택하세요.</option>
         <c:forEach step="1" begin ="1970" end="2020" var="i">
            <option value="${i }">${i }</option>
         </c:forEach>
      </select>
      <span id="birthtext">년</span>
      <select  class="form-control" id="birth" name="birth2">
         <option>선택하세요.</option>
         <c:forEach step="1" begin ="1" end="12" var="i">
            <option value="${i }">${i }</option>
         </c:forEach>
      </select>
      <span id="birthtext">월</span>
        <select  class="form-control" id="birth" name="birth3">
             <option>선택하세요.</option>
         <c:forEach step="1" begin ="1" end="31" var="i">
            <option value="${i }">${i }</option>
         </c:forEach>
      </select>
      <span id="birthtext">일</span><br>
      <input type="hidden" name="birth" value="생년월일">
      
      
      <h3><label id='joinlist'>전화번호</label></h3>
   <input type="text" id="uid" class="form-control" name="hp" placeholder="전화번호">
   
   <h3><label id='joinlistem'>이메일</label></h3>
   <input type="text" id="email" class="form-control" name="email1" placeholder="이메일"><span id="golbeang">@</span>
   <select name="email2" class="form-control" id="email"> 
               <option>직접입력</option>
               <option value="naver.com">naver.com</option>
               <option>daum.net</option>
               <option>yahoo.com</option>
               <option>nate.com</option>
               <option>gamil.com</option>
               </select>
      <input type="hidden" name="email" value="email">
              
              
              <h3><label id='joinlistad'>우편번호</label></h3>
        <BR><input type="text" readonly="readonly" id="add" class="form-control" name="address1" placeholder="우편번호">
        <button id="btn-add" class="btn-add" type="button" name="u">우편번호</button><BR>
        <input type="text" readonly="readonly" id="uid" class="form-control" name="address2" placeholder="도로명주소"><BR>
        <input type="text" id="uid" class="form-control" name="address3" placeholder="상세주소"><BR>
        <input type="hidden" name="address" value="주소">
         <input type="hidden" id="uid" class="form-control" name="address4" placeholder="참고항목">
        
        
        <h3><label id='joinlist'>질문</label></h3>
        <select id="idps" name="pwq" class="form-control">
          <option value=' '>아이디 비밀번호 찾기 질문</option>
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
        
        <input type="text" id="uid" class="form-control" name="pwa" placeholder="아이디/비밀번호 찾기 답"><BR>
        
        
        <button id="btn-join" class="join-but" type="button">가입하기</button>
        <!-- <button id="aa" type="button">example</button> -->
      </div>
   </div>
      </form>
   
   <div class="modal">
   </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <!--   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  -->
  </body>
</html>


<%@include file="/Project/main/footer.jsp"%>