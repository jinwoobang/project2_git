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
<title>FAQ</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial"
	rel="stylesheet" />
<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="../css/custom2.css" rel="stylesheet"> -->
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="js/includeHTML.js"></script>
<script type="text/javascript">
	$(function() {
        $("dd").hide();
        $("dt#minititle").click(function(){
        	//alert($(this).next().text);
        	 if($(this).next().css("display")=="none"){
        		 $(this).next().slideDown("normal");
        	 }else {
        		 $(this).next().slideUp("normal");
        	 }
        });
	});
</script>
<style type="text/css">
/* 페이지제목 ------------------------------------- */
.notice_title h4 {
	width: 100%;
	text-align: center;
	margin: 70px 0 90px 0;
	font-weight: bold;
}
 /* -------------------------------------------- */
 
 
.faq_main {
	padding: 20px 60px;
	width: 70%;
	margin: 10px auto 70PX auto;
	
}
.faq_main .faq_one {
    margin: 45px 0;
}
.faq_main .faq_one #minititle{
   background: white;
/*     border: solid 1px skyblue;  */
   color: black;
   padding: 7px 0;
   line-height: 40px;
   display: table-cell;
   width: 1200px;
}
.faq_main .faq_one #minititle #onep{
   display: inline;
   font-size: 14px;
   font-weight: bold;
   font-family: "나눔고딕체";
}
.faq_main .faq_one #minititle>img{
 
  width: 25px;
  height: 25px;
  line-height: 25px;
  margin: 5px;
  vertical-align: middle;
}
.faq_main .faq_one #minicontent{

   color: white;
   padding: 20px;
   background: #3A6184;
   font-size: 15px;
   margin: 0;
}
.faq_main .faq_one #minicontent p{
   margin: 0;
}
</style>


</head>
<%@include file="/Project/main/header.jsp"%>
<body>
	<div>
		<div class="notice_title">
			<h4>FAQ</h4>
		</div>

		<div class="faq_main">
			<dl class="faq_one">
				<dt id="minititle"><img alt="" src="/web/Project/images/물음표.png" id="img">
				<p id="onep">홈페이지 글이 크거나 혹은 작게보여요</p>
				</dt>
				<dd id="minicontent">
					<p>홈페이지의 게시판 글이 크거나 혹은 작을 경우 아래와 같이 글자크기를 조절해주시기 바랍니다. 메뉴 중
						보기(V) -> 텍스트크기(X) -> 보통 에 체크하시면 적절한 크기의 글자로 보실 수 있으십니다. 또는 키보드의
						Ctrl 버튼을 누르고 계시면서 마우스 휠을 조정하시면 브라우저 창의 배율 확대, 축소가 가능합니다. 참고로 하우투리슨
						웹사이트의 브라우저 권장 배율은 100%입니다. 추가 문의사항은 [고객센터]-[1:1 문의하기]나 고객센터 문의전화
						1522-0534 로 문의가 가능합니다.</p>
				</dd>
			</dl>
			<dl class="faq_one">
				<dt id="minititle"><img alt="" src="/web/Project/images/물음표.png" id="img">
				<p id="onep">학창시절에 영어를 포기했습니다. 수강 가능한가요?</p>
				</dt>
				<dd  id="minicontent">
					<p>온종일 스파르타 집중관리 기초반 과정의 경우 가장 쉬운 TOEIC강의라 자부합니다. 개인별 수준에 따라
						담임선생님의 밀착 관리를 통해 학습법을 지도합니다. 끝까지 포기하지 않는다면 충분희 수강하며 따라올 수 있습니다.</p>
				</dd>
			</dl>
			<dl class="faq_one">
				<dt id="minititle"><img alt="" src="/web/Project/images/물음표.png" id="img">
				  <p id="onep">수강 전 선행학습을 하고 싶습니다. 무엇을 공부해야하나요?</p>
				</dt>
				<dd  id="minicontent">
					<p>수강 전 선행학습을 하고 싶습니다. 무엇을 공부해야하나요? 어휘를 최대한 많이 암기해오시기 바랍니다. 만약
						본인이 학원에서 선행학습을 원하는 경우에는 소정의 비용을 납부하고 미리 오셔서 학습하시면 됩니다.</p>
				</dd>
			</dl>
			<dl class="faq_one">
				<dt id="minititle"><img alt="" src="/web/Project/images/물음표.png" id="img">
				<p id="onep">환불기준은 어떻게 되나요?</p>
				</dt>
				<dd  id="minicontent">
					<p>수강변경 및 환불관련 사항은 학원 설립/운영에 관한 법률 시행력 제8조에 준합니다.</p>
				</dd>
			</dl>
			<dl class="faq_one">
				<dt id="minititle"><img alt="" src="/web/Project/images/물음표.png" id="img">
                  <p id="onep">꼭 사전에 방문상담을 해야 하나요?</p>
				</dt>
				<dd  id="minicontent">
					<p>먼 지방(제주도, 거제도, 완도 등)의 경우를 제외하고는 방문 상담을 추천합니다.</p>
				</dd>
			</dl>
			<dl class="faq_one">
				<dt id="minititle"><img alt="" src="/web/Project/images/물음표.png" id="img">
				  <p id="onep">교재를 학원에서 구매할 수 있나요?</p>
				</dt>
				<dd id="minicontent">
					<p>교재는 학원에서 판매하고 있지 않습니다. 학원에서 가까운
						서점(교보문고 등)을 안내해드리고 있으며 미리 예약하시는 수강생의 경우 필요한 교재를 별도로 공지해드리고 있습니다.</p>
				</dd>
			</dl>
		</div>
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>