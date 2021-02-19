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
<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script  src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#cSubmit").click(function() {
			$("form[name='cFrm']").submit();
		});
	});


	function popup() {
		var url = "/web/Project/registration/class_popup.jsp"
		var title = "class.select"
		var win_width = '1400';
		var win_height = '800';
		var win_left = (window.screen.width - win_width)/2;
		var win_top = (window.screen.width - win_height)/2;
		var option = "width =" +win_width+", height="+win_height+", top = "+win_top+" ,left = "+win_left+", scrollbars, resizable=yes, toobar=no"
		var win = window.open(url, title, option);
	}
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
a {
	text-decoration: none;
}
/* 수강목록 폼------------------------------------- */
.level_form {
	margin: 50px 5px 150px 5px;
	text-align: center;
}

.level_form .level_one {
	display: inline-block;
	margin: 10px 5px 50px 5px;
}

.level_form .level_one li>img:hover {
	opacity: 0.7;
}
/* -------------------------------------------- */

/* 수강신청안내 메세지-------------------------------- */
.clickname {
	margin: 0 auto;
	text-align: center;
	font-family: "나눔고딕";
	font-size: 30px;
	font-weight: bold;
	background-color: #1D3062;
	color: white;
	width: 60%;
	line-height: 50px;
}

/* -------------------------------------------- */

/* 팝업창 디자인----------------------------------- */
/* -------------------------------------------- */
</style>
</head>

<jsp:include page="/Project/main/header.jsp" flush="true"></jsp:include>
<%-- <%@include file="/Project/header.jsp"%> --%>
<body>
		<div class="notice_title">
			<h4>수강신청</h4>
		</div>
		
		<div class="clickname">수강하고자 하는 강의를 클릭해주세요.</div>
		
		<div class=level_form> 
		   <ul class="level_one">
		      <li id="l_img"><img alt="" src="/web/Project/images/basic_1_1.jpg" id="img_select" width="480px" height="400px" onclick="popup()"></li>
		      <li id="class_ex"></li>
		   </ul>
		   <ul class="level_one">
		      <li id="l_img"><img alt="" src="/web/Project/images/basic_1_2.jpg" id="img_select" width="480px" height="400px" onclick="popup()"></li>
		      <li id="class_ex"></li>
		   </ul>
		   <ul class="level_one">
		      <li id="l_img"><img alt="" src="/web/Project/images/basic_1_3.jpg" id="img_select" width="480px" height="400px" onclick="popup()"></li>
		      <li id="class_ex"></li>
		   </ul>
		</div>
		<!-- popup ------------------>
		<!--  ----------------------->
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>