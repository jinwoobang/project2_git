
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial"
	rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/custom2.css" rel="stylesheet">
<link href="/web/Project/NewFile.css" rel="stylesheet">
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/includeHTML.js"></script>

<style type="text/css">
div.a {
	text-align: center;
	font-size: x-large;
	border: 2px solid;
	padding: 70px;
	margin: 170px;
	background: silver;
}

div.b {
	text-align: center;
	font-size: xxx-large;
}

div.d {
	text-align: center;
}

div.q {
	text-align: center;
	font-size: large;
}
</style>


</head>
<%@include file="/Project/main/header.jsp"%>
<body>

	<br>
	<br>
	<br>
	<div class="b">
		<strong id="01">level Test</strong><br> <br>
	</div>

	<div class="q">
		<spen>본 레벨 테스트는 학습자 수준에 맞는 학습코스를 선택하시는데 도움을 드리는 테스트입니다</spen>
	</div>

	<br>

	<div class="q">
		<img src="/web/Project/images/테스트주의사항.jpg">
	</div>

	<div class="a">

		<span><strong>레벨 테스트 시작하기</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(밑에있는
		시작 버튼을 눌러주세요) <br> <br> <br> <br>
		<div class="d">
			<input type="button" style="WIDTH: 200pt; HEIGHT: 100pt" name="btn"
				value="시 작" onclick="location.href='/web/Project/test/levelTest.jsp'">


		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>



</body>
<%@include file="/Project/main/footer.jsp"%>
</html>