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
<style type="text/css">
h1#come {
	padding: 40px 200px;
}

div#mapMove {
	margin-left: 15%;
}

div#ping {
	margin-left: 60%;
	margin-top: -30%;	
}

p#pingsub {
	margin-left: 30%;
    margin-top: 100px;
}

div#bus {
	text-align: center;
}

.root_daum_roughmap root_daum_roughmap_landing{
width: 10em;

}
</style>


</head>
<%@include file="/Project/main/header.jsp"%>
<body>

	<h1 id="come">학원오시는길</h1>



	<!--지도-->
	<div id="mapMove" width="100px">

		<div id="daumRoughmapContainer1605606977411"
			class="root_daum_roughmap root_daum_roughmap_landing"></div>

		<script charset="UTF-8" class="daum_roughmap_loader_script"
			src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

		<script charset="UTF-8">
			new daum.roughmap.Lander({
				"timestamp" : "1605606977411",
				"key" : "22ysg",
				"mapWidth" : "560",
				"mapHeight" : "360"
			}).render();
		</script>
	</div>

	<!-- ----------------------------------------------------------------------------- -->
	<div id="ping">


		<p id="pingsub"> <img src="/web/Project/images/위치.jpg" height="80" width="80">
			<font size=5>주소</font><br><br>서울특별시 강남구 테헤란로 132(역삼동) <br>한독약품빌딩
			8층 미소어학원
		</p>
         
			<br>
	 

		<!-- ----------------------------------------------------------------------------- -->

		<p id="pingsub"><img src="/web/Project/images/전화.jpg" class="relative " height="80"
				width="80">
			<font size=5>전화</font><br>휴대폰
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			회사번호 <br>010-0000-0000 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			02-000-0000
		<p>
		

			 <br>

				
			<!-- ----------------------------------------------------------------------------- -->
	
		<p id="pingsub"><img src="/web/Project/images/메일.jpg" height="80" width="80">
			<font size=5>메일</font><br>hyuk0000@naver.com
		</p>

 
		 <br>



   </div>

<!-- ------------------- -->




<br><br><br><br><br><br>

<div id="bus">

<font size=7>버스 이용시&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전철이용시</font>
		<p></p>
		<img src="/web/Project/images/버스.jpg" height="80" width="80" >
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img src="/web/Project/images/지하철.jpg" height="80" width="80" >
	<p></p>
	<img src="/web/Project/images/버스시.jpg" height="200" width="200" >
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<img src="/web/Project/images/전철시.jpg" height="200" width="200" >
		<br><br><br><br><br>
</div>


</body>
<%@include file="/Project/main/footer.jsp"%>
</html>