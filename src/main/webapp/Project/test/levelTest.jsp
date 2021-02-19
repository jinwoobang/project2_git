
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
<link href="/web/Project/NewFile.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/includeHTML.js"></script>

<style type="text/css">
div.a {
   margin-left: 37%;
}

h2 {
   height: 50px;
   width: 300px;
   border: 30px solid #dddddd;
   text-align: center;
}

div.aaa {
   text-align: center;
}

h3 {
   text-align: center;
}
</style>

<script type="text/javascript">
$(function(){
	$("input[name='btn']").click(function(){
		var sum=0;		
		if($("input[name='chk_info1']:checked").val()==$("input[name='ck1']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		if($("input[name='chk_info2']:checked").val()==$("input[name='ck2']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		if($("input[name='chk_info3']:checked").val()==$("input[name='ck3']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		if($("input[name='chk_info4']:checked").val()==$("input[name='ck4']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		if($("input[name='chk_info5']:checked").val()==$("input[name='ck5']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		if($("input[name='chk_info6']:checked").val()==$("input[name='ck6']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		if($("input[name='chk_info7']:checked").val()==$("input[name='ck7']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		if($("input[name='chk_info8']:checked").val()==$("input[name='ck8']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		if($("input[name='chk_info9']:checked").val()==$("input[name='ck9']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		if($("input[name='chk_info0']:checked").val()==$("input[name='ck0']").val()){
			sum+=10;			
		}else{
			sum+=0;
		}
		
		$("input[name='score']").val(sum); // 1문제당 10점씩 더해 최종값을 score에 저장
		
		if($("input[name='score']").val()>=80){
			$("input[name='classname']").val('심화반'); // 80점 이상이면 심화반
		}else if($("input[name='score']").val()>=50){
			$("input[name='classname']").val('중급반'); // 50점 이상이면 중급반
		}else{
			$("input[name='classname']").val('초급반'); // 50점 미만이면 초급반
		}
		
		$("form[name='frm']").submit();
	});
});
</script>

</head>
<%@include file="/Project/main/header.jsp"%>
<body>
<form action="/web/levelTest.do" name="frm" method="POST">
   <br>

   <div class="a">
      <h2>"테스트"</h2>
   </div>
   <br>
   <br>
   <br>
   <br>
   
   
<input type="hidden" value="0" name="score">
<input type="hidden" value="" name="classname">
<input type="hidden" value="${id}" name="id">;
   <!--1번문제 ---------------------------------------------------------------------------------------------->
	

   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>1번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">She had worked for the Human Resources
                                 department at our hard office in Sydney since 1979, but she
                                 finaly _______ our team 10 tears ago.</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info1"
                     value="Joining">&nbsp;Joining <br>
                  <br> <input type="radio" name="chk_info1" value="Joins">&nbsp;Joins
                     <br>
                  <br> <input type="radio" name="chk_info1" value="have">&nbsp;have
                     Joined <br>
                  <br> <input type="radio" name="chk_info1" value="Joined">&nbsp;Joined
                     <br><br>
                     <input type="hidden" value="Joined" name="ck1">
                     
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
         <br>
         <br>
         <br>
         </td>
      </tr>
   </tbody>

   <!--2번문제 ---------------------------------------------------------------------------------------------->



   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>2번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">The problem is that the head office buliding
                                 of the compant is ______ under construction so the entire
                                 staff should temporarily work into another buliding</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info2"
                     value="presently">&nbsp;presently <br>
                  <br> <input type="radio" name="chk_info2" value="previously">&nbsp;previously
                     <br>
                  <br> <input type="radio" name="chk_info2" value="seldom">&nbsp;seldom
                     <br>
                  <br> <input type="radio" name="chk_info2" value="heavliiy">&nbsp;heavliiy
                     <br>
                  <br>
                  <input type="hidden" value="presently" name="ck2">
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
         <br>
         <br>
         <br>
         </td>
      </tr>
   </tbody>


   <!--3번문제 ---------------------------------------------------------------------------------------------->


   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>3번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">Until the beginning of this year I ______ to
                                 stay at the New York barnch office, but I was so tired of the
                                 cold wearther of New York that I just wanted to come back to
                                 Los Angeles.</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info3"
                     value="is supposed">&nbsp;is supposed <br>
                  <br> <input type="radio" name="chk_info3" value="was supposed">&nbsp;was
                     supposed <br>
                  <br> <input type="radio" name="chk_info3" value="supposing">&nbsp;supposing
                     <br>
                  <br> <input type="radio" name="chk_info3" value="supposed">&nbsp;supposed
                     <br>
                  <br>
                  <input type="hidden" value="was supposed" name="ck3">
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
         <br>
         <br>
         <br>
         </td>
      </tr>
   </tbody>


   <!--4번문제 ---------------------------------------------------------------------------------------------->



   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>4번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">The budget does not allow for our current
                                 projects, so spending on these projects will ________ by as
                                 much asa 60 percent.</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info4"
                     value="have to be reduced">&nbsp;have to be reduced <br>
                  <br> <input type="radio" name="chk_info4" value="to be reduce">&nbsp;have
                     to be reduce <br>
                  <br> <input type="radio" name="chk_info4" value="reduce">&nbsp;reduce
                     <br>
                  <br> <input type="radio" name="chk_info4" value="have reduced">&nbsp;have
                     reduced <br>
                  <br>
                  <input type="hidden" value="have to be reduced" name="ck4">
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
         <br>
         <br>
         <br>
         </td>
      </tr>
   </tbody>


   <!--5번문제 ---------------------------------------------------------------------------------------------->


   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>5번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">When I returned from my business trip to
                                 southeast Asia on Wednesday, my marketing project _________
                                 for no proper reason.</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info"
                     value="has canceled">&nbsp;has canceled <br>
                  <br> <input type="radio" name="chk_info5" value="had been canceled">&nbsp;had
                     been canceled <br>
                  <br> <input type="radio" name="chk_info5" value="canceled">&nbsp;canceled
                     <br>
                  <br> <input type="radio" name="chk_info5" value="cancels">&nbsp;cancels
                     <br>
                  <br>
                  <input type="hidden" value="had been canceled" name="ck5">
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
         <br>
         <br>
         <br>
         </td>
      </tr>
   </tbody>


   <!--6번문제 ---------------------------------------------------------------------------------------------->




   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>6번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">If the holding company doesn't give ant
                                 financial aid to this small company which is its subsidiary,
                                 this company _____ bankrupt any day</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info6"
                     value="will go">&nbsp;will go <br>
                  <br> <input type="radio" name="chk_info6" value="goes">&nbsp;goes
                     <br>
                  <br> <input type="radio" name="chk_info6" value="went">&nbsp;went
                     <br>
                  <br> <input type="radio" name="chk_info6" value="has been gone">&nbsp;has
                     been gone <br>
                  <br>
                  <input type="hidden" value="will go" name="ck6">
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
         <br>
         <br>
         <br>
         </td>
      </tr>
   </tbody>


   <!--7번문제 ---------------------------------------------------------------------------------------------->



   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>7번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">The waiter didn't even make any apology for
                                 his mistake, bit the manager ________ a great discount along
                                 with an apology to all of us.</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info7"
                     value="offers">&nbsp;offers <br>
                  <br> <input type="radio" name="chk_info7" value="has offer">&nbsp;has
                     offer <br>
                  <br> <input type="radio" name="chk_info7" value="offered">&nbsp;offered
                     <br>
                  <br> <input type="radio" name="chk_info7" value="would offer">&nbsp;would
                     offer<br>
                  <br>
                  <input type="hidden" value="offered" name="ck7">
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
         <br>
         <br>
         <br>
         </td>
      </tr>
   </tbody>


   <!--8번문제 ---------------------------------------------------------------------------------------------->


   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>8번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">By next year my boss _____ in charge of our
                                 branch office, but he didn't make up his mind whether the to
                                 stay here or transfer to the head office in 2005.</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info8"
                     value="was">&nbsp;was <br>
                  <br> <input type="radio" name="chk_info8" value="will be">&nbsp;will
                     be <br>
                  <br> <input type="radio" name="chk_info8" value="had been">&nbsp;had
                     been <br>
                  <br> <input type="radio" name="chk_info8" value="is been">&nbsp;is
                     been<br>
                  <br>
                  <input type="hidden" value="will be" name="ck8">
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
         <br>
         <br>
         <br>
         </td>
      </tr>
   </tbody>


   <!--9번문제 ---------------------------------------------------------------------------------------------->



   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>9번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">Natallie ______ as a flight attendant for 19
                                 years by the time she retires but he never thought this job
                                 would really fit her...</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info9"
                     value="will have to be served">&nbsp;will have to be served <br>
                  <br> <input type="radio" name="chk_info9" value="serves">&nbsp;serves
                     <br>
                  <br> <input type="radio" name="chk_info9" value="gas serve">&nbsp;gas
                     serve <br>
                  <br> <input type="radio" name="chk_info9" value="will have served">&nbsp;will
                     have served <br>
                  <br>
                  <input type="hidden" value="will have served" name="ck9">
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
         <br>
         <br>
         <br>
         </td>
      </tr>
   </tbody>



   <!--10번문제 ---------------------------------------------------------------------------------------------->



   <tbody>
      <tr>
         <!--질문 부분--->
         <table width="600" border="0" cellspacing="0" cellpadding="0"
            style="margin: 0 auto;">

            <tbody>
               <tr>
                  <td height="20"></td>
               </tr>
               <tr>
                  <td height="40" align="left" valign="top" class="style38H">&nbsp;<strong>10번
                        문제</strong></td>
               </tr>
               <tr>
                  <td height="20"></td>
               </tr>

               <tr>
                  <td align="center" valign="top">

                     <table width="600" border="0" cellpadding="10" cellspacing="1"
                        bgcolor="#333333">
                        <tbody>
                           <tr>
                              <td valign="top" bgcolor="#FFFFFF" class="style38H"
                                 height="30">Because Ms. Wedgeworth, the chief secretary,
                                 forgot to tell them the name of the hotel where they were
                                 supposed to stay, they dosen't _____ their hotel after three
                                 of wandering about on the streets.</td>
                           </tr>
                        </tbody>
                     </table>
                  </td>
               </tr>

               <tr>
                  <td height="10"><br> <br></td>
               </tr>

            </tbody>
         </table>

         <!--문제 부분--->
         <table width="600" border="0" align="center" cellspacing="0"
            cellpadding="0" style="margin: 0 auto; font-size: large;">
            <tbody>
               <tr>

                  <td align="left"><input type="radio" name="chk_info0"
                     value="arrive">&nbsp;arrive <br>
                  <br> <input type="radio" name="chk_info0" value="reach">&nbsp;reach
                     <br>
                  <br> <input type="radio" name="chk_info0" value="segment">&nbsp;segment
                     <br>
                  <br> <input type="radio" name="chk_info0" value="repeal">&nbsp;repeal
                     <br>
                  <br>
                  <input type="hidden" value="reach" name="ck0">
                  </td>
               </tr>
               <tr>
                  <td height="10">&nbsp;</td>
                  <td valign="middle">&nbsp;</td>
               </tr>
            </tbody>
         </table>
   <br>
   <br>
   <br>
   </td>
   </tr>
   </tbody>


   <!-- 문제 끝-------------------------------------------------------------------------   ---------------------------------- -->
   <!-- 문제 정답 / 1-4 / 2-1 / 3-2 / 4-1 / 5-2/ 6-1 / 7-3 / 8-2 / 9-4 / 10-2 /----------------------------------------------------------------------------------------------------------- -->




   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <h3>
      <strong>시험 문제를 한번 더 확인 후 "시험 제출" 버튼을 눌러주세요.</strong>
   </h3>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>



   <div class="aaa">
      <input type="button"
         style="WIDTH: 100pt; background-color: #81BEF7; HEIGHT: 50pt"
         name="btn" value="시험 제출">
   </div>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
</form>
</body>
<%@include file="/Project/main/footer.jsp"%>
</html>