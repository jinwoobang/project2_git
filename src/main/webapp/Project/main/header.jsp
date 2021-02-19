<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial"
	rel="stylesheet" />
<link href="/web/Project/cssall/default.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/web/Project/cssall/fonts.css" rel="stylesheet"
	type="text/css" media="all" />
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<style type="">
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
<body id="qorud">
	<div id="wrap">
		<header id="header-login"> <nav>
		<div class="login">
			<ul class="menu">
			<%String cmd=(String)session.getAttribute("cmd"); %>
			<%String pw=(String)session.getAttribute("pw"); %>
			<%if(pw==null){ %>
				  <li><a href="/web/Project/login/loginstu.jsp">로그인</a></li>
				 <%}else{ %>
				  <li><a href="/web/logout.do">${id}님 로그아웃</a></li>
				 
				 <%} %>
				<li><a href="/web/Project/login/jointerms.jsp">회원가입</a></li>
				
				<%if(cmd=="student"){ %>
				<li><a href="/web/Project/mypage/page.jsp">마이페이지</a></li>
				<%}else if(cmd=="teacher"){ %>
				<li><a href="/web/Project/mypage/page2.jsp">마이페이지</a></li>
				<%}else if(cmd=="admin"){ %>
				<li><a href="/web/Project/mypage/page3.jsp">마이페이지</a></li>
				<%}else{ %>
				<li><a href="/web/Project/mypage/page.jsp">마이페이지</a></li>
				<%} %>
			</ul>
		</div>
		</nav> </header>
		<div class="back" id="header-wrapper">
			<div id="header" class="container">
				<div id="logo">
					<!--  <span class="icon icon-cog"></span>-->
					<h1>
						<a href="/web/Project/index.jsp">Orda <br>Education</a>
					</h1>
				</div>

				<div id="menu">
					<ul>
						<li class="active"><a href="#" id="amain">학원소개</a>
							<ul class="active_sub">
								<li id="ali"><a href="/web/Project/intro/introduction.jsp">학원안내</a></li>
								<li id="ali"><a href="/web/Project/intro/teacher.jsp">강사진소개</a></li>
								<li id="ali"><a href="/web/Project/intro/comeon.jsp">오시는길</a></li>
							</ul></li>

						<li><a href="#" id="amain">수강신청</a>
							<ul class="active_sub">
								<li id="ali"><a href="/web/Project/registration/classlist.jsp">강의목록</a></li>
								<li id="ali"><a	href="/web/Project/registration/registrationmain.jsp">수강신청</a></li>
								<li id="ali"><a href="/web/Project/test/levelTest1.jsp">테스트</a></li>
							</ul></li>

						<li><a href="#" id="amain">게시판</a>
							<ul class="active_sub">
								<li id="ali"><a href="/web/listNotice.do">공지사항</a></li>
								<li id="ali"><a href="/web/Project/noticeboard/faqmain.jsp">FAQ</a></li>
								<li id="ali"><a href="/web/listReview.do">수강후기</a></li>
								<li id="ali"><a href="/web/listStorage.do">자료실</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
