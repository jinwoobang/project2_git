<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">


#mask {
    position: absolute;
    left: 0;
    top: 0;
    z-index: 999;
    background-color: #000000;
    display: none; }

.layerpop {
    display: none;
    z-index: 1000;
    border: 2px solid #ccc;
    background: #fff;
    cursor: move; }

.layerpop_area .title {
    padding: 10px 10px 10px 10px;
    border: 0px solid #aaaaaa;
    background: #f1f1f1;
       color: #4d4d4e;
    font-size: 1.3em;
    font-weight: bold;
    line-height: 24px; }

.layerpop_area .layerpop_close {
    width: 25px;
    height: 25px;
    display: block;
    position: absolute;
    top: 10px;
    right: 10px;
    background: transparent url('btn_exit_off.png') no-repeat; }

.layerpop_area .layerpop_close:hover {
    background: transparent url('btn_exit_on.png') no-repeat;
    cursor: pointer; }

.layerpop_area .content {
    width: 96%;    
    margin: 2%;
    color: #828282; }

.joinout-head{
    margin: 0px;
    font-size: 23px;
    position: relative;
    top: 22px;
    right: 117px;
    
    }
    
#joinout-contenets{
    font-size: 15px;
    position: relative;
    bottom: -56px;
 }


#dnager-img{
    position: relative;
    width: 250px;
    height: 250px;
    bottom: -3em;
    left: 0em;
    margin-top: 0em;
}
.joinout-but {
    position: relative;
    top: 8em;
    width: 10em;
    height: 3.3em;
    color: #fff;
    background-color: #5dafe2;
    border: none;
    font-size: 14px;
    right: 4px;
}
#btn-out2{
position: relative;
right: 35px;
}
#btn-out1{
position: relative;
left: 35px;
    background: #ec5d5d;
}
.btn-outpop{
    position: relative;
    top: 2em;
    width: 8em;
    height: 4em;
    color: #fff;
    background-color: #5cb85c;
    border: none;
    font-size: 14px;
    left: 1em;
    margin: 49px;
}
#checkmessage{
font-size: 25px;
}

#out1{
    background: #ec5d5d;
}

#back1{
    background-color: #5dafe2;

}
#xbtn{
    position: relative;
    top: -12px;
    right: 14px;

}
</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> -->
<script type="text/javascript">
$(function(){
	$("button#out1").click(function(){
		
		document.location.href='/web/drop2.do?id='+"${id}";
	});
});


function showPopup1() { window.open("JoinOutPop.jsp", "a", "width=481, height=210, left=500, top=300"	); }

function wrapWindowByMask() {
    //화면의 높이와 너비를 구한다.
    var maskHeight = $(document).height(); 
    var maskWidth = $(window).width();

    //문서영역의 크기 
    console.log( "document 사이즈:"+ $(document).width() + "*" + $(document).height()); 
    //브라우저에서 문서가 보여지는 영역의 크기
    console.log( "window 사이즈:"+ $(window).width() + "*" + $(window).height());        

    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $('#mask').css({
        'width' : maskWidth,
        'height' : maskHeight
    });

    //애니메이션 효과
    //$('#mask').fadeIn(1000);      
    $('#mask').fadeTo("slow", 0.5);
}

 function popupOpen() {
    $('.layerpop').css("position", "absolute");
    //영역 가운에데 레이어를 뛰우기 위해 위치 계산 
    $('.layerpop').css("top",(($(window).height() - $('.layerpop').outerHeight()) / 2) + $(window).scrollTop());
    $('.layerpop').css("left",(($(window).width() - $('.layerpop').outerWidth()) / 2) + $(window).scrollLeft());
    $('.layerpop').draggable();
    $('#layerbox').show();
} 

function popupClose() {
    $('#layerbox').hide();
    $('#mask').hide();
}

function goDetail() {

    /*팝업 오픈전 별도의 작업이 있을경우 구현*/ 

    popupOpen(); //레이어 팝업창 오픈 
    wrapWindowByMask(); //화면 마스크 효과 
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/web/Project/cssall/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web/Project/cssall/logincss.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head><%@include file="/Project/main/header.jsp"%>

<!-- 메뉴------------------------------------------------------------>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">


	<div class="card align-middle" id="boxsize10">
		<div class="card-title" style="margin-top:30px;">
			
<h5 class="joinout-head" id="">Orda Education 회원 탈퇴</h5>
		<img src="/web/Project/images/탈퇴이미지.png" id="dnager-img">
		<h1 id="joinout-contenets">탈퇴하신 아이디는 다시 이용하실 수 없으며,<br>삭제된  모든 정보는 복원이 불가능합니다.</h1>
        <button id="btn-out2" class="joinout-but" type="button" id="back1" onclick="location.href='/web/Project/mypage/page2.jsp'">돌아가기</button>
        <button id="btn-out1" class="joinout-but" type="button" id="out1"  onclick="javascript:goDetail('테스트');">탈퇴하기</button>

    <!-- 팝업뜰때 배경 -->
    <div id="mask"></div>

    <!--Popup Start -->
    <div id="layerbox" class="layerpop"
        style="width: 700px; height: 350px;">
        <article class="layerpop_area">
        <div class="title">탈퇴하기</div>
        <a href="javascript:popupClose();" class="layerpop_close"
            id="layerbox_close" ><img src="/web/Project/images/xbutton.png" width="50" height="50" id="xbtn"></a> <br>
        <div class="content" id="checkmessage">
       		${id }을(를) 정말로 탈퇴하시겠습니까?<br/>
        	<button class="btn-outpop" id="back1" onclick="javascript:popupClose()">돌아가기</button>    
        	<!-- <button class="btn-outpop" id="out2">탈퇴하기</button> -->
        	<button class="btn-outpop" id="out1">탈퇴하기</button>     
        </div>
        </article>
    </div>
	</div>
</div>
	<div class="modal">
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <!--  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> --> 
  </body>
</html>


<%@include file="/Project/main/footer.jsp"%>
</html>