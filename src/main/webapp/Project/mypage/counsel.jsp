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
<title>자료실</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/includeHTML.js"></script>
<style type="text/css">
#counsel-title {
	border-style: solid;
	border-width: 0 0 2px 8px;
	padding: 12px;
	word-break: break-all;
}

.notice_title h4 {
	width: 100%;
	text-align: center;
	font-weight: bold;
}

table {
	border-collapse: collapse;
	border-spacing: 0
}
/* 공지사항 틀과 똑같음 */
.notice_table {
	margin: 100px auto 30px auto;
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

.notice_write #sb_sb {
	float: right;
	margin-right: 16%;
	border-style: none;
	background-color: #5dafe2;
	color: white;
	font-size: 12px;
	width: 80px;
	height: 26px;
	border: none;
}

.page_main {
	text-align: center;
	margin: 20px auto 80px auto;
	/* height: 100%; */
	line-height: 50px;
}

.page_main p {
	display: inline;
	padding: 0 5px;
}

.page_main img {
	vertical-align: middle;
}

.notice_write #sb_sb:hover {
	background-color: #FE9A2E;
}

a {
	text-decoration: none;
}
/* 공지사항 틀과 똑같음 */
</style>
<script type="text/javascript">
	$(function() {
		$("dd").hide();
		$("dt#minititle").click(function() {
			//alert($(this).next().text);
			if ($(this).next().css("display") == "none") {
				$(this).next().slideDown("normal");
			} else {
				$(this).next().slideUp("normal");
			}
		});
	});
</script>

</head>
<%@include file="/Project/main/header.jsp"%>
<body>
	<div>
		<div class="notice_title">
			<h4 id="counsel-title">1:1문의</h4>

		</div>
		<div class="notice_write">
			<a href="/web/Project/mypage/CounselWrite.jsp"><input
				type="button" value="WRITE" id="sb_sb"
				style="background-color: black; color: white; font-size: 12px;"></a>
		</div>
	</div>


	<table class="notice_table">
		<thead class="notice_head">
			<tr id="headbar">
				<th>NO.</th>
				<th>TITLE</th>
				<th>REGDATE</th>
				<th>ANSWER</th>
				<th>HIT</th>
			</tr>
		</thead>
		<tbody class="notice_body">
			<c:forEach var="i" items="${clist}" varStatus="cnt">
				<tr>
					<td>${cnt.count}</td>
					<td><a href="selectInfoCounsel.do?job=cinfo&no=${i.no}">${i.title}</a></td>
					<td>${i.regdate}</td>
					<td>답변</td>
					<td>${i.hit}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="page_main">
		<span><a href="#"><img alt=""
				src="/web/Project/images/왼쪽화살표.png" style="width: 20px;"></a></span>
		<p>
			<a href="#">1</a>
		</p>
		<span><a href="#"><img alt=""
				src="/web/Project/images/오른쪽화살표.png" style="width: 20px;"></a></span>
	</div>
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>