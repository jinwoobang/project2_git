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
<title>REVIEWS INFO</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="js/includeHTML.js"></script>
<style type="text/css">
/* 페이지제목 ------------------------------------- */
  .notice_title h4 {
    width: 100%;
    text-align: center;
    margin: 70px 0  90px 0;
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
/* ----------------------------------------------- */

/* 공지사항 컨텐츠 ----------------------------- */
  .nl_form {
    width: 80%;
    margin: 10px auto auto auto;
  }
  .nl_form th{ 
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
  .nl_form .nl_head #nl_head_bar #writer {
    text-align: center;
    width: 150px;
    padding: 0 50px;
  }
  .nl_form .nl_body td{
    background-color: white;
    text-align: center;
    padding: 30px 30px 100px 30px;
    border-bottom: 1px solid silver;
  } 
  .nl_form .nl_body td span{
    font-size: 10px;
    color: black;
  }
  /* ----------------------------------------------- */
  
  /* 목록버튼------------------------------------------ */
  .listback {
    margin: 20px auto 150px auto;
    width: 78%;
    text-align: right;
  }
  .listback #listbt{
    background-color: #5dafe2;
    color: white;
    font-size: 12px;
    width: 80px;
    height: 28px;
    border: none;
  }
   .listback #listbt:hover{
  background-color: skyblue;
     font-weight: bold;
     }
  /* ----------------------------------------------- */
</style>


</head>
<%@include file="/Project/main/header.jsp"%>
<body>
<div>
<div class="notice_title">
  <h4>REVIEW</h4>
</div>

  <table class="nl_form">
    <thead class="nl_head">
      <tr id="nl_head_bar">
        <th id="no">${selectInfoReview.no}</th>
        <th id="title">${selectInfoReview.title}</th>
        <th id="writer">${selectInfoReview.studNo}</th>
        <th id="classname">${selectInfoReview.className}</th>
        <th id="regdate">${selectInfoReview.regdate}</th>
      </tr>
    </thead>
    <tbody class="nl_body">
      <tr>
        <td colspan="5">
          <p></p>
          <p></p>
          <span>${selectInfoReview.contents}</span>
          <p></p>
          <p></p>
        </td>
      </tr>
    </tbody>
  </table>
    <div class="listback">
      <a href="/web/listReview.do"><input type="button" value="목록" id="listbt"></a>
    </div>

</body>
<%@include file="/Project/main/footer.jsp"%>
</html>