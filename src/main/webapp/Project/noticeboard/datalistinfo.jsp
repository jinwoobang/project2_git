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
<title>자료실 상세내용</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/default.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="js/includeHTML.js"></script>
<script type="text/javascript">
	$(function() {
		$(".reply_input_main").hide();
		$("input#replyd")
				.click(
						function() {
							//alert($(".reply_input"));
							if ($(this).parent().parent().next().css("display") == "none") {
								$(this).parent().parent().next().slideDown();
							} else if ($(this).parent().parent().next().css(
									"display") != "none") {
								$(this).parent().parent().next().slideUp();
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

/* 기본기능 --------------------------------------- */
table {
	border-collapse: collapse;
	border-spacing: 0
}

a {
	text-decoration: none;
}

textarea {
	resize: none;
}
/* -------------------------------------------- */

/* 자료실 상세내용 폼-------------------------------- */
.nl_form {
	width: 80%;
	margin: 10px auto auto auto;
}

.nl_form th {
	padding: 0 100px;
	border-top: 1px solid silver;
	border-bottom: 1px solid silver;
	font-size: 12px;
	padding-top: 5px;
	padding-bottom: 5px;
}

.nl_form .nl_head #nl_head_bar {
	margin-bottom: 50px;
}

.nl_form .nl_head #nl_head_bar #no {
	text-align: center;
	padding: 0 30px;
}

.nl_form .nl_head #nl_head_bar #title {
	text-align: center;
}

.nl_form .nl_head #nl_head_bar #fileex {
	background-color: silver;
	width: 150px;
	padding: 0 50px;
}

.nl_form .nl_head #nl_head_bar #fileex:hover {
	background-color: #A4A4A4;
	font-weight: bold;
}

.nl_form .nl_body td {
	background-color: white;
	text-align: center;
	padding: 30px 30px 100px 30px;
	border-bottom: 1px solid silver;
}

.nl_form .nl_body td span {
	font-size: 12px;
	color: black;
}
/* -------------------------------------------- */

/* 목록 버튼-------------------------------------- */
.listback {
	margin: 20px auto 150px auto;
	width: 78%;
	text-align: right;
}

.listback #listbt {
	background-color: #5dafe2;
	color: white;
	font-size: 12px;
	width: 80px;
	height: 28px;
	border: none;
}

.listback #listbt:hover {
	background-color: skyblue;
	font-weight: bold;
}
/* -------------------------------------------- */

/* 댓글 제목 -------------------------------------- */
.replytitle {
	border-bottom: 1px solid gray;
	width: 80%;
	margin: 3px auto 0 auto;
}

.replytitle h2 {
	padding: 5px 12px;
	font-weight: normal;
	font-size: 20px;
}
/* -------------------------------------------- */

/* 댓글 입력 폼------------------------------------- */
.reply {
	width: 80%;
	margin: 10px 210px;
}

#reply_button {
	text-align: center;
	width: 100%;
}

#rbnt {
	background-color: #0B243B;
	color: white;
	font-weight: normal;
	border: none;
	width: 70px;
	height: 40px;
}

#rbnt:hover {
	background-color: #0B3861;
	font-weight: bold;
}
/* -------------------------------------------- */

/* 자료실 상세내용 수정, 삭제 버튼------------------------------------------ */
.moddel {
	margin: 20px auto;
	width: 78%;
	text-align: left;
}

.moddel input {
	background-color: black;
	color: white;
	font-size: 12px;
	width: 55px;
	height: 28px;
	margin: 0 4px;
	font-weight: normal;
	border: none;
}

.moddel input:hover {
	background-color: #2E2E2E;
}
/* --------------------------------------------------------------- */

/* 댓글 내용 폼+ 대댓글 입력버튼 + 삭제버튼------------------------------------ */
.reply_form {
	width: 79%;
	margin: 40px 180px;
	/* border-top: 1px solid gray; */
	/* border-bottom: 1px solid gray; */
}

.reply_form #pid {
	background-color: #2E2E2E;
	color: white;
	font-weight: normal;
	text-align: center;
	width: 150px;
	margin-top: 10px;
	margin-bottom: 0;
}

#textb {
	background-color: white;
	width: 60pc;
	margin-top: 0;
	margin-bottom: 0;
	height: auto;
	font-size: 15px;
	color: black;
	padding: 20px;
	text-align: left;
	font-weight: normal;
}

.form_table .form_tr #form_td {
	text-align: center;
	padding: 20px 35px;
	width: 50px;
}

#form_td>input[id='replyd'] {
	background-color: #0B173B;
	color: white;
	font-weight: normal;
	border: none;
	width: 70px;
	height: 40px;
}

#form_td2>a>input[id='replyd'] {
	background-color: #6E6E6E;
	color: white;
	font-weight: normal;
	border: none;
	width: 70px;
	height: 40px;
}
/* --------------------------------------------------------------- */

/* 대댓글 입력창 + 저장 버튼 ----------------------------------------------- */
.reply_input_main {
	margin-top: 15px;
}

.reply_input_main #reply_input_button {
	text-align: center;
	width: 100px;
	padding-left: 15px;
}

#inputbnt {
	background-color: #0B243B;
	color: white;
	font-weight: normal;
	border: none;
	width: 70px;
	height: 40px;
}
/* --------------------------------------------------------------- */

/* 대댓글 내용 폼 ----------------------------------------------- */
.reply_form_plus {
	width: 79%;
	margin: 40px 180px;
	/* border-top: 1px solid gray; */
	/* border-bottom: 1px solid gray; */
}

#textb_b {
	background-color: #FBF5EF;
	width: 60pc;
	margin: 0 30px 0 30px;
	height: auto;
	font-size: 15px;
	color: black;
	padding: 20px;
	text-align: left;
	font-weight: normal;
}

/* --------------------------------------------------------------- */
.reply_dd {
	width: 100%;
	margin: 10px 220px;
}

.reply_dd #rsp {
	padding: 50px 10px;
	margin: auto;
}

.reply_dd #rsp>img {
	display: inline;
}
</style>


</head>
<%@include file="/Project/main/header.jsp"%>
<body>
	<div>
		<div class="notice_title">
			<h4>자료실</h4>
		</div>

		<div class="moddel">
			<a href="/web/Project/noticeboard/dataupload.jsp"><input
				type="button" value="수정" id="mod"></a> <a href="#"><input
				type="button" value="삭제" id="del"></a>
		</div>

		<table class="nl_form">
			<thead class="nl_head">
				<tr id="nl_head_bar">
					<th id="no">${selectInfoStorage.no}</th>
					<th id="title">${selectInfoStorage.title}</th>
					<th id="fileex"><a href="example.html">${selectInfoStorage.fileName}</a></th>
				</tr>
			</thead>
			<tbody class="nl_body">
				<tr>
					<td colspan="3">
						<p></p>
						<!-- 여백 -->
						<p></p>
						<!-- 여백 --> <span> ${selectInfoStorage.contents} </span>
						<p></p>
						<!-- 여백 -->
						<p></p>
						<!-- 여백 -->
					</td>
				</tr>
			</tbody>
		</table>


		<div class="listback">
			<a href="/web/listStorage.do"><input type="button" value="목록"
				id="listbt"></a>
		</div>

		<div class="replytitle">
			<h2>
				댓글<span>10</span>
			</h2>
		</div>

		<table class="reply">
			<tr class="reply_main">
				<th id="reply_text"><textarea rows="5" cols="150" id="texts"></textarea>
				</th>
				<td id="reply_button"><a href="#"><input type="button"
						value="저장" id="rbnt"></a></td>
			</tr>
		</table>

		<div class="reply_form">
			<p id="pid">ID</p>

			<table class="form_table">
				<tr class="form_tr">
					<th id="form_th">
						<p id="textb">
							책은 인생의 험준한 바다를 항해하는데 도움이 되게 남들이 마련해 준 나침반이요, 망원경이고 육분의고 도표이다. -
							제시 리 베넷<br> 독서는 완성된 사람을 만들고, 담론은 재치있는 사람을 만들며, 필기는 정확한 사람을
							만든다. - 베이컨
						</p>
					</th>
					<td id="form_td"><input type="button" value="입력" id="replyd">
					</td>
					<td id="form_td2"><a href="#"><input type="button"
							value="삭제" id="replyd"></a></td>
				</tr>


				<!-- 대댓글기능 ----------------------------------------------------------------------------------->
				<!-- hide로 댓글의 입력창을 눌렀을때만 나온다 -->
				<tr class="reply_input_main">
					<th id="reply_input_text"><textarea rows="4" cols="135"
							id="texts"></textarea></th>
					<td id="reply_input_button"><a href="#"><input
							type="button" value="저장" id="inputbnt"></a></td>
				</tr>

			</table>
		</div>

		<div class="reply_form_plus">
			<table class="form_table_plus">
				<tr>
					<th><img alt=""
						src="/web/Project/noticeboard/images/right.png"></th>
					<td>
						<p id="textb_b">Thanks.</p>
					</td>
					<td id="form_td2"><a href="#"><input type="button"
							value="삭제" id="replyd"></a></td>
				</tr>
			</table>
		</div>

		<!---  -------------------------------------------------------------------------------------->

		<div class="reply_form">
			<p id="pid">ID</p>

			<table class="form_table">
				<tr class="form_tr">
					<th id="form_th">
						<p id="textb">
							책은 인생의 험준한 바다를 항해하는데 도움이 되게 남들이 마련해 준 나침반이요, 망원경이고 육분의고 도표이다. -
							제시 리 베넷<br> 독서는 완성된 사람을 만들고, 담론은 재치있는 사람을 만들며, 필기는 정확한 사람을
							만든다. - 베이컨
						</p>
					</th>
					<td id="form_td"><input type="button" value="입력" id="replyd">
					</td>
					<td id="form_td2"><a href="#"><input type="button"
							value="삭제" id="replyd"></a></td>
				</tr>


				<!-- 대댓글기능 ----------------------------------------------------------------------------------->
				<!-- hide로 댓글의 입력창을 눌렀을때만 나온다 -->
				<tr class="reply_input_main">
					<th id="reply_input_text"><textarea rows="4" cols="135"
							id="texts"></textarea></th>
					<td id="reply_input_button"><a href="#"><input
							type="button" value="저장" id="inputbnt"></a></td>
				</tr>

			</table>
		</div>

		<!--  <div class="reply_form_plus">
		<table class="form_table_plus">
			<tr>
				<th><img alt="" src="/web/Project/noticeboard/images/right.png"></th>
				<td>
					<p id="textb_b">Thanks.</p>
				</td>
				<td id="form_td2">
				    <a href="#"><input type="button" value="삭제" id="replyd"></a>
				</td>
			</tr>
		</table>
 </div> -->
		<!---  -------------------------------------------------------------------------------------->
		<div class="reply_form">
			<p id="pid">ID</p>

			<table class="form_table">
				<tr class="form_tr">
					<th id="form_th">
						<p id="textb">
							책은 인생의 험준한 바다를 항해하는데 도움이 되게 남들이 마련해 준 나침반이요, 망원경이고 육분의고 도표이다. -
							제시 리 베넷<br> 독서는 완성된 사람을 만들고, 담론은 재치있는 사람을 만들며, 필기는 정확한 사람을
							만든다. - 베이컨
						</p>
					</th>
					<td id="form_td"><input type="button" value="입력" id="replyd">
					</td>
					<td id="form_td2"><a href="#"><input type="button"
							value="삭제" id="replyd"></a></td>
				</tr>


				<!-- 대댓글기능 ----------------------------------------------------------------------------------->
				<!-- hide로 댓글의 입력창을 눌렀을때만 나온다 -->
				<tr class="reply_input_main">
					<th id="reply_input_text"><textarea rows="4" cols="135"
							id="texts"></textarea></th>
					<td id="reply_input_button"><a href="#"><input
							type="button" value="저장" id="inputbnt"></a></td>
				</tr>

			</table>
		</div>
		<!--        
 <div class="reply_form_plus">
		<table class="form_table_plus">
			<tr>
				<th><img alt="" src="/web/Project/noticeboard/images/right.png"></th>
				<td>
					<p id="textb_b">Thanks.</p>
				</td>
				<td id="form_td2">
				    <a href="#"><input type="button" value="삭제" id="replyd"></a>
				</td>
			</tr>
		</table>
 </div> -->
		<!---  -------------------------------------------------------------------------------------->
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>