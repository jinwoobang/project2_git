<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>

<!-- 메뉴------------------------------------------------------------>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>우편번호 검색</title>
    <style type="text/css">
        /* global reset */
        * { margin: 0; padding: 0; color: #000; font-size: 12px; font-family: Dotum, AppleGothic, Helvetica, sans-serif; line-height: 1.25; }
        img, fieldset { border: 0 none; }
        legend { display: none; }
        li { list-style: none; }
        button { overflow: hidden; cursor: pointer; }
        input:focus { outline: none; }
        a { color: #000; text-decoration: none; }
        .blind { z-index: -1; position: absolute; display: block; left: 0; top: 0; overflow: hidden; visibility: hidden; width: 0; height: 0; text-indent: -9999px; }
 
        /* #findAddress */
        #findAddress { width: 100%; }
        #findAddress h1 { height: 59px; line-height: 61px; padding-left:20px; border-bottom:1px solid #d5d5d3; background:#fff; color: #000; font-size: 20px; text-align: left; }
        #findAddress .tab { padding: 18px 0 16px 0; border-bottom: 1px solid #d5d5d3; background:#f1f1f1; }
        #findAddress .tab label { display:inline-block; margin-left:20px; }
        #findAddress .tab label input { width:14px; height:14px; padding:0; margin:-2px 0 0; vertical-align:middle !important; }
        #findAddress .content { }

        #findAddress .content #lotNumber .sch { zoom: 1; overflow: hidden; padding:20px; }
        #findAddress .content #lotNumber .sch dl:after { clear: both; content: ""; display: block; }
        #findAddress .content #lotNumber .sch dl { width:100%; }
        #findAddress .content #lotNumber .sch dd { float: left; margin-right: 6px; }
        #findAddress .content #lotNumber .sch dd .txt-input { width: 310px; height: 26px; line-height: 28px; padding:0 10px; border: 1px solid #aaa; color:#000; }
        #findAddress .content #lotNumber .sch dd .btn-sch { width: 48px; height: 28px; line-height: 30px; border: 1px solid #1f2632; background-color: #566277; color: #fff; font-size: 12px; font-weight: bold; }
        #findAddress .content #lotNumber .txt { padding:0 20px 15px; color : #2b5697; font-size:12px; line-height:16px; }
        #findAddress .content #lotNumber .txt span { color : #2b5697; }

		#findAddress .content .res { border-bottom:1px solid #d5d5d3; }
        #findAddress .content .res h2 { height:42px; line-height:44px; border-top:1px solid #d5d5d3; border-bottom:1px solid #d5d5d3; color:#000; font-weight:bold; background:#f1f1f1; text-align:center; }
        #findAddress .content .res .lst { padding:15px 0 15px 20px; }
        #findAddress .content .res .lst li { zoom: 1; overflow: hidden; padding: 5px 0; }
        #findAddress .content .res .lst dl:after { clear: both; content: ""; display: block; }
        #findAddress .content .res .lst dl { width: 100%; }
        #findAddress .content .res .lst dd { float: left; width: 15%; font-size: 11px; text-align: center; }
		#findAddress .content .res .lst dd.addr { width: 85%; text-align: left; }
        #findAddress .content .res .lst dd.addr2 { width: 78%; text-align: left; }
        #findAddress .content .res .lst dd.addr a { display: inline-block; padding-top: 4px; color: #3D3D3D; font-size: 11px; }
        #findAddress .content .res .lst dd.addr2 a { display: inline-block; padding-top: 4px; color: #3D3D3D; font-size: 11px; }
		#findAddress .content .res .lst dd.selcl2 { float: left; width: 12%; font-size: 11px; text-align: center; }
        #findAddress .content .res .lst dd.selcl3 { float: left; width: 9%; font-size: 11px; text-align: center; }
		#findAddress .content .res .lst dd .bull-roadnum { display:inline-block; width:36px; padding:4px 0 0; margin:0 5px 6px 0; border: 1px solid #e6e6e6; background-color: #fff; color: #999; font-size: 11px; letter-spacing:-1px; text-align:center; }
        #findAddress .content .res .lst dd .bull-num { display:inline-block; width:38px; padding:4px 0 0; margin:0 5px 0 0 ; background-color: #e0e0e0; color: #999; font-size: 11px; letter-spacing:-1px; text-align:center; }
		#findAddress .content .res .lst dd .btn-sel { height: 24px; line-height:27px; padding:0 8px; margin-top:10px; border:none; background-color: #4d4d4d; color: #fff; font-size: 11px; }
        #findAddress .content .res .lst dd .btn-sel2 { height: 22px; line-height:25px; padding:0 6px; margin-top:10px; border:1px solid #d9d9d9; background-color: #f1f1f1; color: #333; font-size: 11px; }
		#findAddress .content .res .lst dd .old_sel { margin-top:0px; }
		/* 검색 단어 추가 */
        #findAddress .content .res .lst-keyword { padding:20px 0 18px; text-align:center; line-height:20px; }
		/* 검색 결과 없을 때 */
        #findAddress .content .res .lst-none { padding:60px 0 58px; text-align:center; }

        #findAddress .btm-txt { padding: 20px 20px 18px; border-top:1px solid #d5d5d3; color:#808080; }
        #findAddress .btm-message { padding: 20px 20px 18px; border-top:1px solid #d5d5d3; border-bottom:1px solid #d5d5d3; color:#808080; /* background:#f1f1f1;  */ }
    </style>
</head>
<body>
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script language="JavaScript">

(function($) {
    $(function() {
        $('input[name=posttype]').click(function() {
            $('.change_text').hide();
            $('.' + this.value + '_text').show();
            $('input[name=addr2]').val('');
            $('.res').html('');
        });
        //$('input[name=posttype]:checked').trigger('click');
    $('.jibun_text').hide();
    });

})(jQuery);

function newpost(temp){
    //document.form1.posttype.value = "new";
    $('input[name="posttype"]').eq(1).trigger('click');
    document.form1.addr2.value = temp;
    document.form1.submit();
}

function send(post_old, post_new, temp2, temp3) {
    var _post = post_new.replace('-', '');

    if (typeof opener.document.form1.opost2 != 'undefined') {
        opener.document.form1.opost1.value = _post.substr(0,3);
        opener.document.form1.opost2.value = _post.substr(3,3);
    } else {
        opener.document.form1.opost.value = _post;
    }
    opener.document.form1.oaddress.value = temp2 + ' ';
    opener.document.form1.oaddress.focus();
    if (temp3.length > 0) {
        if (typeof opener.document.form1.oaddress2 != 'undefined') {
            opener.document.form1.oaddress2.value = temp3;
        } else {
            opener.document.form1.oaddress.value += " " + temp3;
        }
    }    window.close();
}function hanguel(field, e) {
 var whichCode = (window.Event) ? e.which : e.keyCode;
 //if (whichCode == 13) document.form1.submit();
}
if ('kor' == 'eng') {
    self.resizeTo(750,500);
} else {
    self.resizeTo(550,500);
}

</script>

<body bgcolor=#FFFFFF topmargin=0 marginwidth=0 marginheight=0 leftmargin=0 onload="document.form1.addr2.focus()"  oncontextmenu="return false;">
<div id="findAddress">
    <h1>우편번호 찾기</h1>
	<!-- 라디오 버튼 -->
    <form name=form1 action=post.html method=post>
    <input type=hidden name=type value="">
    <input type=hidden name=mode value="">
    <input type=hidden name=newmanage_type value="manager">
	<div class="tab">
				<label><input type="radio" name="posttype" value="jibun" class="input-radio"  /><strong>지번주소</strong></label>
				<label><input type="radio" name="posttype" value="new" class="input-radio" checked="checked"/><strong>도로명주소</strong></label>
	</div>
	<!-- //라디오 버튼 -->

    <div class="content">
        <div id="lotNumber" class="frm">
                <fieldset>
                    <legend>지번 주소 찾기 폼</legend>
                    <dl class="sch">
                        <dd><input type=text name=addr2 size=15  class="box txt-input" onKeyDown="return hanguel(this, event);" style="IME-MODE:active;" value=""></dd>
                        <dd><button type="button" class="btn-sch" onclick="document.form1.submit()">검색</button></dd>
                    </dl>
                    <p class="txt"><span id="posttext"><span class="change_text new_text">두 단어 이상 검색 시 주소 찾기가 쉽습니다.(예:강남대로100길, 가산동 371-28)<br/>지번(구주소)으로 검색하셔도, 도로명주소 체계로 자동변환 됩니다.</span><span class="change_text jibun_text">동을 입력하세요. (예: 압구정동, 2글자 이상 입력)</span></span></p>
                </fieldset>
    <div class="btm-message">국내 주소만 입력이 가능합니다.</div>	
    </div><!-- .content -->
    </div>
    </form>
</div><!-- #findAddress -->
</body>
</html>
