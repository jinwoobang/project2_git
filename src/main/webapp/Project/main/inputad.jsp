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
<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	//$(".one_ad>ul>li").hide();
	//$(".one_ad>ul>li:first-child").show();
	
	setInterval(function(){
		//$(".one_ad>ul>li:first-child").fadeOut("slow").next().fadeIn("slow").end(4000).appendTo(".one_ad>ul");
	//},4000);
});
   var slideimg = setInterval(slideleft,2000);
   var inter = true;
   var idx=2;
   
   function slideleft(){
	   $(".one_ad ul").animate({
		   "left":-300*idx+"px"
	   },300);
   };
</script>
<style type="text/css">
.title_no {
font-family:"나눔고딕체";
width: 100%;
text-align: center;
margin: 100px 0 0 0;
text-decoration: overline;
}
.title_no p{
 font-size: 25px;
 color: black;
}
.one_ad{
 margin: 50px auto;
 text-align: center;
 width: 1450px;
 overflow: hidden;
}
.slider{
 width: 350%;
 position: relative;
 animation:slide 10s infinite;
}
.slider li{
/*  display: inline-block;  */
 margin: 30px 0;
/*  width: 1500px; */
/*  height: 1000px; */
 float: left;
}
.slide_de{
 margin: 0 auto;
 width: 1450px;
 height: 700px;
/*  text-align: center; */
padding-top: 490px;
font-family: "나눔고딕체";
 
}
.slide_de h1{
 color: white;
 font-size: 70px;
}
#text_ad{
 padding: 7px;
 color: black;
 width: 1200px;
 font-size: 27px;
 margin: 0 auto;
 text-align: center;
 font-weight: lighter;
 background-color: white;
 background-color: rgba( 255, 255, 255, 0.5 );
}
/* #text_ad_2{
 padding: 5px;
 color: black;
 width: 1000px;
 margin: 0 auto;
 font-size: 20px;
 font-weight: normal;
  background-color: white;
 background-color: rgba( 255, 255, 255, 0.6 );
} */
/* 글씨위에 */
#slider_o{
 background-image: url('/web/Project/images/child2.jpg');
 background-size: cover;
 width: auto;
 height: 700px;
}
#slider_t{
 background-image: url('/web/Project/images/student3.jpg');
 background-size: cover;
 width: auto;
 height: 700px;
}
#slider_tt{
 background-image: url('/web/Project/images/worker1.jpg');
 background-size: cover;
 width: auto;
 height: 700px;
}
 @keyframes slide {
      0% {margin-left:0;} /* 0 ~ 10  : 정지 */
      10% {margin-left:0;} /* 10 ~ 25 : 변이 */
      25% {margin-left:-100%;} /* 25 ~ 35 : 정지 */
      35% {margin-left:-100%;} /* 35 ~ 50 : 변이 */
      50% {margin-left:-200%;}
      60% {margin-left:-200%;}
      100% {margin-left:0;}
    }
</style>
</head>
<body>
<div class="title_no">
<p>A WISE SAYING_ENG.VER</p>
</div>
	<div class="one_ad">
		  <ul class="slider">
		    <li id="slider_o">
<!-- 		    <img alt="" src="/web/Project/images/child2.jpg" width="1200px" height="600px" id="photo_one"> -->
		      <div class="slide_de">
		        <h1>CHILD</h1>
		        <p id="text_ad">If you want to see what children can do, you must stop giving them things.</p>
<!-- 		        <p id="text_ad_2">아이들이 무엇을 할 수 있는지 확인해보고 싶다면 주는 것을 멈추어 보면 된다.</p> -->
		      </div>
		    </li>
			<li id="slider_t">
<!-- 			<img alt="" src="/web/Project/images/student1.jpg" width="1200px" height="600px" id="photo_one"> -->
		      <div class="slide_de">
		        <h1>STUDENT</h1>
		        <p id="text_ad">Whoso neglects learning in his youth, Loses the past and is dead for the future.</p>
<!-- 		        <p id="text_ad_2">젊었을 때 배움을 게을리 한 사람은 과거를 상실하며 미래도 없다.</p> -->
		      </div>
			</li>
			<li id="slider_tt">
<!-- 			<img alt="" src="/web/Project/images/worker2.jpg" width="1200px" height="600px" id="photo_one"> -->
		      <div class="slide_de">
		        <h1>OFFICE WORKER</h1>
		        <p id="text_ad">A likely impossibility is always preferable to an unconvincing possibility.</p>
<!-- 		        <p id="text_ad_2">불가능해 보이는 것은 불확실한 가능성보다 항상 더 낫다.</p> -->
		      </div>
			</li>
		  </ul>
	</div>
	<div class="img-cover">
	</div>
</body>
</html>