<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">
#counsel-title{


}
.notice_title h4 {
	width: 100%;
	text-align: center;
	margin: 70px 0 90px 0;
	font-weight: bold;
}
table {
	border-collapse: collapse;
	border-spacing: 0
}
/* 공지사항 틀과 똑같음 */

.notice_table {
	margin: 130px auto 30px auto;
	width: 70%;
}

.notice_table th {
	padding: 5px 0;
}

.notice_table td {
	padding: 10px 0;
}

.notice_table .notice_head tr {
	
	/* background-color: black; */
}

.notice_table .notice_head th {
	font-size: 14px;
	text-align: center;
	background-color: black;
	border-bottom: 5px solid white;
	font-weight: normal;
}

.notice_table .notice_head #headbar th {
	color: white;
}

.notice_table .notice_body td {
	font-size: 12px;
	text-align: center;
	color: black;
	border-bottom: 1px solid silver;
}

.notice_search {
	float: right;
	margin-right: 16%;
	border-style: none;
}

.notice_search #sb_sb {
	background-color: black;
	color: white;
	font-size: 12px;
	width: 80px;
	height: 26px;
}
  .page_main {
    text-align: center;
    margin: 20px auto 80px auto;
    /* height: 100%; */
    line-height: 50px;
    
  }
  .page_main p{
      display: inline;
      padding: 0 5px;
  }
  .page_main img{
     vertical-align: middle;
  }
  .button_bar {
      margin-bottom: 2px;
  }
  .button_bar>input{
      display: inline;
  }
  .button_bar #upload{
  	float: left;
	margin-left: 16%;
	background-color: #FF8000;
	color: white;
	border-style: none;
	font-size: 12px;
	width : 80px;
	height: 28px;
	margin-bottom: 0;
	font-weight: normal;
	text-align: center;
  }
  .button_bar #upload:hover{
     background-color: #FE9A2E;
     font-weight: bold;
  }
  a {
    text-decoration:  none;
  }
  a:hover {
    font-weight: bold;
    color: black;
  }
  #cancel{
    height: -1px;
    background-color: #e7a44a;
    cursor: pointer;
  }

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
    width: 67%;    
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
    background-color: #5cb85c;
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
#checkmessage1{
    position: relative;
    left: 4.5em;
font-size: 25px;
}

#out{
background-color: #272925;
}

#back{
background-color: #272925d6;

}
#xbtn{
    position: relative;
    top: -12px;
    right: 14px;

}
#cancel-title-pop{
text-align: center;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script> 
<script type="text/javascript">
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

function popupOpen(subNo) {
    $('.layerpop').css("position", "absolute");
    //영역 가운에데 레이어를 뛰우기 위해 위치 계산 
    $('.layerpop').css("top",(($(window).height() - $('.layerpop').outerHeight()) / 2) + $(window).scrollTop());
    $('.layerpop').css("left",(($(window).width() - $('.layerpop').outerWidth()) / 2) + $(window).scrollLeft());
    $('.layerpop').draggable();
    $('#layerbox').show();
    //$('#subNo').html("<b>"+subNo+"</b>");
}

function popupClose() {
    $('#layerbox').hide();
    $('#mask').hide();
}

function goDetail(subNo) {

    /*팝업 오픈전 별도의 작업이 있을경우 구현*/ 

    popupOpen(subNo); //레이어 팝업창 오픈 
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

<!-- 메뉴------------------------------------------------------------>
<%@include file="/Project/main/header.jsp"%>
<body>
	<div>
		<div class="notice_title">
			<h4 id="counsel-title">수강신청내역</h4>

		</div>
		</div>
		<table class="notice_table">
			<thead class="notice_head">
				<tr id="headbar">
					<th>강의코드</th>
					<th>수강기간</th>
					<th>강의명</th>
					<th>강사명</th>
					<th>신청상태</th>
				</tr>
			</thead>
			<tbody class="notice_body">
				<tr>
					<td>TC1034</td>
					<td>2020/1</td>
					<td>토익기초반</td>
					<td>김회민</td>
					<td><input type=button value="수강중" disabled ></button></td>
				</tr>
				<tr>
					<td>TC1454</td>
					<td>2020/12/1</td>
					<td>토익중급반</td>
					<td>아롱이</td>
					<td><button onClick="javascript:goDetail('TC1454 2020/12/1 토익중급반 아롱이');">취소</button></td>
				</tr>

			</tbody>
		
		</table>
	   <div class="page_main">
     <span><a href="#"><img alt="" src="/web/Project/images/왼쪽화살표.png" style="width: 20px;"></a></span>
     <p><a href="#">1</a></p>
     <p><a href="#">2</a></p>
     <p><a href="#">3</a></p>
     <span><a href="#"><img alt="" src="/web/Project/images/오른쪽화살표.png" style="width: 20px;"></a></span>
   </div>
    <!-- 팝업뜰때 배경 -->
    <div id="mask"></div>

    <!--Popup Start -->
    <div id="layerbox" class="layerpop"
        style="width: 700px; height: 350px;">
        <article class="layerpop_area">
        <div class="title" id="cancel-title-pop">취소하기</div>
        <a href="javascript:popupClose();" class="layerpop_close"
            id="layerbox_close" ><img src="/web/Project/images/xbutton.png" width="50" height="50" id="xbtn"></a> <br>
        <div class="content" id="checkmessage1">
       		 <div id="subNo">
       		 		<table border="1">
				<tr>       		 		
       		 		<th>강의코드</th>
					<th>수강기간</th>
					<th>강의명</th>
					<th>강사명</th>
					<th>신청상태</th>
				</tr>
       		 		</table>
       		 
       		 
       		 
       		 
       		 
       		 
       		 </div> 
       		 정말로 취소하시겠습니까?<br/>
        	<button class="btn-outpop" id="back">돌아가기</button>    
        	<button class="btn-outpop" id="cancel">취소하기</button>    
        </div>
        </article>
    </div>
	</div>
</div>
	<div class="modal">
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
  </body>
</html>


</body>
<%@include file="/Project/main/footer.jsp"%>
</html>