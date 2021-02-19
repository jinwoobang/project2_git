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
<link href="/web/Project/cssall/default.css" rel="stylesheet"
	type="text/css" media="all" />
<style type="text/css">
.title_no {
font-family:"나눔고딕체";
width: 100%;
text-align: center;
margin: 100px 0 10px 0;
text-decoration: overline;
}
.title_no p{
font-family:"나눔고딕체";
 font-size: 25px;
 color: black;
}

/* 전체적인 틀 */
.strength_form{
font-family:"나눔고딕체";
 margin: 70px auto;
 text-align: center;
 width: 100%;
}
.strength_main{
 margin: 0;
 text-align: center;
 width: 340px;
 display: inline-block;
/*  border: 2px solid black; */
 padding: 1px;
} 
.strength_main #number_n{
  font-size: 25px;
  background-color: #1D3062;
  color: white;
  line-height: 35px;
/*   padding: 10px; */
  font-weight: 1000;
}
.strength_main #text_n{
  line-height: 20px;
  background-color: #000E31;
  font-size: 18px;
  color: white;
/*   padding: 10px; */
  font-weight: 100;
/*   border-bottom: 3px solid #1D3062; */
}
</style>
</head>
<body class="body_form">
<div class="title_no">
<p>ORDA EDU STRENGTH</p>
</div>
<div class="strength_form">
		<ul class="strength_main">
			<li id="number_n">FIRST.</li>
			<li id="text_n">레벨테스트</li>
			<li><img alt="" src="/web/Project/images/leveltest.jpg" width="340px" height="500px"></li>
		</ul>
		<ul class="strength_main">
			<li id="number_n">SECOND.</li>
			<li id="text_n">누구든 수강가능</li>
			<li><img alt="" src="/web/Project/images/everyone.jpg" width="340px" height="500px"></li>
		</ul>
		<ul class="strength_main">
			<li id="number_n">THIRD.</li>
			<li id="text_n">실력 인증된 강사진</li>
			<li><img alt="" src="/web/Project/images/teacher.jpg" width="340px" height="500px"></li>
		</ul>
		<ul class="strength_main">
			<li id="number_n">FOURTH.</li>
			<li id="text_n">수강생 만족도 최상</li>
			<li><img alt="" src="/web/Project/images/thumb.jpg" width="340px" height="500px"></li>
		</ul>

	</div>
</body>
</html>