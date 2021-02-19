<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">

*{
margin: 1;
padding: 1;
box-sizing: border-box;
}


body{
background-color: #f7f7f7;
}

ul>li{
list-style: none;
}

a{
text-decoration: none;
}

.clearfix::after{
content: "";
display: block;
clear: both;
}


#joinForm{
width: 460px;
margin: 0 auto;
}

ul.join_box{
border: 1px solid #ddd;
background-color: #fff;
}

.checkBox,.checkBox>ul{
position: relative;
}

.checkBox>ul>li{
float: left;
}

.checkBox>ul>li:first-child{
	width: 38em;
    padding: 15px;
    font-weight: 600;
    color: #888;
    position: relative;
    left: 87px;
}

.checkBox>ul>li:nth-child(2){
position: absolute;top: 50%;right: 30px;margin-top: -12px;
}

.checkBox textarea{
width: 96%;height: 90px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;
}

.footBtwrap{
margin-top: 15px;
}

.footBtwrap>li{
float: left;width: 50%;height: 60px;
}

.footBtwrap>li>button{
    top: 38px;
    width: 9em;
    height: 3em;
    font-size: 16px;
    text-align: center;
    line-height: 48px;
    color: #fff;
    background-color: #5dafe2;
    border: none;
}

.fpmgBt1{
position:relative;
    left: 55px;
}
.fpmgBt2{
position:relative;
    left: -32px;
}

.jointerms{
position: relative;
top:5%;
}




</style>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web/Project/cssall/logincss.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("input[name='chkAll']").click(function(){
		if($("input:checkbox[name='chkAll']").is(":checked")==true){
			$("input:checkbox[name='chk']").prop("checked",true);
		}else{
			$("input:checkbox[name='chk']").prop("checked",false);
		}		
	});
	$("input[name='chk']").click(function(){
		if($("input:checkbox[id='check1']").is(":checked")==false || $("input:checkbox[id='check2']").is(":checked")==false
				|| $("input:checkbox[id='check3']").is(":checked")==false || $("input:checkbox[id='check4']").is(":checked")==false){
			$("input:checkbox[name='chkAll']").prop("checked",false);
		}else{
			$("input:checkbox[name='chkAll']").prop("checked",true);
		}
	});
	
	$("button[name='agree']").click(function(){
		if($("input:checkbox[id='check1']").is(":checked")==false || $("input:checkbox[id='check2']").is(":checked")==false){
			alert("필수항목을 체크해주세요!");
		}else{
			document.location.href='/web/Project/login/memberShip.jsp';
		}
	});
	
	$("button[name='disagree']").click(function(){
		document.location.href='/web/Project/index.jsp';
	});
});
</script>
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head><%@include file="/Project/main/header.jsp"%>

<!-- 메뉴------------------------------------------------------------>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">

	<div class="card align-middle" id="boxsize4">
		<div class="card-title" style="margin-top:30px;">
			<div id="but_group">
			
			</div>
		</div>
		
		<h5 class="form-signin-heading" id="login-head">약관동의</h5>
		
		<form action="" class="jointerms" id="joinform">
            <ul class="join_box">
                <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,
                            위치정보 이용약관(선택), 프로모션 안내
                            메일 수신(선택)에 모두 동의합니다.</li>
                        <li class="checkAllBtn">
                            <input type="checkbox" name="chkAll" id="chk" class="chkAll">
                        </li>
                    </ul>
                </li>
                <li class="checkBox check02">
                    <ul class="clearfix">
                        <li>이용약관 동의(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="check1"> 
                        </li>
                    </ul>
                    <textarea name="" id="">제1조(목적) 이 약관은 ○○학원(이하 ‘학원’이라 합니다)과 학원이 제공하는 교습과정을 수강하는 자(이하 ‘수강자’라 합니다)간의 교습 및 수강에 관한 제반사항을 규정하는 것을 목적으로 합니다.
제2조(관계법령) 이 약관에 규정되지 아니한 사항 또는 이 약관의 해석에 관하여 다툼이 있는 사항에 대해서는 학원과 수강자가 합의하여 결정하되, 합의가 이루어지지 아니한 경우에는 학원의설립․운영및과외교습에관한법률, 약관의규제에관한법률, 할부거래에관한법률, 민법, 상법 등 관계법령 및 공정 타당한 일반관례에  따릅니다.
제3조(게시의무)
  ① 학원은 수강자가 보기 쉬운 곳에 다음 각호의 사항을 게시합니다.
    1. 강사의 인적사항
    2. 교습과정(과목)의 현황과 개요
    3. 교습과정(과목)별 수강료 및 일체의 부대비용(교재대금, 실습재료비 등)
    4. 교습과정(과목)별 강의시간
    5. 이 약관
    6. 기타 수강자에게 필요한 사항
  ② 학원은 제1항 제3호의 규정에 의한 수강료 및 부대비용(이하 ‘수강료등’이라 합니다)을 허위로 게시하거나 이를 초과하여 징수하지 아니합니다.

제4조(수강신청 및 설명․교부)
  ① 수강자는 학원이 정한 절차에 의하여 수강신청을 하여야 하며, 수강신청서를 제출하고 수강료등을 납부하여야 합니다.
  ② 학원은 수강자가 수강신청을 하기 전에 이 약관 제5조 내지 제12조의 규정을 설명하고, 수강료 이외에 교재대금․실습재료비 등의 부대비용을 부담해야 하는 경우에는 그 내역을 고지합니다.
  ③ 학원은 수강신청서와 수강료등을 받은 때에는 수강자에게 영수증 및 다음 각호의 사항이 기재된 수강증을 교부하며, 수강자가 요구할 경우에는 이 약관도 교부합니다.

    1. 교습과정(과목)

    2. 강의시간

    3. 기타 계약의 중요 사항
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="check2">
                        </li>
                    </ul>
 
                    <textarea name="" id="">제5조(수강료등)

  ① 학원은 수강자가 수강신청을 할 때 수강료등을 청구합니다. 다만, 분할지급을 하기로 약정한 경우에는 수강신청을 할 때 1회 분할 수강료등을 청구하고, 제2회 이후의 분할 수강료등은 약정한 일자에 청구합니다.
  ② 수강자는 수강료등을 신용카드로 지급할 수 있습니다.
  ③ 교재대금은 교재의 구입을 원하는 수강자에게만 청구합니다.
 

제6조(수강증)
  ① 수강자는 학원의 요구가 있을 때에는 수강증을 제시하여야 합니다.
  ② 수강자가 수강증을 분실한 경우에는 지체없이 학원에 그 사실을 통지하고, 학원은 허위신고․부당사용 등의 특별한 사유가 없는 한 재교부합니다.
 

제7조(강의시간 및 강사)
  ① 학원은 교습과정(과목), 강의시간, 강사 등을 구체적으로 정하고 이를 성실히 준수합니다.
  ② 학원은 예정된 강의시간 또는 강사를 임의로 변경할 수 없습니다. 다만, 불가피하게 변경하는 경우에는 사전에 이를 수강자에게 고지합니다.
  ③ 수강자는 제2항 단서의 규정에 의해 변경된 강의시간에 또는 변경된 강사에게 수강하는 것을 원하지 않는 경우에는 그 변경된 강의개시전에 계약을 해지할 수 있습니다.

제8조(휴강)
  ① 학원의 휴강일은 다음 각호와 같습니다.

    1. 국경일 및 공휴일
    2. 정기휴일: 개원기념일(00월 00일), 00기념일(00월 00일)

  ② 학원은 제1항이 규정하는 날을 제외하고는 임의로 휴강을 하지 않습니다. 다만, 불가피하게 휴강을 하게 될 경우에는 보강을 실시하며, 이 경우 제7조 제2항 단서 및 제3항의 규정을 준용합니다.
제9조(수강의 연기)
  ① 수강자는 수강신청후 부득이한 사정으로 수강할 수 없게 된 경우에는 교습개시일 전에 수강의 연기를 신청할 수 있습니다.
  ② 수강자가 수강의 연기를 신청하기 위해서는 그 사유를 기재한 신청서와 수강증을 학원에 제출하여야 합니다.
  ③ 학원은 제2항의 연기신청서를 받은 경우에는 다음 번 교습과정(과목)을 개설하기가 어려운 사정이 있는 경우를 제외하고는 수강의 연기를 허락합니다.
  ④ 학원이 수강의 연기를 허락한 경우에는 수강증에 강의시간등의 변경사항을 기재하여 이를 수강자에게 재교부합니다.  
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>위치정보 이용약관 동의(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="check3">
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check04">
                    <ul class="clearfix">
                        <li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="check4">
                        </li>
                    </ul>
 
                </li>
            </ul>
            <ul class="footBtwrap clearfix">
                <li><button type="button" class="fpmgBt1" name="disagree">비동의</button></li>
                
                <li><button type="button" class="fpmgBt2" name="agree">동의</button></li>
            </ul>
        </form>
            </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  -->
  </body>
  <%@include file="/Project/main/footer.jsp"%>
</html>


