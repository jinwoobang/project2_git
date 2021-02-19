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
<title>자료실 업로드</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="/web/Project/NewFile.css" rel="stylesheet"> -->
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/includeHTML.js"></script>
<style type="text/css">

div, input, textarea, button {
    outline: 0;
    box-sizing: border-box;
    }
    
.tab-wrap table.simple-table th, .tab-wrap table.simple-table td {
    padding: 15px 20px;
    }
    
    .tab-wrap table.simple-table {
    width: 100%;
    border: 0px;
    border: 1px solid #ddd;
    }
    
    
    .tab-wrap table.simple-table td.left {
    text-align: left;
}


    .board-write td input {
    height: 50px;
    font-size: 16px;
}


.board-write td textarea {
    height: 250px;
    width: 100%;
    font-size: 16px;
}

.tab-wrap table.simple-table {
    width: 100%;
    border: 0px;
    border: 1px solid #ddd;
}


</style>


</head>
<%@include file="/Project/main/header.jsp"%>
<body>
<h4>1:1문의</h4>

<div class="tab-wrap">
                    <table class="simple-table board-write">
                        <tbody>
                            <tr>                            
                                <th class="short">제목</th>
                                <td class="left"><input type="textfield" class="input-l" id="subject" name="subject" maxlength="100" placeholder="제목"></td>
                            </tr>
                            <tr>                            
                                <th class="short">내용</th>
                                <td class="left"><textarea type="textfield" class="textarea" id="contents" name="content" placeholder="내용을 입력해주세요"></textarea></td>
                            </tr>
                            
                        </tbody>
                    </table>                
                </div>
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>