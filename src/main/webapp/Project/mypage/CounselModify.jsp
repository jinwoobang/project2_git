<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>자료실 업로드</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/includeHTML.js"></script>
<style type="text/css">
button {
	cursor: pointer;
}

#title {
	font-size: 45px;
	text-align: center;
	margin: 40px;
}

.notice_title h4 {
	width: 100%;
	text-align: center;
	margin: 70px 0 90px 0;
	font-weight: bold;
}

table {
	border-collapse: collapse;
	border-spacing: 0
}

.write_form {
	margin: 10px auto;
}

.write_form #title_name {
	padding: 2px 40px;
	text-align: center;
	background-color: black;
	color: white;
	font-size: 12px;
}

.write_form #title_write {
	padding: 2px 8px;
	width: 90%;
}

.write_form #title_write #text {
	width: 100%;
	height: 20px;
}

.textbox {
	text-align: center;
	margin-bottom: 15px;
}

textarea {
	resize: none;
}

.textbox .write_form thead th {
	font-size: 12px;
	padding: 7px 10px;
	border: 1px solid black;
	background-color: black;
	color: white;
	font-weight: normal;
	width: 100%;
}

.write_bottom {
	margin: 0 auto 150px auto;
	width: 70%;
	text-align: right;
	cursor: pointer;
}

.write_bottom input {
	background-color: #5dafe2;
	color: white;
	font-size: 12px;
	border: none;
	width: 80px;
	height: 28px;
	margin: 0 10px;
	cursor: pointer;
}

.write_bottom input:hover {
	background-color: #0584d4;
	font-weight: bold;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#cSubmit").click(function() {
			$("form[name='cFrm']").submit();
		});
	});
</script>

</head>
<%@include file="/Project/main/header.jsp"%>
<body>
	<h1 id="title">1:1문의</h1>
	<form action="/web/modifyCounselAction.do" method="post" name="cFrm">
		<table class="write_form">
			<th id="title_name">제목</th>
			<td id="title_write"><input name="title" type="text" id="text"
				value="${selectInfoCounsel.title}"></td>
		</table>

		<div class="textbox">
			<table class="write_form">
				<thead>
					<th>글 내용</th>
				</thead>
				<tbody>
					<td><textarea name="contents" rows="30" cols="145">${selectInfoCounsel.contents}</textarea>
					</td>
				</tbody>
			</table>
		</div>

		<div class="write_bottom">
			<a href="/web/listCounsel.do"><input type="button" value="목록"></a>
			<a href="#"><input id="cSubmit" type="submit" value="수정하기"></a>
		</div>
	</form>
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>