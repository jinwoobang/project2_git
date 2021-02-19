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
<link href="/web/Project/default.css" rel="stylesheet" type="text/css"
	media="all" />
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

a:hover {
	font-weight: bold;
	color: black;
}
/* -------------------------------------------- */

/* 자료실 내용 폼 --------------------------------------- */
.notice_table {
	margin: 130px auto 30px auto;
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
/* -------------------------------------------- */
.notice_search {
	float: right;
	margin-right: 16%;
	border-style: none;
}

.notice_search #sb_sb {
	background-color: black;
	color: white;
	font-size: 12px;
	width: 80px;
	height: 26px;
}

/* 검색폼  ---------------------------------------------------------- */
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
/* -------------------------------------------- */

/* 자료올리기 버튼----------------------------------- */
.button_bar {
	margin-bottom: 2px;
}

.button_bar>input {
	display: inline;
}

.button_bar #upload {
	float: left;
	margin-left: 16%;
	background-color: #5dafe2;
	color: white;
	border-style: none;
	font-size: 12px;
	width: 80px;
	height: 28px;
	margin-bottom: 0;
	font-weight: normal;
	text-align: center;
}

.button_bar #upload:hover {
	background-color: skyblue;
	font-weight: bold;
}
/* -------------------------------------------- */
</style>


</head>
<jsp:include page="/Project/main/header.jsp" flush="true"></jsp:include>
<%-- <%@include file="/Project/header.jsp"%> --%>
<body>
	<div>
		<div class="notice_title">
			<h4>STORAGE</h4>

		</div>
		<div class="button_bar">
			<a href="/web/Project/noticeboard/dataupload.jsp"><input
				type="button" value="자료 올리기" id="upload"></a>
			<div class="notice_search">
				<input type="text" id="sb" style="width: 180px; height: 20px;">
				<a href="#"><input type="button" value="SEARCH" id="sb_sb"
					style="background-color: black; color: white; font-size: 12px;"></a>
			</div>
		</div>
		<table class="notice_table">
			<thead class="notice_head">
				<tr id="headbar">
					<th>no</th>
					<th>title</th>
					<th>code</th>
					<th>regdate</th>
					<th>hit</th>
				</tr>
			</thead>
			<tbody class="notice_body">
				<c:forEach var="i" items="${slist}" varStatus="cnt">
					<tr>
						<td>${cnt.count}</td>
						<td><a href="selectInfoStorage.do?job=sinfo&no=${i.no}">${i.title}</a></td>
						<td>${i.teaNo}</td>
						<td>${t.regdate}</td>
						<td>${i.hit}</td>
					</tr>
				</c:forEach>
				<!-- 				<tr>
					<td>2</td>
					<td><a href="/web/Project/noticeboard/datalistinfo.jsp">두번째 자료 입니다</a></td>
					<td>작성자2</td>
					<td>2020/11/16</td>
					<td>11</td>
				</tr>
				<tr>
					<td>3</td>
					<td><a href="#">세번째 자료 입니다</a></td>
					<td>작성자3</td>
					<td>2020/11/16</td>
					<td>5</td>
				</tr>
				<tr>
					<td>4</td>
					<td><a href="#">네번째 자료 입니다</a></td>
					<td>작성자4</td>
					<td>2020/11/16</td>
					<td>15</td>
				</tr>
				<tr>
					<td>5</td>
					<td><a href="#">다섯번째 자료 입니다</a></td>
					<td>작성자5</td>
					<td>2020/11/16</td>
					<td>30</td>
				</tr>
				<tr>
					<td>6</td>
					<td><a href="#">여섯번째 자료 입니다</a></td>
					<td>작성자6</td>
					<td>2020/11/16</td>
					<td>30</td>
				</tr>
				<tr>
					<td>7</td>
					<td><a href="#">일곱번째 자료 입니다</a></td>
					<td>작성자7</td>
					<td>2020/11/16</td>
					<td>30</td>
				</tr>
				<tr>
					<td>8</td>
					<td><a href="#">여덟번째 자료 입니다</a></td>
					<td>작성자8</td>
					<td>2020/11/16</td>
					<td>30</td>
				</tr>
				<tr>
					<td>9</td>
					<td><a href="#">아홉번째 자료 입니다</a></td>
					<td>작성자9</td>
					<td>2020/11/16</td>
					<td>30</td>
				</tr>
				<tr>
					<td>10</td>
					<td><a href="#">열번째 자료 입니다</a></td>
					<td>작성자10</td>
					<td>2020/11/16</td>
					<td>30</td>
				</tr> -->
			</tbody>
		</table>
		<div class="page_main">
			<span><a href="#"><img alt=""
					src="/web/Project/images/왼쪽화살표.png" style="width: 20px;"></a></span>
			<p>
				<a href="#">1</a>
			</p>
			<p>
				<a href="#">2</a>
			</p>
			<p>
				<a href="#">3</a>
			</p>
			<span><a href="#"><img alt=""
					src="/web/Project/images/오른쪽화살표.png" style="width: 20px;"></a></span>
		</div>
		<!--  /* 공지사항 틀과 똑같음 */ -->
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>