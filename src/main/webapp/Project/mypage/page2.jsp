<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">
.table {
	margin-top: 5em;
	position: relative;
	left: 19em;
	margin-bottom: 5em;
	border-collapse: collapse;
	border:1px solid;
	word-break: break-all;
}

.page-btn {
    font-size: 14px;
    color: white;
    display: block;
    width: 100px;
    height: 30px;
    position: relative;
    top: 1.5em;
    left: 7.5em;
    background-color: #5690cc;
    border-radius: 12px;
    border: none;
}

#box {
	border-radius:20px;
    background-color: #0000000f;
    margin-top: 5em;
    position: relative;
    left: 18.5em;
    margin-bottom: 5em;
    border-collapse: collapse;

    
    }
th, td {
border: solid #0000000f;
    font-size: 34px;
    text-align: center;
    width: 300px;
    height: 200px;
    padding: 10px;
}

th{
border-top: hidden;
}
td{
border-bottom: hidden;
}
#right{
border-right: hidden;
}
#left{
border-left: hidden;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>마이페이지</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/cssall/default.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/web/Project/cssall/fonts.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/web/Project/cssall/logincss.css" rel="stylesheet"
	type="text/css" media="all" />
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	<!-- $(function(){
		
		$("#btn-Yes").click(function(){
		var id=$("input[name='id']");
		var pw=$("input[name='pw']");
		
		//alert(id.val()+" "+pw.val());
		
		if(id.val().length==0 || pw.val().length==0){
			alert('아이디나 패스워드가 올바르지 않습니다');
			id.val('');
			pw.val('');
			return false;
		}
		 $.ajax({
 			url:'/web/login.do',
 			dataType:'text',
 			type:'POST',
 			data:{id:id.val(),pw:pw.val()},
 			success:function(v){
 		    	if(v=='fail'){
 		    		$("span#sp").html("<font color=red size=3>ID Or PassCheck</font>")
 		    	}else{
 		    		document.location.href='/web/eduList.do';
 		    	}
 		    },
 		    error:function(){
 		    	alert('Error');
 		    }
 		 });
	  });
	});
</script> -->
</head><%@include file="/Project/main/header.jsp"%>

<!-- 메뉴------------------------------------------------------------>
<body>
	<table id="box">
		<thead>
			<tr>
				<th id="left"><img src="/web/Project/images/남자.png" width="100"
					height="100">
					<button class="page-btn" onclick="location.href='/web/Project/login/infomodify2.jsp'">정보수정</button></th>
				<th ><img src="/web/Project/images/수강신청.png" width="100"
					height="100">
					<button class="page-btn" onclick="location.href='/web/Project/mypage/SubjectList.jsp'">수강신청내역</button></th>

				<th id="right"><img src="/web/Project/images/연필.png" width="100"
					height="100">
					<button class="page-btn" onclick="location.href='/web/Project/mypage/review.jsp'">수강후기작성</button></th>
			</tr>

			<tr>
				<td id="left"><img src="/web/Project/images/질문.png" width="100"
					height="100">
					<button class="page-btn" onclick="location.href='/web/listCounsel.do'">1:1문의</button></td>
				<td><img src="/web/Project/images/탈퇴.png" width="100"
					height="100">
					<button class="page-btn" onclick="location.href='/web/Project/login/joinout2.jsp'">회원탈퇴</button></td>
				<td id="right"><img src="/web/Project/images/책.png" width="100"
					height="100"></td>
			</tr>
		</thead>
	</table>
</body>
</body><%@include file="/Project/main/footer.jsp"%>
</html>








