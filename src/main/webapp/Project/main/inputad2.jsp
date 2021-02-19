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
.main_form{
    margin: 50px 0;
    display: -webkit-flex;
}
.event_form{
 flex: 0 0 50%;
 max-width: 50%;
 height: 600px;
 background-color: white;
/*  display: inline-block; */
}
.event_form2{
 flex: 0 0 50%;
 max-width: 50%;
 background-color: #1C1C1C;
  height: 600px;
/*   display: inline-block; */
}
.event_con1{
font-family:"나눔고딕체";
 text-align: center;
 margin: 220px auto 0;
 width: 550px;
}
.event_con1 h1{
 color: black;
 font-size:40px;
}
.event_con1 p{
 margin: 0;
 color: red;
 font-size: 18px;
 padding-bottom: 10px;
 font-weight: 800;
}
.event_con2{
  font-family:"나눔고딕체";
 text-align: center;
 margin: 220px auto 0;
 width: 550px;
  text-decoration: none;
}
.event_con2 h1{
  color: white;
  font-size:40px;
}
.event_con2 p{
  border-bottom: 3px solid white;
  text-align: right;
  height: 2px;
}
.event_con2 p a{
  color: white;
  font-size: 40px;
}
</style>
</head>
<body class="body_form">
<div class="title_no">
<p>ORDA EDU EVENT</p>
</div>
<div class="main_form">
<div class="event_form">
  <div class="event_con1">
  <h1>MAIN EVENT</h1>
  <p>2021년 1월 수강료 20% 할인</p>
  </div>
</div>
<div class="event_form2">
  <div class="event_con2">
    <h1>CLASS LIST</h1>
    <p><a href="/web/Project/registration/classlist.jsp">→</a></p>
  </div>
</div>
</div>
</body>
</html>