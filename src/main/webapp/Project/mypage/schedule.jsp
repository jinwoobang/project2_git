<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<style>
  table {
    width: 53%;
    border: 1px solid #444444;
    border-collapse: collapse;
    margin: auto;
  }
  th, td {
    border: 1px solid #444444;
    padding: 10px;
  }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/Project/cssall/default.css" rel="stylesheet"type="text/css" media="all" />
<link href="/web/Project/cssall/fonts.css" rel="stylesheet"type="text/css" media="all" />
<link href="/web/Project/cssall/logincss.css" rel="stylesheet"type="text/css" media="all" />
<style>
body {
   padding-top: 20px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function() {
   
});
</script>

</head>
<%@include file="/Project/main/header.jsp"%>
<body>
<br><br><br>
<table width=400 height="600" style="color: #121212">
<caption>▶   강의 시간표  ◀</caption>
  <tr width=19% id="day">
    <th></th>
    <th>월</th>
    <th>화</th>
    <th>수</th>
    <th>목</th>
    <th>금</th>
  </tr>
  <tr>
    <th>9</th>
    <td></td>
    <td></td>
    <td rowspan="2" style="background-color: #f08676"></td>
    <td rowspan="2" style="background-color: #70a5e9"></td>
    <td rowspan="2" style="background-color: #75ca87"></td>
  </tr>
  <tr>
    <th>10</th>
    <td></td>
  </tr>
  <tr>
    <th>11</th>
    <td style="background-color: #f08676"></td>
    <td></td>
    <td></td>
    <td></td>
    <td rowspan="2" style="background-color: #d397ed"></td>
  </tr>
  <tr>
    <th>12</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>1</th>
    <td></td>
    <td rowspan="2" style="background-color: #a6c96f"></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>2</th>
    <td></td>
    <td rowspan="2" style="background-color: #7ad1c0"></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>3</th>
    <td></td>
    <td></td>
    <td rowspan="2" style="background-color: #fbaa69"></td>
    <td></td>
  </tr>
  <tr>
    <th>4</th>
    <td></td>
    <td></td>
    <td></td>
    <td rowspan="3" style="background-color: #9d86e0"></td>
  </tr>
  <tr>
    <th>5</th>
    <td></td>
    <td></td>
    <td></td>
    <td rowspan="2" style="background-color: #f08676"></td>
  </tr>
  <tr>
    <th>6</th>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
<br><br><br>
</body>	
</html>
<%@include file="/Project/main/footer.jsp"%>