<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
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
<title>자료실 업로드</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/cssall/default.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/includeHTML.js"></script>
<style type="text/css">
/* 페이지제목 ------------------------------------- */
.notice_title h4 {
	width: 100%;
	text-align: center;
	margin: 70px 0 90px 0;
	font-weight: bold;
}
/* -------------------------------------------- */

/* 기본기능 --------------------------------------- */
table {
	border-collapse: collapse;
	border-spacing: 0
}

textarea {
	resize: none;
}
/* -------------------------------------------- */

/* 글쓰기 제목 폼 --------------------------------------- */
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
/* -------------------------------------------- */
/* 글쓰기 내용 폼 --------------------------------------- */
.textbox {
	text-align: center;
	margin-bottom: 15px;
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
/* -------------------------------------------- */

/* 목록, 등록하기 버튼------------------------------- */
.write_bottom {
	margin: 0 auto 150px auto;
	width: 70%;
	text-align: right;
}

.write_bottom input {
	background-color: #5dafe2;
	color: white;
	font-size: 12px;
	border: none;
	width: 80px;
	height: 28px;
	margin: 0 10px;
}

.write_bottom input:hover {
	background-color: skyblue;
	font-weight: bold;
}
/* -------------------------------------------- */

/* 파일업로드 버튼---------------------------------- */
.filetable {
	margin: 0 auto;
	width: 67%;
	text-align: left;
}

.filetable #input_file {
	/* display: none; */
	
}

.file_button {
	padding: 7px 25px;
	background-color: #5dafe2;
	color: white;
	cursor: pointer;
	font-size: 12px;
}

.file_button:hover {
	background-color: skyblue;
	font-weight: bold;
}
/* -------------------------------------------- */
</style>

<script type="text/javascript">
$(function() {
	$("#save").click(function(){
		$("form[name='sfrm']").submit();
	});
});
</script>

</head>
<%@include file="/Project/main/header.jsp"%>
<body>
	<div class="notice_title">
		<h4>자료 업로드</h4>
	</div>

<form action="/web/insertStorage.do" name="sfrm" method="post" enctype="multipart/form-data">
	<table class="write_form">
		<th id="title_name">제목</th>
		<td id="title_write"><input type="text" id="text" name="title"></td>
	</table>
	<div class="filetable">
		<label class="file_button" for="input_file">업로드 </label> <input
			type="file" id="input_file" name="file" />
	</div>

	<div class="textbox">
		<table class="write_form">
			<thead>
				<th>글 내용</th>
			</thead>
			<tbody>
				<td><textarea rows="30" cols="145" name="contents"></textarea></td>
			</tbody>
		</table>
	</div>

	<div class="write_bottom">
		<a href="/web/listStorage.do"><input type="button" value="목록"></a>
		<a href="/web/listStorage.do"><input type="button" value="등록하기" id="save" name="save"></a>
	</div>
	</form>
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>