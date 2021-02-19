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
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial"
	rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/custom2.css" rel="stylesheet">
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/includeHTML.js"></script>
<script>
	function ViewLayer1() {
		if (document.getElementById("Pop1").style.display == "none") {
			document.getElementById("Pop1").style.display = 'inline'
		} else {
			document.getElementById("Pop1").style.display = 'none'
		}
	}

	function ViewLayer2() {
		if (document.getElementById("Pop2").style.display == "none") {
			document.getElementById("Pop2").style.display = 'inline'
		} else {
			document.getElementById("Pop2").style.display = 'none'
		}
	}
	function ViewLayer3() {
		if (document.getElementById("Pop3").style.display == "none") {
			document.getElementById("Pop3").style.display = 'inline'
		} else {
			document.getElementById("Pop3").style.display = 'none'
		}
	}
	function ViewLayer4() {
		if (document.getElementById("Pop4").style.display == "none") {
			document.getElementById("Pop4").style.display = 'inline'
		} else {
			document.getElementById("Pop4").style.display = 'none'
		}
	}
</script>

<style type="text/css">
h1#teacher {
	padding: 40px 270px;
}

@media all and (min-width:320px) {
	#wrap div {
		width: 100%;
	}
}

@media all and (min-width:768px) {
	#wrap div {
		width: 100%;
	}
}

</style>


</head>
<%@include file="/Project/main/header.jsp"%>
<body>
	<div id="wrap">
		<table width="100%" border="0" align="center">
			<tbody>
				<h1 id="teacher">학원 강사진 소개</h1>
				<tr>
					<td style="height: 100px; vertical-align: top; text-align: center;">
						<ul>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li><img src="/web/Project/images/강사1.jpg"></li>
							<a href="javascript:ViewLayer1();">더 알아보기</a>
							<Div id="Pop1"
								style="position: absolute; left: 510px; top: 490px; width: 0px; height: 0px; z-index: 1;">
								<li><img src="/web/Project/images/경력1.jpg"></li>
							</Div>

							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li><img src="/web/Project/images/강사2.jpg"></li>
							<a href="javascript:ViewLayer2();">더 알아보기</a>
							<Div id="Pop2"
								style="position: absolute; left: 300px; top: 910px; width: 0px; height: 0px; z-index: 1;">
								<li><img src="/web/Project/images/경력2.jpg"></li>
							</Div>

							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li><img src="/web/Project/images/강사3.jpg"></li>
							<a href="javascript:ViewLayer3();">더 알아보기</a>
							<Div id="Pop3"
								style="position: absolute; left: 510px; top: 1330px; width: 0px; height: 0px; z-index: 1;">
								<li><img src="/web/Project/images/경력3.jpg"></li>
							</Div>

							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li><img src="/web/Project/images/강사4.jpg"></li>
							<a href="javascript:ViewLayer4();">더 알아보기</a>
							<Div id="Pop4"
								style="position: absolute; left: 380px; top: 1750px; width: 0px; height: 0px; z-index: 1;">
								<li><img src="/web/Project/images/경력4.jpg"></li>

							</Div>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>
		<div id="wrap">
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>