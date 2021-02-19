<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("button#btn").click(function(){
	//var id=$("input[name='id']").val();
	$("form[name='frm']").submit();
	});
});
</script>
</head>
<body>
<form action="/web/drop.do" name="frm">
<input type="text" name="id"> 탈퇴할 id를 입력해 주세요 <br>
<button id="btn">탈퇴</button>
</form>
</body>
</html>