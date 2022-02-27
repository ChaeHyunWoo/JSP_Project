<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>파크랜드 공식쇼핑몰</title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=1300">
	<meta name="facebook-domain-verification" content="ljsthv428khej1ow7p3b9ffy8q67i5">
    <meta name="facebook-domain-verification" content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
	<link rel="stylesheet" type="text/css" href="./main_files/reset.css" media="all">
	<link rel="stylesheet" type="text/css" href="./main_files/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="./main_files/owl.carousel.min.css">
	<!-- main slider css -->
	<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
	<!-- main slider css -->
	<script type="text/javascript" async="" src="./main_files/analytics.js.다운로드"></script><script type="text/javascript" async="" src="./main_files/js"></script><script type="text/javascript" async="" src="./main_files/analytics.js.다운로드"></script><script async="" src="./main_files/analytics.js.다운로드"></script><script src="./main_files/AceCounter_AW.js.다운로드"></script><script src="./main_files/462724525419327" async=""></script><script async="" src="./main_files/fbevents.js.다운로드"></script><script src="./main_files/jquery-1.11.3.min.js.다운로드"></script>
	<script type="text/javascript" src="./main_files/owl.carousel.js.다운로드"></script><!-- main slider js -->
	<script src="./main_files/default.js.다운로드" type="text/javascript" charset="euc-kr"></script>
	<script src="./main_files/common.js.다운로드" type="text/javascript" charset="euc-kr"></script>

	<link rel="stylesheet" type="text/css" href="./main_files/odesign.css">
	<script src="./main_files/global.js.다운로드" type="text/javascript" charset="euc-kr"></script>

	<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
	<script async="" src="./main_files/js(1)"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-143530513-1');

	  gtag('config', 'UA-126736889-1'); //190828
	</script>
	<!-- Facebook Pixel Code -->
	<script>
	!function(f,b,e,v,n,t,s)
	{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
	n.callMethod.apply(n,arguments):n.queue.push(arguments)};
	if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
	n.queue=[];t=b.createElement(e);t.async=!0;
	t.src=v;s=b.getElementsByTagName(e)[0];
	s.parentNode.insertBefore(t,s)}(window,document,'script',
	'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '462724525419327');
	fbq('track', 'PageView');
	</script>
	<noscript>
	<img height="1" width="1" src="https://www.facebook.com/tr?id=462724525419327&ev=PageView&noscript=1"/>
	</noscript>
	<!-- End Facebook Pixel Code -->

	<script language="javascript">

	/*띠배너 가리기*/
	$(window).scroll(function() {
		var scrollHeight = $(document).height();
		var scrollPosition = $(window).height() + $(window).scrollTop();
		if($(window).scrollTop()) {
			$(".arthro_banner").css("display","none");
		} else {
			$(".arthro_banner").css("display","block");
		}
	});

	/**스크롤이 설정한 높이 이상 내려갔을때 스타일추가하기**/
	/*if (jQuery(window).width() > 1300) {
    jQuery(window).on("scroll",function(ev){
        if(jQuery(window).scrollTop() > 85 ) { /**높이 픽셀 조정**/
        /*jQuery('.mlogo').addClass('ktop');  /**위의 높이에서 .fixed 클래스를 추가합니다. 스타일에서 자유롭게 수치 조절 가능합니다.**/
		/*jQuery('.t_util').addClass('ktop');
		//jQuery('#header').removeClass('gnb');

        }

        else{
			jQuery('.mlogo').removeClass('ktop');
			jQuery('.t_util').removeClass('ktop');
			//$(".sheadWrap").hide();
			//$(".sgnb").hide();
        }
        return false;
    });
	}

	/*상단 이벤트 토글*/

	$(function() {
		$('.btn_closeimg a').click(function() {

			$(".arthro_banner").slideToggle();
			$(".banner_close").hide();
		});
	});


	function getCookie_tb(strName)	{
		var	strArg = new String(strName	+ "=");
		var	nArgLen, nCookieLen, nEnd;
		var	i =	0, j;

		nArgLen	   = strArg.length;
		nCookieLen = document.cookie.length;

		if(nCookieLen >	0) {

			while(i	< nCookieLen) {
				j =	i +	nArgLen;
				if(document.cookie.substring(i,	j) == strArg) {
					nEnd = document.cookie.indexOf (";", j);
					if(nEnd	== -1) nEnd	= document.cookie.length;
					return unescape(document.cookie.substring(j, nEnd));
				}
				i =	document.cookie.indexOf(" ", i)	+ 1;
				if (i == 0)	break;
			}
		}

		return("");
	}

	function setCookie_tb(name,value) {
		var	todayDate =	new	Date();
		todayDate.setTime(todayDate.getTime() +	(1000 *	3600) *	24 * 1);	//1일
		document.cookie	= name+"="+escape(value)+";path=/;expires="+todayDate.toGMTString()+";";
	}

	$(function(){

		if(getCookie_tb('popUp_tb') != "checked") {

			$("#bannerPop3").css('visibility','visible').show();
			$("#bannerPop3").find(".closePop").click(function(e){
				e.preventDefault();

				if($("#_closePop").is(":checked")){
					setCookie_tb("popUp_tb","checked");
				}

				$("#bannerPop3").css('visibility','hide').slideup('fast');
			});
		}

	});
	</script>

<script>
$(document).ready(function(){
 $('a.es').click(function(){
 $('html, body').animate({
 scrollTop: $( $.attr(this, 'href') ).offset().top -85
}, 500);
return false;
 });
});

</script>


</head>
<body>

<!-- WRAP -->
<!--div id="wrap">
	<!-- 상단 띠배너 -->
	<!--div id="bannerPop3" class="arthro_bannerWrap" style="background-color:#c82128;border:0;">
		<form name="pop_frm10" action="">
			<div class="arthro_banner" style="padding:0;background-color:#c82128;height:80px;">

				<!--div class="arthro_img"><a href="/nhome/customer/view.asp?idx=36&page=1"><img src="/images/2021/topbanner.jpg" alt="" /></a></div-->
				<!--
                <!--div class="btn_closeimg"><a href="#none" class="closePop"><img src="/nhome/img/btn_close_wh.png" /></a></div>
				<!--div class="banner_close">
					<label style="color:#000;">
					<input type="checkbox" name="check" id="_closePop" />
					하루동안 보지 않음</label>
				</div>
				-->
			
		
	
	<!-- 상단 띠배너 끝-->


  	<!-- container -->
  	<div id="container">
		<!-- navi -->
	    <div class="navi">
			<div class="mlogo"><a href="https://eshop.parkland.co.kr:444/nhome/"><img src="./main_files/logo.png" alt="parkland"></a></div>
			<div class="search">
		        <ul>
		          <li>
		         	<form id="frmGSearch" name="frmGSearch" method="post" onsubmit="return m_fnGSearchGood_submit();" action="https://eshop.parkland.co.kr:444/nhome/shop/search_result.asp">
		            <input id="gKeyword" name="gKeyword" type="text" title="통합검색" class="input01" accesskey="S" onclick="m_fnEnterKey(this, fnGSearchGood);" placeholder="검색어를 입력해주세요">
		            <input type="image" class="input_btn" src="./main_files/btn_search.png" alt="Search">
					<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 START-->
					<input type="hidden" id="encodingType" name="encodingType" value="EUC-KR">
					<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 END-->
		            </form>
		           </li>
		        </ul>
	      	</div>
			<script language="javascript">
				function fnToggle(menu)		{
		      		var obj = document.getElementById(menu);
		      		if(obj.getAttribute("class") == obj.getAttribute("class_normal")) {
		      			obj.setAttribute("class", obj.getAttribute("class_active"));
		      			$("#" + menu + "_img").attr("src", "/nhome/img/icon_minus.png");
		      		}
		      		else	{
		      			obj.setAttribute("class", obj.getAttribute("class_normal"));
		      			$("#" + menu + "_img").attr("src", "/nhome/img/icon_plus.png");
		      		}
		      }
	      	</script>

	      	<div id="leftside-navigation">
		      
		        <ul>
		          <li id="menu1" class="sub-menu" class_normal="sub-menu" class_active="sub-menu active"> <a href="javascript:fnToggle(&#39;menu1&#39;);"><span>Men <img id="menu1_img" src="./main_files/icon_plus.png" alt=""></span></a>
		            <ul>
		            
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=2&amp;gtype=2">ALL</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=12&amp;gtype=2">정장/수트</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=13&amp;gtype=2">자켓</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=14&amp;gtype=2">점퍼</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=15&amp;gtype=2">코트</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=16&amp;gtype=2">드레스셔츠</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=17&amp;gtype=2">캐주얼셔츠/남방셔츠</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=18&amp;gtype=2">티셔츠</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=19&amp;gtype=2">니트</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=28&amp;gtype=2">베스트</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=20&amp;gtype=2">정장바지</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=21&amp;gtype=2">일반바지</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=22&amp;gtype=2">액세서리</a> </li>
		            	
		            </ul>
		          </li>
		          <li id="menu2" class="sub-menu" class_normal="sub-menu" class_active="sub-menu active"> <a href="javascript:fnToggle(&#39;menu2&#39;);"><span>WoMen <img id="menu2_img" src="./main_files/icon_plus.png" alt=""></span></a>
		            <ul>
		              
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=1&amp;gtype=1">ALL</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=3&amp;gtype=1">셔츠/블라우스</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=4&amp;gtype=1">티셔츠</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=5&amp;gtype=1">니트</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=29&amp;gtype=1">베스트</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=6&amp;gtype=1">원피스/스커트</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=7&amp;gtype=1">자켓</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=8&amp;gtype=1">코트</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=9&amp;gtype=1">점퍼</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=10&amp;gtype=1">바지</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=23&amp;gtype=1">액세서리</a> </li>
		            	
		            </ul>
		          </li>
		          <li class="l_normal"> <a href="https://eshop.parkland.co.kr:444/nhome/#"><span>Brands</span></a>
		            <ul class="none">
		              <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1219">Parkland</a></li>
					  <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1204">J.Hass</a></li>
					  <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1229">Cabrini</a></li>
					  <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1203">Prelin</a></li>
					  <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1220">PL Sports</a></li>
		              <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1230">mp.code</a></li>
			          <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1231">FITZ</a></li>
					  <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1234">PARKON</a></li>
					  <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1235">COMODO</a></li>
		              <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1210">Peri Jenson</a></li>
		              <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1228">Chester Barrie</a></li>
		              <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1232">VICOMTE A</a></li>
  		              <!--<li><a href="/nhome/shop/brandmain.asp?src=image&kw=000124&brandId=1233">NU PARCC</a></li>-->
					  <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1222">N.DIFF</a></li>


		              <!--li><a href="http://eshop.austinreed.co.kr/main/main.asp" target="_blank">Austin Reed<img src="/nhome/img/icon_newwin.png" alt="" /></a></li>
		              <li><a href="http://www.vostro.kr" target="_blank">Vostro<img src="/nhome/img/icon_newwin.png" alt="" /></a></li-->

		            </ul>
		          </li>
		          <li class="l_normal"> <a href="https://eshop.parkland.co.kr:444/nhome/#"><span>Special</span></a>
		            <ul class="none">
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventlist.asp">기획전 &amp; 이벤트</a></li>
		              <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/typemain.asp?nSort=1">NEW ITEMS</a></li>

					  <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=82">BIG SIZE</a></li>
		              <li><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId2=401">OUTLET</a></li>
		            </ul>
		          </li>
				<!--li><a href="/nhome/shop/eventmain.asp?eventId=58">MD's PICK</a></li-->
			  <!--li><a href="/nhome/shop/eventmain2.asp?eventId2=175">Best of Best</a></li-->
                 <!--li><a href="/nhome/shop/brandmain.asp?brandId=1222">N.Diff</a></li-->
			     <!--li class="l_normal"> <a href="#"><span>WEB ZINE</span></a>
		            <ul class="none">
		              <li><a href="/nhome/webzine/webzine_list.asp">STYLE TELLER</a></li>
		            </ul>
		          </li-->



		        </ul>

			</div>
			<!-- //left side navigation -->
		      <!-- leftmenu
				<script>
				$("#leftside-navigation .sub-menu > a").click(function(e) {
				  $("#leftside-navigation ul ul").slideUp(), $(this).next().is(":visible") || $(this).next().slideDown(),
				  e.stopPropagation()
				})
				</script> -->
		    <!-- 20171011 add -->
              <div class="service_b">
                <ul>
                  <li><p><a href="https://members.parkland.co.kr/my_parkland/join.asp" target="_blank"><img src="./main_files/sr_icon_1.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img src="./main_files/sr_icon_2.png" alt=""></a></p></li>
                </ul>
                <ul>
                  <!--<li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon03.png" alt="" /></a></p></li>-->
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img src="./main_files/sr_icon_3.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=50"><img src="./main_files/sr_icon_4.png" alt=""></a></p></li>
                </ul>
                <!--<ul>
                  <li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon05.png" alt="" /></a></p></li>
                </ul>-->
                <ul>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img src="./main_files/sr_icon_5.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img src="./main_files/sr_icon_6.png" alt=""></a></p></li>
                </ul>
              </div>
<!-- // 20171011 add -->
		      <!-- cscenter -->
		      <div class="cscenter">
		        <div class="cstitle">Cs center</div>
		        <h2>1644-0582</h2>
		        <p>평일 AM 10:00 ~ PM 18:00<br> 토,일요일/공휴일 휴무</p>
		      </div>
		      <div class="cs_icon">
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp" class="roll"><img src="./main_files/cs_icon01.png" alt=""><img class="over" src="./main_files/cs_icon01-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/formnew.asp" class="roll"><img src="./main_files/cs_icon02.png" alt=""><img class="over" src="./main_files/cs_icon02-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp" class="roll"><img src="./main_files/cs_icon03.png" alt=""><img class="over" src="./main_files/cs_icon03-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/myorder.asp" class="roll"><img src="./main_files/cs_icon04.png" alt=""><img class="over" src="./main_files/cs_icon04-1.png" alt=""></a></li>
		      </div>
		      <!-- // cscenter -->
		    </div>
		    <!-- // navi -->

			<!-- contents -->
	    	<div class="contents">
	      		<!-- top menu -->
	      		<div id="dvTopmeu" class="t_util">
			      <ul>
			        
			        	<li><a href="javascript:gLogin();">로그인</a></li>
			        	<li><a href="http://members.parkland.co.kr/my_parkland/join.asp" target="_blank">회원가입<img src="./main_files/icon_newwin.png" alt=""></a></li>
			        	<li><a href="https://eshop.parkland.co.kr:444/nhome/member/nomember_login.asp">비회원주문조회</a></li>
			       	
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp">MY 파크랜드</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp">장바구니(<span class="fbold maincolor" id="gTopCartCount">1</span>)</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/faq.asp">고객센터</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
					<!--li><a href="http://www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2006335008030200590&pageUnit=10&searchCnd=wrkr_no&searchKrwd=6218105081&pageIndex=1">사업자정보확인</a-->
					<li>service@parkland.co.kr</li>
			        <li class="sns">
			        	<a href="https://www.facebook.com/SuitHolic" target="_blank"><img src="./main_files/t_fbook.png" alt="페이스북"></a>
			        	<a href="http://blog.naver.com/parklanding" target="_blank"><img src="./main_files/t_blog.png" alt="블로그"></a>
			        	<a href="https://www.instagram.com/parklandholic" target="_blank"><img src="./main_files/t_insta.png" alt="블로그"></a>
			        	<!--<a href="http://parklanding.tistory.com/" target="_blank"><img src="/nhome/img/t_tistory.png" alt="티스토리" /></a>
			        	<a href="javascript:addFavorite();"><img src="/nhome/img/t_bookmark.png" alt="facebook" /></a>-->
			        </li>
			      </ul>
	      		</div>
	      		<!-- // top menu -->

	      		<!--  content_area -->
	      		<div class="content_area">

	
<!--// pc : mobile s //-->



<script type="text/javascript">
var _bAce = [];
function ACEL_TRACKING(mode, ename) {
 var ACEL_img = new Image();
 var ACED_D = 'gtm1.acecounter.com';
 var ACED_H = (location.protocol == 'https:') ? 'https://' + ACED_D + ':5443' : 'http://' + ACED_D + ':5656';
 ACEL_img.src = ACED_H + '/EMAM?euid=AS4A41784471665&ename=' + ename + '&fdv=' + mode + '&RID=' + Math.random() + '&';
 if (typeof(Array.prototype.push) != 'undefined') {
  _bAce.push(ACEL_img);
 };
};
</script>

   <!-- main rolling -->
		<div class="rolling_wrap">
			<div id="owl-carousel01" class="owl-carousel owl-theme owl-loaded owl-drag">
			
					
				
			
				
			
            


        	<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-3000px, 0px, 0px); transition: all 0.25s ease 0s; width: 12000px;"><div class="owl-item cloned" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=475"><img src="./main_files/outer_2021.jpg" alt=""></a></div></div><div class="owl-item cloned" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=98"><img src="./main_files/winter40sale_2021.jpg" alt=""></a></div></div><div class="owl-item cloned" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1222"><img src="./main_files/ndiff_2021fw.jpg" alt=""></a></div></div><div class="owl-item active" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=483"><img src="./main_files/2022banner.jpg" alt=""></a></div></div><div class="owl-item" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=479"><img src="./main_files/ecobag_pc_2022.jpg" alt=""></a></div></div><div class="owl-item" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=476"><img src="./main_files/knit_2021.jpg" alt=""></a></div></div><div class="owl-item" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=475"><img src="./main_files/outer_2021.jpg" alt=""></a></div></div><div class="owl-item" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=98"><img src="./main_files/winter40sale_2021.jpg" alt=""></a></div></div><div class="owl-item" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1222"><img src="./main_files/ndiff_2021fw.jpg" alt=""></a></div></div><div class="owl-item cloned" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=483"><img src="./main_files/2022banner.jpg" alt=""></a></div></div><div class="owl-item cloned" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=479"><img src="./main_files/ecobag_pc_2022.jpg" alt=""></a></div></div><div class="owl-item cloned" style="width: 1000px;"><div class="item"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=476"><img src="./main_files/knit_2021.jpg" alt=""></a></div></div></div></div><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div><div class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div></div>
        	<div class="customNavigation arr-btn"> <a class="btn customNextBtn01">Previous</a> <a class="btn customPrevBtn01">Next</a> </div>
      	</div>
      	<script>
            $(document).ready(function() {
              var owl = $('#owl-carousel01');
              owl.owlCarousel({
                items: 1,
                loop: true,
                //margin: 10,
				//nav:true,
				slideSpeed : 4500,
                autoplay: true,
                autoplayTimeout: 4500,
               // autoplayHoverPause: true,
              });

			  // Go to the next item
				$('.customNextBtn01').click(function() {
	   				 owl.trigger('next.owl.carousel');
				})
				// Go to the previous item
				$('.customPrevBtn01').click(function() {
	   				owl.trigger('prev.owl.carousel', [300]);
				})
            })
          </script>
      	<!-- // main rolling -->

<!-- 추가 -->
<link rel="stylesheet" href="./main_files/slick.css"><!--slider css -->
<script src="./main_files/slick.js.다운로드" type="text/javascript"></script><!-- main slider js -->
<!-- roll banner -->
<!-- div class="sroll_tit"><img src="/nhome/img/anywear_t.png"></div-->
         <!-- div class="sroll_img">
           <!-- div class="sroll">

			<!--div class="item"><a href="/nhome/shop/eventmain2.asp?eventId2=466"><img src="/nhome/img/2021/accers_n_02.jpg" alt="" /></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20980&gdCode=JCS18207&brandId=&gcId="><img src="/nhome/img/shirts_roll/JCS18207.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20650&gdCode=JDS18212&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDS18212.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20662&gdCode=JDS18215&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDS18215.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=21064&gdCode=JDS18219&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDS18219.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20651&gdCode=JDS18262&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDS18262.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19766&gdCode=JPC18102A&brandId=&gcId="><img src="/nhome/img/shirts_roll/JPC18102A.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20130&gdCode=JPC18282&brandId=&gcId="><img src="/nhome/img/shirts_roll/JPC18282.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19886&gdCode=PCL18115S&brandId=&gcId="><img src="/nhome/img/shirts_roll/PCL18115S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20637&gdCode=PCS18232A&brandId=&gcId="><img src="/nhome/img/shirts_roll/PCS18232A.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=21039&gdCode=PCS18259S&brandId=&gcId="><img src="/nhome/img/shirts_roll/PCS18259S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20772&gdCode=PDS18213&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDS18213.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20668&gdCode=PDS18228S&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDS18228S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19915&gdCode=PKC18284S&brandId=&gcId="><img src="/nhome/img/shirts_roll/PKC18284S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19850&gdCode=PPC18182A&brandId=&gcId="><img src="/nhome/img/shirts_roll/PPC18182A.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19852&gdCode=PPC18271&brandId=&gcId="><img src="/nhome/img/shirts_roll/PPC18271.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=21062&gdCode=PPC18273&brandId=&gcId="><img src="/nhome/img/shirts_roll/PPC18273.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=21055&gdCode=PPC18291&brandId=&gcId="><img src="/nhome/img/shirts_roll/PPC18291.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=21058&gdCode=PPD18215N&brandId=&gcId="><img src="/nhome/img/shirts_roll/PPD18215N.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20430&gdCode=PTS18221&brandId=&gcId="><img src="/nhome/img/shirts_roll/PTS18221.png"></a></div-->

             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20314&gdCode=JDL18101&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDL18101.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20255&gdCode=JDL18101S&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDL18101S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19896&gdCode=JKC18281S&brandId=&gcId="><img src="/nhome/img/shirts_roll/JKC18281S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20021&gdCode=JDL18102S&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDL18102S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20022&gdCode=JDL18103&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDL18103.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19898&gdCode=JKC18283S&brandId=&gcId="><img src="/nhome/img/shirts_roll/JKC18283S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20023&gdCode=JDL18109&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDL18109.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20284&gdCode=JDS18201&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDS18201.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19901&gdCode=JKF18201S&brandId=&gcId="><img src="/nhome/img/shirts_roll/JKF18201S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20285&gdCode=JDS18201S&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDS18201S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20286&gdCode=JDS18202&brandId=&gcId="><img src="/nhome/img/shirts_roll/JDS18202.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19976&gdCode=PDL18111&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDL18111.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20601&gdCode=PKC18210&brandId=&gcId="><img src="/nhome/img/shirts_roll/PKC18210.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19977&gdCode=PDL18112&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDL18112.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19978&gdCode=PDL18113&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDL18113.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19979&gdCode=PDL18114&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDL18114.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20524&gdCode=PKF18272S&brandId=&gcId="><img src="/nhome/img/shirts_roll/PKF18272S.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19758&gdCode=PDL18121&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDL18121.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19759&gdCode=PDL18122&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDL18122.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=19760&gdCode=PDL18123&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDL18123.png"></a></div-->
             <!-- div><a href="http://eshop.parkland.co.kr/nhome/shop/goodinfo.asp?gdNum=20296&gdCode=PDS18221&brandId=&gcId="><img src="/nhome/img/shirts_roll/PDS18221.png"></a></div-->
           <!--/div-->
        <!-- script>
                $('.sroll').slick({
  dots: false,
  infinite: true,
  speed: 10000,
  slidesToShow: 7,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 0,
  //centerPadding: '40px',
  //variableWidth: true

});
</script>
         </div-->
<!-- // roll banner -->


     <div class="mcbanner">

     <div>
     		<!--<ul style="padding-bottom:20px;"><a href="http://eshop.parkland.co.kr/nhome/shop/eventmain2.asp?eventId2=408"><img src="/nhome/img/roll/casual_model_april_pc.jpg" alt=""></a></ul>
     		<ul style="padding-bottom:20px;"><a href="http://eshop.parkland.co.kr/nhome/shop/eventmain2.asp?eventId2=407"><img src="/nhome/img/roll/newcomfort_formal_april_pc.jpg" alt=""></a></ul>-->

            <ul style="padding-bottom:20px;"><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=16&amp;gtype=2"><img src="./main_files/2022ss_dressshirts.jpg" alt=""></a></ul>
		    <ul style="padding-bottom:20px;"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=82"><img src="./main_files/bigsize.jpg" alt=""></a></ul>
            <!--ul style="padding-bottom:20px;"><a href="shop/eventmain2.asp?eventId2=467"><img src="/nhome/img/2021/jumper_2021_pc.jpg" alt="" /></a></ul-->
            <!--ul style="padding-bottom:20px;"><a href="shop/eventmain2.asp?eventId2=468"><img src="/nhome/img/2021/2021_coat_pc.jpg" alt="" /></a></ul-->
		    <ul style="padding-bottom:20px;"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=478"><img src="./main_files/mensouter.jpg" alt=""></a></ul>
            <ul style="padding-bottom:20px;"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=401"><img src="./main_files/outlet_banner.jpg" alt=""></a></ul><strong></strong>
		    <ul style="padding-bottom:20px;"><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=416"><img src="./main_files/dressshirts_2021.jpg" alt=""></a></ul>


		 </div>
		 <!--ul style="padding-bottom:20px;"><a href="shop/eventmain2.asp?eventId2=423"><img src="/nhome/img/2021/casual_may_pc.jpg" alt="" /></a></ul>
			<!-- formal may -->
		    <!--ul style="padding-bottom:20px;"><a href="shop/eventmain2.asp?eventId2=422"><img src="/nhome/img/2021/formal_may_pc.jpg" alt="" /></a></ul>
			<!--ul style="padding-bottom:20px;"><a href="http://eshop.parkland.co.kr/nhome/shop/eventmain.asp?eventId2=223"><img src="../nhome/img/outletsale_2020.jpg" alt=""></a></ul>
	        <!--아울렛세일-->


		    <!--ul style="padding-bottom:20px;"><a href="http://eshop.parkland.co.kr/nhome/shop/eventmain2_men_collect.asp?eventId2=385"><img src="../nhome/img/menscollec_n.jpg" alt=""></a></ul>
	        <!--아울렛세일-->

		     <!--ul style="padding-bottom:20px;"><a href="http://eshop.parkland.co.kr/nhome/shop/eventmain2.asp?eventId2=387"><img src="../nhome/img/womenscollect.jpg" alt=""></a></ul>
	        <!--아울렛세일-->



	<!--ul style="padding-bottom:20px;"><a href="http://eshop.parkland.co.kr/nhome/shop/eventmain2_formal_nov.asp?eventId2=373"><img src="../nhome/img/oct_formal_pc.jpg" alt=""></a> </ul> <!--포멀얼모-->

		<!--ul style="padding-bottom:20px;"><a href="http://eshop.parkland.co.kr/nhome/shop/eventmain2_casual_nov.asp?eventId2=374"><img src="../nhome/img/oct_casual_pc.jpg" alt=""></a> </ul> <!--포멀얼모-->









   </div><!-- 180911 add -->
  <!--  <div class="mcbanner">
		<ul><a href="/nhome/shop/eventmain2.asp?eventId2=92"><img src="/nhome/img/18fw_banner/18fwbanner_01.jpg" alt=""></a></ul>
		<ul>
		<!-- <li class="bns" style="padding-right:5px"><a href="/nhome/shop/eventmain2.asp?eventId2=90"><img src="/nhome/img/18fw_banner/18fwbanner_0201.jpg" alt=""></a></li>
		 <li class="bns" style="padding-right:5px"><a href="/nhome/shop/eventmain2.asp?eventId2=93"><img src="/nhome/img/18fw_banner/18fwbanner_0202.jpg" alt=""></a></li>
		 <li class="bns"><a href="/nhome/shop/eventmain2.asp?eventId2=91"><img src="/nhome/img/18fw_banner/18fwbanner_0203.jpg" alt=""></a></li>
		</ul>
	  <!-- <ul><a href="/nhome/shop/eventmain2.asp?eventId2=96"><img src="/nhome/img/18fw_banner/18fwbanner_03.jpg" alt=""></a></ul>  -->
	  <!--  <ul><a href="/nhome/shop/eventmain2.asp?eventId2=46"><img src="/nhome/img/18fw_banner/warm.jpg" alt=""></a></ul>   -->
   </div>
<!-- // 180911 add -->
<!-- New Items wrap-->
	<div id="dvNewWrapper">
	      	<!-- New Items -->
	   	<div id="dvNewHeaderWrapper" style="height:143px;">
			<div id="dvNewHeader" style="width:1000px;z-index:9999;background-color:#ffffff;">
			      <div class="m_tit mt70">
			        <p>New Items</p>
			      </div>
			      <div class="list_choice">
			        <!--<li><a href="#"><img src="/nhome/img/list4_on.png" alt=""></a></li>-->
			        <li><img src="./main_files/list4_on.png" alt="" title="한줄에 3개 혹은 4개상품으로 보기" onsrc="/nhome/img/list4_on.png" offsrc="/nhome/img/list4_off.png" id="new-row" data-count="3" onclick="fnToggleRowtype(1);" style="cursor:pointer;"></li>
			      </div>
			      <!--tab -->
			      <div class="main_tab" id="dvNew" cur-tab="#tab1">
			        <li class="active"><a href="https://eshop.parkland.co.kr:444/nhome/#tab1">All</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/#tab2">Parkland</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/#tab3">J.Hass</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/#tab4">Cabrini</a></li>
			        <!--<li><a href="#tab5">PL Sports</a></li>-->
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/#tab6">Prelin</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/#tab7">Peri Jenson</a></li>
			        <!--<li><a href="#tab8">PARKON</a></li>-->
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/#tab9">N.DIFF</a></li>
			      </div>
			      <!-- // tab -->
		  </div>
	  </div>
	      <!-- All -->
	      <div id="tab1" class="tab_contents" brandid="" type="1" style="display: block;"><div class="item03"><ul><li>  <!-- box -->	<div class="listbox">      <div class="thumb_box03">			<a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30529&amp;gdCode=JDL22163&amp;brandId=1204">				<img src="./main_files/JDL22163_1_M.jpg" class="imgListToggle" oversrc="/file/goods/1204/2022/JDL22163/JDL22163_2_M.jpg" outsrc="/file/goods/1204/2022/JDL22163/JDL22163_1_M.jpg" title="[90~130 SIZE]블루 T/C 드레스 셔츠" onmouseover="javascript:fnMouseover(this);" onerror="javascript:fnLoadImgError(this, 1);">			</a></div>      <div class="txt_box"><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30529&amp;gdCode=JDL22163&amp;brandId=1204">        <div class="l_brandname">          <p>제이하스</p>        </div>        <div class="l_brandcode">No.JDL22163</div>        <div class="l_subj"><img src="./main_files/new.png"> [90~130 SIZE]블루 T/C 드레스 셔츠</div>        <div class="l_price">19,000원</div>        </a>      </div>	</div><!-- // box --> </li><li>  <!-- box -->	<div class="listbox">      <div class="thumb_box03">			<a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30520&amp;gdCode=JDL22101&amp;brandId=1204">				<img src="./main_files/JDL22101_1_M.jpg" class="imgListToggle" oversrc="/file/goods/1204/2022/JDL22101/JDL22101_2_M.jpg" outsrc="/file/goods/1204/2022/JDL22101/JDL22101_1_M.jpg" title="[90~130 SIZE]베이스 화이트 드레스 셔츠 " onmouseover="javascript:fnMouseover(this);" onerror="javascript:fnLoadImgError(this, 1);">			</a></div>      <div class="txt_box"><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30520&amp;gdCode=JDL22101&amp;brandId=1204">        <div class="l_brandname">          <p>제이하스</p>        </div>        <div class="l_brandcode">No.JDL22101</div>        <div class="l_subj"><img src="./main_files/new.png"> [90~130 SIZE]베이스 화이트 드레스 셔츠 </div>        <div class="l_price">35,000원</div>        </a>      </div>	</div><!-- // box --> </li><li>  <!-- box -->	<div class="listbox">      <div class="thumb_box03">			<a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30524&amp;gdCode=JDL22104&amp;brandId=1204">				<img src="./main_files/JDL22104_1_M.jpg" class="imgListToggle" oversrc="/file/goods/1204/2022/JDL22104/JDL22104_2_M.jpg" outsrc="/file/goods/1204/2022/JDL22104/JDL22104_1_M.jpg" title="[90~130 SIZE]베이스 블랙 드레스 셔츠 " onmouseover="javascript:fnMouseover(this);" onerror="javascript:fnLoadImgError(this, 1);">			</a></div>      <div class="txt_box"><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30524&amp;gdCode=JDL22104&amp;brandId=1204">        <div class="l_brandname">          <p>제이하스</p>        </div>        <div class="l_brandcode">No.JDL22104</div>        <div class="l_subj"><img src="./main_files/new.png"> [90~130 SIZE]베이스 블랙 드레스 셔츠 </div>        <div class="l_price">35,000원</div>        </a>      </div>	</div><!-- // box --> </li></ul><ul><li>  <!-- box -->	<div class="listbox">      <div class="thumb_box03">			<a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30527&amp;gdCode=JDL22107&amp;brandId=1204">				<img src="./main_files/JDL22107_1_M.jpg" class="imgListToggle" oversrc="/file/goods/1204/2022/JDL22107/JDL22107_2_M.jpg" outsrc="/file/goods/1204/2022/JDL22107/JDL22107_1_M.jpg" title="[90~130 SIZE]이지아이론 리젠 라이트 블루 멜란지 코트나 셔츠 " onmouseover="javascript:fnMouseover(this);" onerror="javascript:fnLoadImgError(this, 1);">			</a></div>      <div class="txt_box"><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30527&amp;gdCode=JDL22107&amp;brandId=1204">        <div class="l_brandname">          <p>제이하스</p>        </div>        <div class="l_brandcode">No.JDL22107</div>        <div class="l_subj"><img src="./main_files/new.png"> [90~130 SIZE]이지아이론 리젠 라이트 블루 멜란지 코트나 셔츠 </div>        <div class="l_price">39,000원</div>        </a>      </div>	</div><!-- // box --> </li><li>  <!-- box -->	<div class="listbox">      <div class="thumb_box03">			<a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30525&amp;gdCode=JDL22105&amp;brandId=1204">				<img src="./main_files/JDL22105_1_M.jpg" class="imgListToggle" oversrc="/file/goods/1204/2022/JDL22105/JDL22105_2_M.jpg" outsrc="/file/goods/1204/2022/JDL22105/JDL22105_1_M.jpg" title="[90~130 SIZE]이지아이론 리젠 블루 멜란지 코트나 셔츠 " onmouseover="javascript:fnMouseover(this);" onerror="javascript:fnLoadImgError(this, 1);">			</a></div>      <div class="txt_box"><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30525&amp;gdCode=JDL22105&amp;brandId=1204">        <div class="l_brandname">          <p>제이하스</p>        </div>        <div class="l_brandcode">No.JDL22105</div>        <div class="l_subj"><img src="./main_files/new.png"> [90~130 SIZE]이지아이론 리젠 블루 멜란지 코트나 셔츠 </div>        <div class="l_price">39,000원</div>        </a>      </div>	</div><!-- // box --> </li><li>  <!-- box -->	<div class="listbox">      <div class="thumb_box03">			<a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30541&amp;gdCode=PDL22103&amp;brandId=1219">				<img src="./main_files/PDL22103_1_M.jpg" class="imgListToggle" oversrc="/file/goods/1219/2022/PDL22103/PDL22103_2_M.jpg" outsrc="/file/goods/1219/2022/PDL22103/PDL22103_1_M.jpg" title="[90~130 SIZE]이지아이론 리젠 블루 멜란지 코트나 셔츠 " onmouseover="javascript:fnMouseover(this);" onerror="javascript:fnLoadImgError(this, 1);">			</a></div>      <div class="txt_box"><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30541&amp;gdCode=PDL22103&amp;brandId=1219">        <div class="l_brandname">          <p>파크랜드</p>        </div>        <div class="l_brandcode">No.PDL22103</div>        <div class="l_subj"><img src="./main_files/new.png"> [90~130 SIZE]이지아이론 리젠 블루 멜란지 코트나 셔츠 </div>        <div class="l_price">39,000원</div>        </a>      </div>	</div><!-- // box --> </li></ul><ul>	</ul></div></div>
	      <!-- // All -->
	      <!-- Parkland -->
	      <div id="tab2" class="tab_contents" brandid="1219" type="1" style="display: none;">
	        <!-- 3개씩 보여지는 리스트 -->

	        <!-- // 3개씩 보여지는 리스트 -->
	      </div>
	      <!-- // Parkland -->
	      <!-- J.Hass -->
	      <div id="tab3" class="tab_contents" brandid="1204" type="1" style="display: none;"><!-- 위 소스와 동일해서 생략했습니다. --></div>
	      <!-- // J.Hass -->
	      <!-- Cabrini -->
	      <div id="tab4" class="tab_contents" brandid="1229" type="1" style="display: none;"><!-- 위 소스와 동일해서 생략했습니다. --></div>
	      <!-- // Cabrini -->
	      <!-- PL Sports -->
	      <!--<div id="tab5" class="tab_contents"></div>-->
	      <!-- // PL Sports -->
	      <!-- Prelin -->
	      <div id="tab6" class="tab_contents" brandid="1203" type="1" style="display: none;"><!-- 위 소스와 동일해서 생략했습니다. --></div>
	      <!-- // Prelin -->
	      <!-- Peri Jenson -->
	      <div id="tab7" class="tab_contents" brandid="1210" type="1" style="display: none;"><!-- 위 소스와 동일해서 생략했습니다. --></div>
	      <!-- // Peri Jenson -->
	       <!-- parkon -->
	      <!--<div id="tab8" class="tab_contents" brandId="1234" type="1"></div>-->
	      <!-- // parkon -->
	      <!-- ndiff -->
	      <div id="tab9" class="tab_contents" brandid="1222" type="1" style="display: none;"><!-- 위 소스와 동일해서 생략했습니다. --></div>
	      <!-- // ndiff -->


	      <!-- // New Items -->
         <div class="n_more_btn">
           <a href="https://eshop.parkland.co.kr:444/nhome/#" onclick="fnMoveMore();"><span>+</span>더보기</a>
         </div>

   </div>
<!-- // New Items wrap-->
<br><br>


<!--// 171219 추가 및 수정 -->

  	<!--div class="main_sbanner">
           <ul>
	            <li><a href="/nhome/shop/eventmain.asp?eventId=40"><img src="/nhome/img/small_banner1118_01.jpg" /></a></li>
	            <li><a href="/nhome/shop/eventmain.asp?eventId=41"><img src="/nhome/img/small_banner1118_03.jpg" /></a></li>
         </ul>

     	</div-->



				</div>
				<!-- // content_area -->

			  	<!-- Footer -->
			  	<div class="footer_wrap">
			    	<div class="footer_menu">
				      	<div class="fmenu">
					        <li><a href="http://company.parkland.kr/" target="_blank">회사소개</a></li>
					        <li><a href="https://members.parkland.co.kr/info/agreement.asp" target="_blank">이용약관</a></li>
					        <li><a href="https://members.parkland.co.kr/info/personal.asp" target="_blank">개인정보취급방침</a></li>
					        <li><a href="https://members.parkland.co.kr/info/email.asp" target="_blank">이메일무단수집거부</a></li>
					        <!--<li><a href="/nhome/customer/faq.asp">고객센터</a></li>-->
					        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/faq.asp">FAQ</a></li>
					        <li><a href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
							<li>service@parkland.co.kr</li>
							<li><a href="http://www.ftc.go.kr/www/bizCommView.do?key=232&amp;apv_perm_no=2006335008030200590&amp;pageUnit=10&amp;searchCnd=wrkr_no&amp;searchKrwd=6218105081&amp;pageIndex=1">사업자정보확인</a></li>

				      	</div>
			      		<!--div class="fselect">
			        		<div class="select_type001">
			          			<select name="select2" onChange="new_window(value,'','location=yes, directories=yes,resizable=yes,status=yes,toolbar=yes,menubar=yes, left=0, top=0, scrollbars=yes')">
						            <option value="http://eshop.parkland.co.kr">= FAMILY SITE =</option>
						            <option value="http://www.parkland.co.kr">파크랜드</option>
						            <option value="http://company.parkland.kr/">파크랜드기업</option>
						            <option value="http://members.parkland.co.kr/">파크랜드 멤버스</option>
						            <option value="http://www.jhass.co.kr/">제이하스</option>
						            <option value="http://www.vostro.kr">보스트로</option>
						            <option value="http://www.prelin.co.kr/">프렐린</option>
						            <option value="http://www.austinreed.co.kr/">오스틴리드</option>
						            <option value="http://www.parklandsports.co.kr/">PL스포츠</option>
			          			</select>
			        		</div>
						</div-->
			    	</div>
			    	<div class="footer">
			      		<div class="f_left">
			        		<address>
							        파크랜드공식인터넷쇼핑몰(주)파크랜드/대표이사:곽국민,박명규/부산광역시 금정구 서2동 219-2번지(우609-722)<br>
							        사업자등록번호:621-81-05081/통신판매업신고번호:2006-00590 <br>
							        CS CENTER 1644-0582 /FAX:051-527-5521
					        </address>
			       			<p>Copyright(c) 2006-2022 파크랜드 온라인공식쇼핑몰 (주)파크랜드 All Rights Reserved.</p>
			      		</div>
			      		<div class="f_right">
			        		<ul>
								<li class="fimg"><img src="./main_files/inipay.png" alt=""></li>
					          	<li>
						            <p>파크랜드몰은(주)이니시스의<br>
						              구매안전 에스크로서비스를 제공합니다.</p>
			            			<p><a href="https://mark.inicis.com/mark/escrow_popup.php?no=31366&amp;st=1355291431"><img src="./main_files/inipay_btn.png" alt=""></a></p>
			          			</li>
			        		</ul>
			      		</div>
					</div>
				</div>
			  	<!-- //Footer -->
			</div>
	    	<!-- // contents -->

			<!-- rnavi -->
			<div class="rnavi">
				<!-- quick -->
				<div class="rightquick_area">
					<div class="rightquick">
						<div class="q_cart"><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp"><img src="./main_files/cart.png" alt=""></a>
			       		 	<p>(<span id="gRightCartCount">1</span>)</p>
			      		</div>
			      		<div class="q_recent">Recent
			        		<p>(<span id="gRecentViewCount">0</span>)</p>
					        <!-- 최근등록상품 리스트 롤링 -->
					        <div class="recent">
					          <!--<ul class="customNavigation PrevBtn">
					            <a class="btn customPrevBtn"><img src="/nhome/img/arr_l.png"  alt="이전" /></a>
					          </ul>-->
					          <ul id="gListRecentView"></ul>
					          <!--<ul class="customNavigation NextBtn">
					            <a class="btn customNextBtn"><img src="/nhome/img/arr_r.png"  alt="다음" /></a>
					          </ul>
					        </div>-->
					        <!-- // 최근등록상품 리스트 롤링 -->
			      		</div>
			    	</div>
			    	<div class="righttop"><a href="https://eshop.parkland.co.kr:444/nhome/#"><img src="./main_files/top.png" alt="top"></a></div>
			  	</div>
			  	<!-- // quick -->
			</div>
			<!-- //rnavi -->
	  	</div>
	  	<!-- // container -->

	
	<!-- //WRAP -->



			<!-- WIDERPLANET  SCRIPT START 2021.12.1 -->
		<div id="wp_tg_cts" style="display:none;"><script id="wp_tag_script_1645774219113" src="./main_files/wpc.php"></script></div>
		<script type="text/javascript">
		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push(
		(function() {
			return {
				wp_hcuid:"",   /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
						*주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
				ti:"53076",	/*광고주 코드 */
				ty:"Home",	/*트래킹태그 타입 */
				device:"web"	/*디바이스 종류  (web 또는  mobile)*/

			};
		}));
		</script>
		<script type="text/javascript" async="" src="./main_files/wp_astg_4.0.js.다운로드"></script>
		<!-- // WIDERPLANET  SCRIPT END 2021.12.1 -->

	
	
<!--<script>
// 위로 버튼
//$(document).scroll(function() {
//  btn_mv_up('.righttop');
// }).on('click', '.righttop', function() {
//  $("html, body").animate({scrollTop:0}, 'slow');
//});
//</script>-->

	<script type="text/javascript">
	  function new_window(theURL,winName,features){ //v3.0
	   window.open(theURL,winName,features);
	}
	</script>

	<script type="text/javascript">
	$( document ).ready(function() {
		getCartCount();
		listRecentView();

		//resizeLeftNav();
	});

	//$( window ).resize(function() {
	//  resizeLeftNav();
//	});

	//function resizeLeftNav()	{
//	$("#leftside-navigation").height(($(window).height() - 450) + "px");
//	}

	function getCartCount()	{
		getCartInfo("cmd=GETCARTCOUNT", getCartCount_proc, "/nhome");
	}

	function getCartCount_proc(ret)	{
		eval("var adata = " + ret);
		if(parseInt(adata.retCode) != 0 )		{
			alert(adata.Message);
			return false;
		}

		$("#gTopCartCount").html(adata.data);
		$("#gRightCartCount").html(adata.data);
	}

	function listRecentView()		{
		getGoodsInfo("cmd=LISTRECENTVIEWED", listRecentView_proc, "/nhome");
	}

	function listRecentView_proc(ret)		{
		eval("var adata = " + ret);
		if(parseInt(adata.retCode) != 0 )		{
			alert(adata.Message);
			return false;
		}

		$("#gRecentViewCount").html(adata.count);
		$("#gListRecentView").html(adata.data);
	}

	function addFavorite() {
		var bookmarkURL = window.location.href;
        var bookmarkTitle = document.title;
        var triggerDefault = false;

        if (window.sidebar && window.sidebar.addPanel) {
            // Firefox version < 23
            window.sidebar.addPanel(bookmarkTitle, bookmarkURL, '');
        } else if ((window.sidebar && (navigator.userAgent.toLowerCase().indexOf('firefox') > -1)) || (window.opera && window.print)) {
            // Firefox version >= 23 and Opera Hotlist
            var $this = $(this);
            $this.attr('href', bookmarkURL);
            $this.attr('title', bookmarkTitle);
            $this.attr('rel', 'sidebar');
        } else if (window.external && ('AddFavorite' in window.external)) {
            // IE Favorite
            window.external.AddFavorite(bookmarkURL, bookmarkTitle);
        } else {
            // WebKit - Safari/Chrome
            alert((navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Cmd' : 'Ctrl') + '+D 키를 눌러 즐겨찾기에 등록하실 수 있습니다.');
        }
	}

	function gLogin()	{
		var loc = "https://eshop.parkland.co.kr:444/nhome/index.asp?";
		location.href = "https://eshop.parkland.co.kr:444/nhome/member/member_login.asp?retURL=" + encodeURIComponent(loc);
	}
	</script>

<!-- AceCounter Log Gathering Script V.8.0.AMZ2019080601 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc6.acecounter.com','8080','AS4A41784471665','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ="https://"+ Inf[0] +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<!-- AceCounter Log Gathering Script End -->


	<script type="text/javascript" src="./main_files/wcslog.js.다운로드"></script>
	<script type="text/javascript">
	if(!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "d2a0aa740ab8d";
	wcs_do();
	</script>
	<script type="text/javascript">
    if(!wcs_add) var wcs_add = {};
     wcs_add["wa"] = "s_5a296bbc5570";
     wcs.inflow("parkland.co.kr");
     wcs_do();
	</script>
	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-96357523-1', 'auto');
	  ga('send', 'pageview');
	</script>

<!--// 20171214 min //-->
<script type="text/javascript">
var _bAce = [];
function ACEL_TRACKING(mode, ename) {
 var ACEL_img = new Image();
 var ACED_D = 'gtm1.acecounter.com';
 var ACED_H = (location.protocol == 'https:') ? 'https://' + ACED_D + ':5443' : 'http://' + ACED_D + ':5757';
 ACEL_img.src = ACED_H + '/EMAM?euid=AS4A41784471665&ename=' + ename + '&fdv=' + mode + '&RID=' + Math.random() + '&';
 if (typeof(Array.prototype.push) != 'undefined') {
  _bAce.push(ACEL_img);
 };
};
</script>

	

<script type="text/javascript">
$( document ).ready(function() {
	
	loadList("#tab1");
	/*loadList("#tab11");
	loadList("#tab167");
	loadList("#tab168");*/
	controlTabs();
	//controlListImages();
});

$(window).scroll(function() {
	fnFixHeader();
});


function fnFixHeader()	{
	var scrollTop =  $(window).scrollTop();
	var topmargin = $("#dvTopmeu").height();

	var dvNewTop = $("#dvNewWrapper").offset().top;
	var dvNewHeight = $("#dvNewWrapper").height();

	var dvBestTop = $("#dvBestWrapper").offset().top;
	var dvBestHeight = $("#dvBestWrapper").height();

	$("#dvNewHeader").css("position", "");
	$("#dvBestHeader").css("position", "");
	console.log("scrollTop", scrollTop);
	console.log("dvNewTop-topmargin-50", (dvNewTop-topmargin-50) );
	console.log("(dvNewTop + dvNewHeight-topmargin-500)", (dvNewTop + dvNewHeight-topmargin-500));
	console.log("dvNewTop", dvNewTop);
	console.log("dvNewHeight", dvNewHeight);
	console.log("topmargin", topmargin);
	if(scrollTop >= (dvNewTop-topmargin-50) && scrollTop < (dvNewTop + dvNewHeight-topmargin-500)) 		{
		console.log("dvnew fixed");
		$("#dvNewHeader").css("position", "fixed");
		$("#dvNewHeader").css("top", "85px");
	}
	else if(scrollTop >= (dvBestTop-topmargin-50) && scrollTop < (dvBestTop + dvBestHeight-topmargin)) 		{
			console.log("dvbest fixed");
			$("#dvNewHeader").css("position", "");
			$("#dvBestHeader").css("position", "fixed");
			$("#dvBestHeader").css("top", "85px");

	}
	else		{
		$("#dvNewHeader").css("position", "");
		$("#dvBestHeader").css("position", "");
	}

}

 function fnToggleRowtype(ntype)		{
      	var o;
      	if(ntype==1){
      		o = $("#new-row");
      	}else if(ntype==3){
      		o = $("#best-row2");
      	}else if(ntype==4){
      		o = $("#Qbest-row2");
      	}else{
      		o = $("#best-row");
		}

      	if(o.attr("src") == o.attr("onsrc"))	{
      		o.attr("data-count", "3");
      		o.attr("src", o.attr("offsrc"));
     	}
     	else	{
      		o.attr("data-count", "4");
      		o.attr("src", o.attr("onsrc"));
     	}

     	if(ntype==1)	{
     		loadList($("#dvNew").attr("cur-tab"));
     	}
     	else if(ntype==3)	{
     		loadList($("#dvBest2").attr("cur-tab"));
     	}
     	else if(ntype==4)	{
     		loadList($("#QdvBest2").attr("cur-tab"));
     	}
     	else	{
     		loadList($("#dvBest").attr("cur-tab"));
     	}
      }

function fnMouseover(o)	{
	controlListImages();
}

function loadList(tabid)	{
	if(parseInt($(tabid).attr("type")) == 1 )	{
		loadNewList(tabid);
	}
	else if(parseInt($(tabid).attr("type")) == 3 )	{
		loadBestList3(tabid);
	}
	else if(parseInt($(tabid).attr("type")) == 4 )	{
		QloadBestList3(tabid);
	}
	else	{
		loadBestList(tabid);
	}

}

function showList(o, ret)	{
	eval("var adata = " + ret);
	o.html(adata.data);
}

function loadNewList(tabid)	{
	$("#dvNew").attr("cur-tab", tabid);
	var o = $(tabid);
	var count = $("#new-row").attr("data-count");

	loaddata("cmd=GETNEWLIST&nCount=" + count + "&brandId=" + o.attr("brandId") ,"/nhome/if/ifgoods.asp", function(data)	{
		showList(o, data);
	});
}

function loadBestList(tabid)	{
	$("#dvBest").attr("cur-tab", tabid);
	var o = $(tabid);
	var count = $("#best-row").attr("data-count");
	loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId=" + o.attr("brandId") ,"/nhome/if/ifgoods.asp", function(data)	{
		showList(o, data);
	});
}
function loadBestList3(tabid)	{
	$("#dvBest2").attr("cur-tab", tabid);
	var o = $(tabid);
	var count = $("#best-row2").attr("data-count");
	loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId=" + o.attr("brandId") ,"/nhome/if/ifgoods.asp", function(data)	{
		showList(o, data);
	});
}
function QloadBestList3(tabid)	{
	$("#QdvBest2").attr("cur-tab", tabid);
	var o = $(tabid);
	var count = $("#Qbest-row2").attr("data-count");
	loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId=" + o.attr("brandId") ,"/nhome/if/ifgoods.asp", function(data)	{
		showList(o, data);
	});
}
function loadBestList_neo(tabid,cnt)	{
	$("#dvBest").attr("cur-tab", tabid);
	var o = $(tabid);
	var count = $("#best-row").attr("data-count");
	loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId=" + o.attr("brandId") + "&nCount2=" + cnt ,"/nhome/if/ifgoods.asp", function(data)	{
		showList(o, data);
	});
}
function loadBestList_neo2(tabid,cnt)	{
	$("#dvBest2").attr("cur-tab", tabid);
	var o = $(tabid);
	var count = $("#best-row2").attr("data-count");
	loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId=" + o.attr("brandId") + "&nCount2=" + cnt ,"/nhome/if/ifgoods.asp", function(data)	{
		showList(o, data);
	});
}
function QloadBestList_neo2(tabid,cnt)	{
	$("#QdvBest2").attr("cur-tab", tabid);
	var o = $(tabid);
	var count = $("#Qbest-row2").attr("data-count");
	loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId=" + o.attr("brandId") + "&nCount2=" + cnt ,"/nhome/if/ifgoods.asp", function(data)	{
		showList(o, data);
	});
}
function controlTabs()	{
  	//Default Action
	$(".tab_contents").hide(); //Hide all content
	$(".main_tab li:first").addClass("active").show(); //Activate first tab
	$(".tab_contents:first").show(); //Show first tab content


	//On Click Event
	$(".main_tab li").click(function() {
		$(".main_tab li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_contents").hide(); //Hide all tab content
		var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active content
		loadList(activeTab);
		return false;
	});

	//Default Action
	$(".tab_contents01").hide(); //Hide all content
	$(".main_tab06 li:first").addClass("active").show(); //Activate first tab
	$(".tab_contents01:first").show(); //Show first tab content

	//On Click Event
	$(".main_tab06 li").click(function() {
		$(".main_tab06 li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_contents01").hide(); //Hide all tab content
		var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active content
		loadList(activeTab);
		return false;
	});
}


function fnMoveMore()	{
	var o = $($("#dvNew").attr("cur-tab"));
	if(o.attr("brandId") == "") 	{
		document.location.href = "http://eshop.parkland.co.kr/nhome/shop/goodsmain.asp?gcId=2&gtype=2";
	}
	else	{
		document.location.href = "/nhome/shop/brandmain.asp?brandId=" + o.attr("brandId");
	}
}

</script>
<!--//include virtual="/new_admin/auto.asp"//--></body></html>