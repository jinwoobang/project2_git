<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Undeviating 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20140322

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>공지사항</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="js/includeHTML.js"></script>
<style type="text/css">

/* 페이지제목 ------------------------------------- */
  .notice_title h4 {
    width: 100%;
    text-align: center;
    margin: 70px 0  90px 0;
    font-weight: bold;
  }
 /* -------------------------------------------- */
 .payment_form{
    width: 70%;
    height: 500px;
    margin: 0  auto 70px auto;
    border: 1px solid silver;
 }
  #payname{
  margin: 0 auto;
   width: 70%;
  }
 #payname p{
   width: 180px;
   padding-left: 10px;
   margin-bottom: 5px;
   font-size: 18px;
   color: black;
   font-family: "나눔고딕";
   font-weight: bold;
   text-align: left;
 }
 #mupay{
   margin: 20px 20px 20px 30px;
 }
  span#formname{
   color: black;
   font-weight: bold;
  }
 .moneybank{
   margin: 10px 20px 20px 20px;
 }
 .moneybank label{
   margin: 10px;
   font-size: 15px;
   color: black;
 }  
  .moneybank #name_f, .moneybank #bank_f{
   margin: 23px;
  }
 .moneybank input#inputname_f{
   display: inline;
   margin-left: 20px;
 }
 .moneybank select#sbank_f{
   margin-left:10px;
 }
 
 /* 결제버튼------------------ */
 .send_m {
   margin: 150px 80px 50px 80px;
   text-align: right;
 }
 .send_m #text_m{
   color: black;
   font-size: 20px;
   font-weight: bold;
   border-bottom: 1px solid silver;
 }
  .send_m #price_m{
   color: red;
   font-size: 20px;
  }
  .send_m input#send_money{
    background-color: black;
    color: white;
    width: 100px;
    line-height: 25px;
    font-size: 15px;
    border: none;
  }
  .send_m input#send_money:hover {
	opacity: 0.8;
}
/* 팝업창 ---------------------*/
.paypopup{
  border: 3px solid black;
  position: absolute;
  left: 35%;
  top: 53%;
  width: 300px;
  text-align: center;
  padding: 50px;
  background-color: #E6E6E6;
}
.paypopup p{
  font-size: 18px;
  color: black;
  font-weight: normal;
  padding: 10px;
}
.paypopup input{
  font-size: 15px;
  color: black;
  padding: 5px;
  width: 100px;
}
.paypopup input#pay{
  background-color: #FAAC58;
  border: none;
  margin: 5px;
}
.paypopup input#cle{
  background-color: #F2F2F2;
  border: none;
  margin: 5px;
}
/* 레이어 배경 */
div.backlayer{
  display: none;
  background-color: black;
  position: absolute;
  left: 0;
  top: 0;
}
 </style>
 <script type="text/javascript">
  $(document).ready(function(){
	  $(".paypopup").hide();
	 $("input#send_money").click(function(){
		 var width = $(window).width(); 
		 var height = $(window).height(); //화면을 가리는 레이어의 사이즈 조정 
		 $(".backLayer").width(width); $(".backLayer").height(height); //화면을 가리는 레이어를 보여준다 (0.5초동안 30%의 농도의 투명도) 
		 $(".backLayer").fadeTo(500, 0.5);

		 var showpopup =$(".paypopup");
		 showpopup.css("top",$(document).height()/2-150);
		 showpopup.css("left",$(document).width()/2-200);
		 showpopup.fadeIn(500);
// 		 $(".paypopup").show();
// 		 return false;
	  });
	 $("input#pay").click(function(){
		 alert("감사합니다. 신청이 완료되었습니다");
		 window.location.href="/web/Project/registration/finishpage.jsp"
	 });
	 $("input#cle").click(function(){
		//alert('닫아라'); 
// 		 $(".paypopup").hide();
         $(".paypopup").fadeOut(300);
         $(".backlayer").fadeOut(300);
	 });
  });
 </script>
</head>
<jsp:include page="/Project/main/header.jsp" flush="true"></jsp:include>
<%-- <%@include file="/Project/header.jsp"%> --%>
<body>
<div class="backlayer"></div>
<div class="notice_title">
  <h4>결제하기</h4>
</div>
<div id="payname">
   <p>결제수단</p>
</div>
<div class="payment_form">

		<input type="radio" id="mupay" value="무통장입금" checked="checked"><span id="formname">무통장입금</span>
		<div class="moneybank">
			<div id="name_f">
				<label>입금자명
				   <input type="text" style="width: 150px; height: 25px" id="inputname_f">
				</label>
			</div>
			<div id="bank_f">
				<label>입금은행</label> <select style="width: 300px; height: 32px" id="sbank_f">
					<option selected="selected">은행을 선택해주세요</option>
					<option>국민은행 123-456789-01-123465</option>
					<option>신한은행 123-456789-01-123465</option>
					<option>우리은행 123-456789-01-123465</option>
					<option>카카오뱅크 123-456789-01-123465</option>
				</select>
			</div>
		</div>

		<div class="send_m">
       <p id="text_m">최종결제금액</p>
       <p id="price_m">580,000</p>
       <input type="button" value="결제하기" id="send_money">
   </div>
</div>

<!-- 팝업창 ------------------------->
<div id="popup_form_data">
<div class="paypopup">
   <p>결제 하시겠습니까?</p>
   <input type="button" value="결제하기" id="pay">
   <input type="button" value="취소" id="cle">
</div>
</div>
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>
