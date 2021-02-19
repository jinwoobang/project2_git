<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">

<style>
body {
	padding-top: 20px;
	font-family: "나눔고딕";
}

/* 타이틀----------------------------- */
.popname h1 {
	width: 80%;
	text-align: center;
	border-bottom: 5px solid #08298A;
	padding-bottom: 10px;
	margin: 10px auto;
}
/* --------------------------------- */

/* 큰틀------------------------------- */
.main_form {
	margin: 40px 150px;
	display: inline;
	width: 100%;
}

/* --------------------------------- */
/* 클릭이미지--------------------------- */
img#img_select {
	margin: 30px;
}
/* --------------------------------- */

/* 폼내부내용--------------------------- */
.choice {
	display: inline;
	vertical-align: top;
	margin-left: 40px;
}
/* .choice input{
    padding: 10px;
    margin: 30px 25px;
    font-size: 15px;
    width: 200px;
    text-align: center;
    background-color: white;
    color: black;
    border: 2px solid black;
    
}
 */
.daytime {
	display: inline-block;
}

.daytime #msg {
	padding: 10px;
	font-size: 20px;
	font-weight: bold;
	color: black;
}

.box-radio-input input[type="checkbox"] {
	display: none;
}

.box-radio-input input[type="checkbox"]+span {
	display: inline-block;
	background: none;
	border: 2px solid black;
	padding: 10px;
	width: 200px;
	margin: 30px 30px;
	text-align: center;
	color: black;
	font-size: 15px;
	line-height: 30px;
	font-weight: 500;
	cursor: pointer;
}

/* --------------------------------- */
/* 선택버튼---------------------------- */
.lastchoice {
	width: 80%;
	margin: 60px auto;
	text-align: center;
}

.lastchoice a input {
	color: white;
	width: 200px;
	line-height: 40px;
	font-size: 20px;
	margin: 20px;
	background-color: #585858;
	border: none;
}
/* --------------------------------- */
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
		$(function() {
			/* $("#aSubmit").click(function() {
				$("form[name='aFrm']").submit();
			}); */
			
			$("input:checkbox[id='inputone']").click(function() {
				//console.log($(this).prop('checked'));
				console.log($("input:checkbox[id='inputone']:checked").length);
						//alert($(this).val());
						//alert($(this).prop('checked'));
						 if ($(this).prop('checked') == true) {
							//alert("체크");
							$(this).next().css('background', '#045FB4').css('color', 'white');
						        if($(this).prop('checked') && $("input:checkbox[id='inputone']:checked").length>1){
							       alert('하나만 선택해주세요');
							       $(this).prop('checked',false);
							       $(this).next().css('background', 'none').css('color', 'black');
						        }
						} else {
							$(this).next().css('background', 'none').css('color', 'black');
						}
					});
			$("input:checkbox[id='inputtwo']").click(function() {
				//console.log($(this).prop('checked'));
				console.log($("input:checkbox[id='inputtwo']:checked").length);
						//alert($(this).val());
						//alert($(this).prop('checked'));
						 if ($(this).prop('checked') == true) {
							//alert("체크");
							$(this).next().css('background', '#045FB4').css('color', 'white');
						        if($(this).prop('checked') && $("input:checkbox[id='inputtwo']:checked").length>1){
							       alert('하나만 선택해주세요');
							       $(this).prop('checked',false);
							       $(this).next().css('background', 'none').css('color', 'black');
						        }
						 }else {
							$(this).next().css('background', 'none').css('color', 'black');
						}
					});
			$("a#send_d").click(function() {
				if($("input:checkbox[id='inputone']:checked").length==0){
					alert("요일을 선택해주세요");
				}
				if($("input:checkbox[id='inputtwo']:checked").length==0){
					alert("시간을 선택해주세요");
				}
				if($("input:checkbox[id='inputone']:checked").length==1 && $("input:checkbox[id='inputtwo']:checked").length==1){
					alert("선택이 완료 되었으며 결제가 진행됩니다");
					opener.location.href = "/web/Project/registration/payment.jsp";
					//$("form[name='aFrm']").submit();
					window.close();
					self.close();
				}
			});
			$("a#cancle_e").click(function(){
				self.close();
			});
		});
	
		function oneCheckbox(a) {
			var obj = document.getElementsByName("one");
			for (var i = 0; i < obj.length; i++) {
					console.log(obj[0]);
				if (obj[i] != a) {
					obj[i].checked = false;
				}
			}
		}
	</script>
</head>
<body>
	<div class="popname">
		<h1>원하시는 항목을 선택하여 신청버튼을 눌러주세요</h1>
	</div>
	<form action="/web/insertApply.do" method="post" name="aFrm">
		<div class="main_form">
			<span id="inputimg"><img alt="" src="/web/Project/images/basic_1_1.jpg" id="img_select"	width="460px" height="380px"></span>
			<div class="choice">
				<div class="daytime">
					<p id="msg">요일을 선택해주세요</p>
					<label class="box-radio-input"><input type="checkbox" value="WEEKDAY" name="week" id="inputone" onclick=""><span>WEEKDAY(주중)</span></label>
					<label class="box-radio-input"><input type="checkbox" value="WEEKEND" name="week" id="inputone" onclick=""><span>WEEKEND(주말)</span></label>
					<div class="time_in">
						<p id="msg">시간을 선택해주세요</p>
						<label class="box-radio-input"><input type="checkbox" value="AM(오전)" name="time" id="inputtwo"><span>AM(오전)</span></label>
						<label class="box-radio-input"><input type="checkbox" value="PM(오후)" name="time" id="inputtwo"><span>PM(오후)</span></label>
					</div>
				</div>
			</div>

			<div class="lastchoice">
				<a href="#" id="send_d"><input id="aSubmit" type="submit" value="신청하기"></a>
				<a href="#" id="cancle_e"><input type="button" value="취소"></a>
			</div>
		</div>
	</form>
</body>
</html>