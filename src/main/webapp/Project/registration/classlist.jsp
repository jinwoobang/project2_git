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
<title>수강신청</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<style type="text/css">
/* 페이지제목 ------------------------------------- */
.notice_title h4 {
	width: 100%;
	text-align: center;
	margin: 70px 0 90px 0;
	font-weight: bold;
}
 /* -------------------------------------------- */
 
 /* 수강목록 폼------------------------------------- */
 .level_form {
   margin: 150px 5px  50px 5px;
   text-align: center;
 }
.level_form .level_one{
   display: inline-block;
   margin: 10px 5px 50px 5px;
 }
 .level_form .level_one #class_ex>ul>li{
   padding: 5px 0;
   color: black;
   font-weight: bold;
   font-size: 16px;
 }
  /* -------------------------------------------- */
  
  /* 레벨테스트 버튼---------------------------------- */
 .clickbtn{
   text-align: center;
   margin: 10px auto 120px auto;
   width: 25%;
   background-color: #1D3062;
/*    border-radius: 10px; */
 }
/*  .clickbtn:hover{ */
/*    background-color: skyblue; */
/*  } */
  .clickbtn p a{
   line-height: 50px;
   text-decoration: none;
   color: white;
   font-size: 30px;
   font-family: "나눔고딕체";
 }
  /* -------------------------------------------- */
</style>
</head>
<jsp:include page="/Project/main/header.jsp" flush="true"></jsp:include>
<%-- <%@include file="/Project/header.jsp"%> --%>
<body>
		<div class="notice_title">
			<h4>강의목록</h4>
		</div>
		
		<div class=level_form> 
		   <ul class="level_one">
		      <li id="l_img"><img alt="" src="/web/Project/images/basic_1_1.jpg" width="480px" height="380px"></li>
		      <li id="class_ex">
		         <ul>
		           <li>영어에 대한 기초가 필요하신 분들</li>
		           <li>영어공부를 처음 시작하시는 분들</li>
		         </ul>
		      </li>
		   </ul>
		   <ul class="level_one"> 	
		      <li id="l_img"><img alt="" src="/web/Project/images/basic_1_2.jpg" width="480px" height="380px"></li>
		      <li id="class_ex">
		         <ul>
		           <li>기초는 있으나 응용이 어려운 분들</li>
		           <li>문법의 어려움이 있는 분들</li>
		         </ul>
		      </li>
		   </ul>
		   <ul class="level_one">
		      <li id="l_img"><img alt="" src="/web/Project/images/basic_1_3.jpg" width="480px" height="380px"></li>
		      <li id="class_ex">
		         <ul>
		           <li>실력을 한단계 더욱 업그레이드 하고싶은 분들</li>
		           <li>영어를 업무에서 사용하셔야 하는 분들</li>
		         </ul>
		      </li>
		   </ul>
		</div>
		
		<div class="clickbtn">
		   <p><a href="/web/Project/test/levelTest1.jsp">LEVET TEST</a></p>
		</div>
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>