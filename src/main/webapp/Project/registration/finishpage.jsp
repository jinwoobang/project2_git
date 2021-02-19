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
<title>공지사항</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="js/includeHTML.js"></script>
<style type="text/css">
.finish_form{
  width: 70%;
  height: 280px;
  margin:  220px auto;
  text-align: center;
}
.finish_form h1{
font-size: 50px;
  padding: 10px 50px 10px 50px;
  border-top: 2px solid gray;
  border-bottom: 2px solid gray;
}
.finish_form h5{
  font-size: 15px;
  color: red;
  font-weight: lighter;
}
.finish_form #nextlist{
  width: 200px;
  line-height: 30px;
  background: none;
  border: none;
  font-size: 18px;
  margin-top: 30px;
}
.finish_form #nextlist:hover {
	font-weight: bold;
}
</style>
</head>
<jsp:include page="/Project/main/header.jsp" flush="true"></jsp:include>
<%-- <%@include file="/Project/header.jsp"%> --%>
<body>
<div class="finish_form">
  <h1>수강신청 완료 되었습니다.</h1>
  <h5>※7일 이내로 입금 부탁드립니다. 7일이 지나면 자동으로 신청이 취소됩니다※</h5>
  <a href="/web/Project/mypage/SubjectList.jsp"><input type="button" value="수강내역 바로가기 >" id="nextlist"></a>
</div>
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>
