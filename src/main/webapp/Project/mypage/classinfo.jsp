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
<title>자료실</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/default.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/includeHTML.js"></script>
<style type="text/css">

/* 페이지제목 ------------------------------------- */
.notice_title h4 {
	width: 100%;
	text-align: center;
	font-weight: bold;
}
 /* -------------------------------------------- */

/* 기본기능 --------------------------------------- */
table {
	border-collapse: collapse;
	border-spacing: 0
}
 a:hover {
    font-weight: bold;
    color: black;
  }
/* -------------------------------------------- */

/* 자료실 내용 폼 --------------------------------------- */
.notice_table {
	margin: 40px auto 30px auto;
	width: 70%;
}

.notice_table th {
	padding: 5px 0;
}

.notice_table td {
	padding: 10px 0;
}

.notice_table .notice_head tr {
	
	/* background-color: black; */
}

.notice_table .notice_head th {
	font-size: 14px;
	text-align: center;
	background-color: black;
	border-bottom: 5px solid white;
	font-weight: normal;
}

.notice_table .notice_head #headbar th {
	color: white;
}

.notice_table .notice_body td {
	font-size: 12px;
	text-align: center;
	color: black;
	border-bottom: 1px solid silver;
}
</style>


</head>
<jsp:include page="/Project/main/header.jsp" flush="true"></jsp:include>
<%-- <%@include file="header.jsp"%> --%>
<body>
	<div>
		<div class="notice_title">
			<h4>강의정보</h4>

		</div>
		</div>
		<table class="notice_table">
			<thead class="notice_head">
				<tr id="headbar">
					<th>NO.</th>
					<th>title</th>
					<th>code</th>
					<th>regdate</th>
					<th>hit</th>
				</tr>
			</thead>
			<tbody class="notice_body">
				<tr>
					<td>1</td>
					<td><a href="/web/Project/noticeboard/datalistinfo.jsp">첫번째 자료 입니다</a></td>
					<td>작성자1</td>
					<td>2020/11/16</td>
					<td>10</td>
				</tr>
				<tr>
					<td>2</td>
					<td><a href="/web/Project/noticeboard/datalistinfo.jsp">두번째 자료 입니다</a></td>
					<td>작성자2</td>
					<td>2020/11/16</td>
					<td>11</td>
				</tr>
			
			</tbody>
		</table>
		<!--  /* 공지사항 틀과 똑같음 */ -->
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>