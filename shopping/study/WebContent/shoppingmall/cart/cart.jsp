<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>파크랜드 공식쇼핑몰</title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=1300">
	<meta name="facebook-domain-verification" content="ljsthv428khej1ow7p3b9ffy8q67i5">
    <meta name="facebook-domain-verification" content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
	<link rel="stylesheet" type="text/css" href="./파크랜드 공식쇼핑몰_cart_files/reset.css" media="all">
	<link rel="stylesheet" type="text/css" href="./파크랜드 공식쇼핑몰_cart_files/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="./파크랜드 공식쇼핑몰_cart_files/owl.carousel.min.css">
	<!-- main slider css -->
	<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
	<!-- main slider css -->
	<script type="text/javascript" async="" src="./파크랜드 공식쇼핑몰_cart_files/ec.js.다운로드"></script><script type="text/javascript" async="" src="./파크랜드 공식쇼핑몰_cart_files/analytics.js.다운로드"></script><script async="" src="./파크랜드 공식쇼핑몰_cart_files/analytics.js.다운로드"></script><script src="./파크랜드 공식쇼핑몰_cart_files/AceCounter_AW.js.다운로드"></script><script type="text/javascript" async="" src="./파크랜드 공식쇼핑몰_cart_files/js"></script><script type="text/javascript" async="" src="./파크랜드 공식쇼핑몰_cart_files/analytics.js.다운로드"></script><script async="" src="./파크랜드 공식쇼핑몰_cart_files/fbevents.js.다운로드"></script><script src="./파크랜드 공식쇼핑몰_cart_files/jquery-1.11.3.min.js.다운로드"></script>
	<script type="text/javascript" src="./파크랜드 공식쇼핑몰_cart_files/owl.carousel.js.다운로드"></script><!-- main slider js -->
	<script src="./파크랜드 공식쇼핑몰_cart_files/default.js.다운로드" type="text/javascript" charset="euc-kr"></script>
	<script src="./파크랜드 공식쇼핑몰_cart_files/common.js.다운로드" type="text/javascript" charset="euc-kr"></script>

	<link rel="stylesheet" type="text/css" href="./파크랜드 공식쇼핑몰_cart_files/odesign.css">
	<script src="./파크랜드 공식쇼핑몰_cart_files/global.js.다운로드" type="text/javascript" charset="euc-kr"></script>

	<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
	<script async="" src="./파크랜드 공식쇼핑몰_cart_files/js(1)"></script>
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
			<div class="mlogo"><a href="https://eshop.parkland.co.kr:444/nhome/"><img src="./파크랜드 공식쇼핑몰_cart_files/logo.png" alt="parkland"></a></div>
			<div class="search">
		        <ul>
		          <li>
		         	<form id="frmGSearch" name="frmGSearch" method="post" onsubmit="return m_fnGSearchGood_submit();" action="https://eshop.parkland.co.kr:444/nhome/shop/search_result.asp">
		            <input id="gKeyword" name="gKeyword" type="text" title="통합검색" class="input01" accesskey="S" onclick="m_fnEnterKey(this, fnGSearchGood);" placeholder="검색어를 입력해주세요">
		            <input type="image" class="input_btn" src="./파크랜드 공식쇼핑몰_cart_files/btn_search.png" alt="Search">
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
		          <li id="menu1" class="sub-menu" class_normal="sub-menu" class_active="sub-menu active"> <a href="javascript:fnToggle(&#39;menu1&#39;);"><span>Men <img id="menu1_img" src="./파크랜드 공식쇼핑몰_cart_files/icon_plus.png" alt=""></span></a>
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
		          <li id="menu2" class="sub-menu" class_normal="sub-menu" class_active="sub-menu active"> <a href="javascript:fnToggle(&#39;menu2&#39;);"><span>WoMen <img id="menu2_img" src="./파크랜드 공식쇼핑몰_cart_files/icon_plus.png" alt=""></span></a>
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
		          <li class="l_normal"> <a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp#"><span>Brands</span></a>
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
		          <li class="l_normal"> <a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp#"><span>Special</span></a>
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
                  <li><p><a href="https://members.parkland.co.kr/my_parkland/join.asp" target="_blank"><img src="./파크랜드 공식쇼핑몰_cart_files/sr_icon_1.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img src="./파크랜드 공식쇼핑몰_cart_files/sr_icon_2.png" alt=""></a></p></li>
                </ul>
                <ul>
                  <!--<li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon03.png" alt="" /></a></p></li>-->
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img src="./파크랜드 공식쇼핑몰_cart_files/sr_icon_3.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=50"><img src="./파크랜드 공식쇼핑몰_cart_files/sr_icon_4.png" alt=""></a></p></li>
                </ul>
                <!--<ul>
                  <li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon05.png" alt="" /></a></p></li>
                </ul>-->
                <ul>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img src="./파크랜드 공식쇼핑몰_cart_files/sr_icon_5.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img src="./파크랜드 공식쇼핑몰_cart_files/sr_icon_6.png" alt=""></a></p></li>
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
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp" class="roll"><img src="./파크랜드 공식쇼핑몰_cart_files/cs_icon01.png" alt=""><img class="over" src="./파크랜드 공식쇼핑몰_cart_files/cs_icon01-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/formnew.asp" class="roll"><img src="./파크랜드 공식쇼핑몰_cart_files/cs_icon02.png" alt=""><img class="over" src="./파크랜드 공식쇼핑몰_cart_files/cs_icon02-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp" class="roll"><img src="./파크랜드 공식쇼핑몰_cart_files/cs_icon03.png" alt=""><img class="over" src="./파크랜드 공식쇼핑몰_cart_files/cs_icon03-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/myorder.asp" class="roll"><img src="./파크랜드 공식쇼핑몰_cart_files/cs_icon04.png" alt=""><img class="over" src="./파크랜드 공식쇼핑몰_cart_files/cs_icon04-1.png" alt=""></a></li>
		      </div>
		      <!-- // cscenter -->
		    </div>
		    <!-- // navi -->

			<!-- contents -->
	    	<div class="contents">
	      		<!-- top menu -->
	      		<div id="dvTopmeu" class="t_util">
			      <ul>
			        
			        	<li class="mem"><i class="fa fa-user mr5" style="font-size:14px; color:#21286d;"></i><span class="maincolor fbold">님</span> 환영합니다.</li>
			        	<li><a href="https://eshop.parkland.co.kr:444/nhome/member/member_logout.asp">로그아웃</a></li>
			        	<li><a href="https://eshop.parkland.co.kr:444/nhome/user/modifyuserinfo.asp">내정보수정</a></li>
			        
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp">MY 파크랜드</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp">장바구니(<span class="fbold maincolor" id="gTopCartCount">1</span>)</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/faq.asp">고객센터</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
					<!--li><a href="http://www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2006335008030200590&pageUnit=10&searchCnd=wrkr_no&searchKrwd=6218105081&pageIndex=1">사업자정보확인</a-->
					<li>service@parkland.co.kr</li>
			        <li class="sns">
			        	<a href="https://www.facebook.com/SuitHolic" target="_blank"><img src="./파크랜드 공식쇼핑몰_cart_files/t_fbook.png" alt="페이스북"></a>
			        	<a href="http://blog.naver.com/parklanding" target="_blank"><img src="./파크랜드 공식쇼핑몰_cart_files/t_blog.png" alt="블로그"></a>
			        	<a href="https://www.instagram.com/parklandholic" target="_blank"><img src="./파크랜드 공식쇼핑몰_cart_files/t_insta.png" alt="블로그"></a>
			        	<!--<a href="http://parklanding.tistory.com/" target="_blank"><img src="/nhome/img/t_tistory.png" alt="티스토리" /></a>
			        	<a href="javascript:addFavorite();"><img src="/nhome/img/t_bookmark.png" alt="facebook" /></a>-->
			        </li>
			      </ul>
	      		</div>
	      		<!-- // top menu -->

	      		<!--  content_area -->
	      		<div class="content_area">

	
			<div class="s_location"><a href="https://eshop.parkland.co.kr:444/"><img src="./파크랜드 공식쇼핑몰_cart_files/icon_home.png" border="0"></a><img src="./파크랜드 공식쇼핑몰_cart_files/icon_larr.png" border="0">SHOPPING BAG</div>
	      	<div class="cline"></div>
	      	<div class="c_title"><p>SHOPPING BAG</p></div>
	      	<div class="stepimg">
	        	<li><img src="./파크랜드 공식쇼핑몰_cart_files/step01_on.gif"></li>
	        	<li><img src="./파크랜드 공식쇼핑몰_cart_files/step02_off.gif"></li>
	        	<li><img src="./파크랜드 공식쇼핑몰_cart_files/step03_off.gif"></li>
	        	<li><img src="./파크랜드 공식쇼핑몰_cart_files/step04_off.gif"></li>
	      	</div>

<!--// pc : mobile s //-->

<script language="javascript">
var currentOS;
var mobile = (/iphone|ipad|ipod|android/i.test(navigator.userAgent.toLowerCase()));
if (mobile) {
	var userAgent = navigator.userAgent.toLowerCase();
	if (userAgent.search("android") > -1)
		currentOS = "android";
	else if ((userAgent.search("iphone") > -1) || (userAgent.search("ipod") > -1)
				|| (userAgent.search("ipad") > -1))
		currentOS = "ios";
	else
		currentOS = "else";

	document.location.href = "/mshop/cart.asp";
} else {
//	document.location.href = "/nhome/cart/cart.asp";
}
</script>
<!--// pc : mobile e //-->
		                        <!-- 20150428 -->
								<form name="cartform">
                                <table class="tb_type2">
                                    <thead>
                                        <tr class="cus_notice_list">
                                            <th>상품번호</th>
                                            <th>상품명</th>
                                            <th>색상</th>
                                            <th>사이즈</th>
                                            <th>수량</th>
                                            <th>상품가격</th>
                                            <th>적립예정포인트</th>
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
<!-- AceCounter eCommerce (Cart_Inout) v7.5 Start -->
<!-- Function and Variables Definition Block Start -->
<script language="javascript">
var _JV="AMZ2017020801";//script Version
var _UD='undefined';var _UN='unknown';
var _ace_countvar = 0;
function _IDV(a){return (typeof a!=_UD)?1:0}
var _CRL='http://'+'gtc6.acecounter.com:8080/';
var _GCD='AS4A41784471665';
if( document.URL.substring(0,8) == 'https://' ){ _CRL = 'https://gtc6.acecounter.com/logecgather/' ;};
if(!_IDV(_A_i)) var _A_i = new Image() ;if(!_IDV(_A_i0)) var _A_i0 = new Image() ;if(!_IDV(_A_i1)) var _A_i1 = new Image() ;if(!_IDV(_A_i2)) var _A_i2 = new Image() ;if(!_IDV(_A_i3)) var _A_i3 = new Image() ;if(!_IDV(_A_i4)) var _A_i4 = new Image() ;
function _RP(s,m){if(typeof s=='string'){if(m==1){return s.replace(/[#&^@,]/g,'');}else{return s.replace(/[#&^@]/g,'');} }else{return s;} };
function _RPS(a,b,c){var d=a.indexOf(b),e=b.length>0?c.length:1; while(a&&d>=0){a=a.substring(0,d)+c+a.substring(d+b.length);d=a.indexOf(b,d+e);}return a};
function AEC_F_D(pd,md,cnum){var i=0,amt=0,num=0;var cat='',nm='';num=cnum;md=md.toLowerCase();if(md=='b'||md=='i'||md=='o'){for(i=0;i<_A_pl.length;i++){if(_A_pl[i]==pd){nm=_RP(_A_pn[i]);amt=(parseInt(_RP(_A_amt[i],1))/parseInt(_RP(_A_nl[i],1)))*num;cat=_RP(_A_ct[i]);var _A_cart=_CRL+'?cuid='+_GCD;_A_cart+='&md='+md+'&ll='+_RPS(escape(cat+'@'+nm+'@'+amt+'@'+num+'^&'),'+','%2B');break;};};if(_A_cart.length>0)_A_i.src=_A_cart+"rn="+String(new Date().getTime());setTimeout("",2000);};};
function AEC_D_A(){ var i = 0,_AEC_str= ''; var ind = 0; for( i = 0 ; i < _A_pl.length ; i ++ ){ _AEC_str += _RP(_A_ct[i])+'@'+_RP(_A_pn[i])+'@'+_RP(_A_amt[i],1)+'@'+_RP(_A_nl[i],1)+'^'; if(  escape(_AEC_str).length > 800 ){ if(ind > 4) ind = 0; _AEC_str = _RPS(escape(_AEC_str),'+','%2B')+'&cmd=on' ; AEC_S_F(_AEC_str , 'o', ind) ; _AEC_str = '' ; ind++; }; }; if( _AEC_str.length > 0 ){ if(ind+1 > 4) ind = 0; AEC_S_F(_RPS(escape(_AEC_str),'+','%2B'), 'o', ind+1) ; }; };
function AEC_B_A(){var i=0,_AEC_str='',_A_cart='';var ind = 0;_A_cart = _CRL+'?cuid='+_GCD+'&md=b';for( i = 0 ; i < _A_pl.length ; i ++ ){ _AEC_str += ACE_REPL(_A_ct[i])+'@'+ACE_REPL(_A_pn[i])+'@'+ACE_REPL(_A_amt[i],1)+'@'+ACE_REPL(_A_nl[i],1)+'^';if(escape(_AEC_str).length > 800 ){if(ind > 4) ind = 0;_AEC_str = _RPS(escape(_AEC_str),'+','%2B')+'&cmd=on';AEC_S_F(_AEC_str,'b',ind); _AEC_str = '' ;ind++;};}; if( _AEC_str.length > 0 ){if(ind+1 > 4) ind = 0; AEC_S_F(_RPS(escape(_AEC_str),'+','%2B'),'b',ind+1);};};
function AEC_U_V(pd,bnum){ var d_cnt = 0 ; var A_amt = 0 ; var A_md = 'n' ;var _AEC_str = '' ; for( j = 0 ; j < _A_pl.length; j ++ ){ if( _A_pl[j] == pd ){ d_cnt = 0; if( _A_nl[j] != bnum ){ d_cnt = bnum - parseInt(_RP(_A_nl[j],1)) ; A_amt = Math.round( parseInt(_RP(_A_amt[j],1)) / parseInt(_RP(_A_nl[j],1))); if( d_cnt > 0 ){ A_md = 'i' ; }else{ A_md = 'o' ;};_A_amt[j] = A_amt*Math.abs(d_cnt) ; _A_nl[j] = Math.abs(d_cnt);_AEC_str += _RP(_A_ct[j])+'@'+_RP(_A_pn[j])+'@'+_RP(_A_amt[j],1)+'@'+_RP(_A_nl[j],1)+'^';};};};if( _AEC_str.length > 0 ){ AEC_S_F(_RPS(escape(_AEC_str),'+','%2B') ,A_md, 0);};};
function AEC_S_F(str,md,idx){var i=0,_A_cart='';var k=eval('_A_i'+idx);if(md=='I')md='i';if(md=='O')md='o';if(md=='B')md='b';if(md=='b'||md=='i'||md=='o'){_A_cart=_CRL+'?cuid='+_GCD;_A_cart+='&md='+md+'&ll='+(str)+'&';k.src=_A_cart+"rn="+String(new Date().getTime());window.setTimeout('',2000);};};
if(!_IDV(_A_pl)) var _A_pl = Array(1) ;
if(!_IDV(_A_nl)) var _A_nl = Array(1) ;
if(!_IDV(_A_ct)) var _A_ct = Array(1) ;
if(!_IDV(_A_pn)) var _A_pn = Array(1) ;
if(!_IDV(_A_amt)) var _A_amt = Array(1) ;

var items = new Array(); // Google Analytics 190830
</script>
<!-- Function and Variables Definition Block End-->
	
	             <tbody><tr>
	                <!--<td><input type="checkbox" /></td>-->
	                <td>

	                	<a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?cat_sn=1219&amp;gdNum=30597&amp;gdCode=PPC22185">PPC22185</a>


					</td>

	                <td style="text-align: left">

					<a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?cat_sn=1219&amp;gdNum=30597&amp;gdCode=PPC22185"><img name="bigimg" src="./파크랜드 공식쇼핑몰_cart_files/PPC22185_1_C.jpg" onerror="javascript:fnLoadImgError(this, 3);" width="70" height="70" border="0">네이비 폴리 셋업 팬츠</a>

					</td>
	                <td>NAVY</td>
	                <td>82</td>
	                <td class="num_add">


<!--
<a href="javascript:downcnts('1016465','1','')" onmousedown="javascript:AEC_F_D('PPC22185','o',1);"><img src="/img/minus.png" alt="" /></a>
<input type="text" size="5" style="height:22px;" name="mycnt" value="1" class="ssnum" readonly>
<a href="javascript:upcnts( '1016465','1','')" onmousedown="javascript:AEC_F_D('PPC22185','i',1);"><img src="/img/plus.png" alt="" /></a>
 -->
<!-- ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' -->


<a href="javascript:downcnts(&#39;1016465&#39;,&#39;1&#39;,&#39;&#39;)" onmousedown="javascript:AEC_F_D(&#39;PPC22185&#39;,&#39;o&#39;,1);"><img src="./파크랜드 공식쇼핑몰_cart_files/minus.png" alt=""></a>
<input type="text" size="5" style="height:22px;" name="mycnt" value="1" class="ssnum" readonly="">
<a href="javascript:upcnts( &#39;1016465&#39;,&#39;1&#39;,&#39;&#39;)" onmousedown="javascript:AEC_F_D(&#39;PPC22185&#39;,&#39;i&#39;,1);"><img src="./파크랜드 공식쇼핑몰_cart_files/plus.png" alt=""></a>


					</td>
	                <td>
					<b>104,300원</b>

					
					<input type="hidden" size="5" style="height:22px;" name="sumtt0" id="sumtt0" value="bb">
					
					</td>
	                <td><b>3,129원</b></td>
	                <td>

					<a href="javascript:cart_delete(&#39;1016465&#39;,&#39;30597&#39;,&#39;&#39;)" class="btn_del">삭제</a>

					</td>
	            </tr>

	            <!-- AceCounter eCommerce (Product_Detail) v7.5 Start -->
				<!-- Data Allocation (Product_Detail) -->
				<script language="javascript">
					_A_amt[_ace_countvar]='104300';
					_A_nl[_ace_countvar]='1';
					_A_pl[_ace_countvar]='PPC22185';
					_A_pn[_ace_countvar]='네이비 폴리 셋업 팬츠';
					_A_ct[_ace_countvar]='파크랜드 > 일반바지';
					_ace_countvar++;
				</script>
				<!-- AceCounter eCommerce (Cart_InOut) v7.5 Start -->

				<!-- Global site tag (gtag.js) - Google Analytics ipcom 190828 INPUT START -->
				<script type="text/javascript">
					var str = {
							id:"PPC22185",
							name:"네이비 폴리 셋업 팬츠",
							list_name:"Detail",
							brand:"파크랜드",
							category:"일반바지",
							variant:"NAVY",
							quantity:"1",
							price:"104300"
						}
					items.push(str);
				</script>
				<!-- Global site tag (gtag.js) - Google Analytics ipcom 190828 INPUT END -->

	
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="9">
                                            
                                            	총 주문금액 <span> 104,300</span>원
	                                                                             적립예정포인트 <span> 3,129</span>원
                                            
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>

								<!--
                                <div class="btn_group1">
                                    <a href="#">전체선택</a><a href="#">선택상품 삭제</a>
                                </div>
								-->

                                <div class="btn_group2">
                                	<br>
                                    <a href="https://eshop.parkland.co.kr:444/nhome"><span class="btn_base" style="background:#F7F3F7;color:#4A4D52 !important;">쇼핑계속하기</span></a><!--<a href="#"><img src="/img/btn_2.png" alt="선택상품 주문" /></a>-->
									<a href="javascript:clearCart();" onmousedown="javascript:AEC_D_A();"><span class="btn_base">장바구니 비우기</span></a>
									
										<a href="javascript:check_action(&#39;next&#39;,&#39;&#39;)"><span class="btn_base" style="background:#842000;">전체상품 주문</span></a>
									
 <div class="cart_evbanner">
<!--ul><a href="http://eshop.parkland.co.kr/nhome/shop/eventmain2.asp?src=image&kw=000137&eventId2=319"><img src="/nhome/img/womenpants_cart.jpg" alt=""></a></ul-->


<ul><a href="https://members.parkland.co.kr/my_parkland/join.asp"><img src="./파크랜드 공식쇼핑몰_cart_files/2020ss_evbanner_20200831.jpg" alt=""></a></ul>

<!--ul><a href="http://eshop.parkland.co.kr/nhome/shop/eventmain2.asp?eventId2=394"><img src="/nhome/img/outer19000_eve.jpg" alt=""></a></ul-->



 <!--ul><!--a href="http://eshop.parkland.co.kr/nhome/shop/eventmain2.asp?eventId2=357"><img src="/nhome/img/banner_200929_1000.jpg" alt=""></a></ul-->
                                     </div>



                                <!--<h2><img src="/img/h2_6.png" alt="장바구니 이용안내" /></h2>
                                <ul class="cart_notice">
                                    <li>
                                        <span>반품</span>
                                        <span>
                                            - 반품신청은 배송완료 후 파크랜드 쇼핑몰에 접속 후 [MY 파크랜드]-[반품/교환/취소접수]에서 반품 접수하시면 됩니다.<br />
                                            - 고객변심으로 인한 취소, 반품 시에는 배송비를 고객님께서 부담하셔야 하며 반품 하시면 확인 후 환불처리해 드립니다.<br />
                                            (단, 교환상품의 재배송/제품하자/불량으로 인한 반송비는 파크랜드에서 부담합니다.)<br />
                                            - 처음 배송된 상품상태와 다를 경우, 세탁/착용 후 외출하신 경우에는 반품이 불가합니다.<br />
                                            - 모니터상의 사진과 제품의 색상은 다소 차이가 있을 수 있으며, 미세한 색상의 차이는 제품이상으로 인한 반품사유가 되지 않습니다.
                                        </span>
                                    </li>
                                    <li>
                                        <span>교환</span>
                                        <span>
                                            - 교환은 주문하신 상품의 컬러와 사이즈 교환만 가능합니다.<br />
                                            - 교환신청은 배송완료 후 파크랜드 쇼핑몰에 접속 후 [MY 파크랜드]-[반품/교환/취소접수]에서 교환 접수하시면 됩니다.<br />
                                             (단, 교환상품 품절인 경우 교환접수가 안될 수 있으며 반품으로 접수하시면 됩니다.)<br />
                                            - 재배송 상품은 반송상품이 파크랜드에 도착/확인된 뒤에 새 주문건으로 등록되어 배송됩니다.
                                        </span>
                                    </li>
                                    <li>
                                        <span>취소</span>
                                        <span>
                                            - 카드결제, 입금 후 주문취소는 [MY 파크랜드]-[반품/교환/취소접수]에서 취소접수하시면 관리자 확인 후 취소접수 처리됩니다.
                                        </span>
                                    </li>
                                    <li>
                                        <span>배송안내</span>
                                        <span>
                                            - 결제후 2~5일 이내에 상품을 받아 보실 수 있습니다.<br />
                                            - 상품배송은 cj대한통운 택배사를 통하여 신속하고 안전하게 배송됩니다.<br />
                                            - 1만원 이상 구입시 택배비2,500원은 무료배송입니다. (제주도를 포함한 도서, 산간지역은 항공료 또는 도선료가 추가됩니다.)
                                        </span>
                                    </li>
                                    <li>
                                        <span>결제안내</span>
                                        <span>
                                            결제방법은 신용카드, 계좌이체, 무통장입금 등이 있습니다.<br />
                                            정상적이지 못한 결제로 인한 주문으로 판단될 때는 임의로 배송이 보류되거나,주문이 취소될 수 있습니다.
                                        </span>
                                    </li>
                                </ul>-->
								<input type="hidden" name="allrumtt" value="1">
							
	                        <!--// 20150428 -->


<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc6.acecounter.com','8080','AS4A41784471665','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript><img src='http://gtc6.acecounter.com:8080/?uid=AS4A41784471665&je=n&' border='0' width='0' height='0' alt=''></noscript>
<!-- AceCounter Log Gathering Script End -->

<!-- Global site tag (gtag.js) - Google Analytics ipcom 190830 START -->
<script type="text/javascript">
	var gtag_str = '';
	for(var i in items){with(items[i]){
		gtag_str += '{"id":"'+id+'","name":"'+name+'","list_name":"Detail","brand":"'+brand+'","category":"'+category+'","variant":"'+variant+'","quantity":"'+quantity+'","price":"'+price+'"},';
	}}

	gtag('event','add_to_cart',{
		"items":[gtag_str]
	});
</script>
<!-- Global site tag (gtag.js) - Google Analytics ipcom 190830 END -->

<!-- WIDERPLANET  SCRIPT START 2021.12.1 -->
<div id="wp_tg_cts" style="display:none;"><script id="wp_tag_script_1645707259890" src="./파크랜드 공식쇼핑몰_cart_files/wpc.php"></script></div>
<script type="text/javascript">
var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
	return {
		wp_hcuid:"kabfl3",  	/*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				 *주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
		ti:"53076",
		ty:"Cart",
		device:"web"
		,items:[

			 {i:"PPC22185",	t:"네이비 폴리 셋업 팬츠"} /* 첫번째 상품  - i:상품 식별번호  (Feed로 제공되는 식별번호와 일치 ) t:상품명 */
 
		]
	};
}));
</script>
<script type="text/javascript" async="" src="./파크랜드 공식쇼핑몰_cart_files/wp_astg_4.0.js.다운로드"></script>
<!-- // WIDERPLANET  SCRIPT END 2021.12.1 -->


				</div></form>
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
								<li class="fimg"><img src="./파크랜드 공식쇼핑몰_cart_files/inipay.png" alt=""></li>
					          	<li>
						            <p>파크랜드몰은(주)이니시스의<br>
						              구매안전 에스크로서비스를 제공합니다.</p>
			            			<p><a href="https://mark.inicis.com/mark/escrow_popup.php?no=31366&amp;st=1355291431"><img src="./파크랜드 공식쇼핑몰_cart_files/inipay_btn.png" alt=""></a></p>
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
						<div class="q_cart"><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp"><img src="./파크랜드 공식쇼핑몰_cart_files/cart.png" alt=""></a>
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
			    	<div class="righttop"><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp#"><img src="./파크랜드 공식쇼핑몰_cart_files/top.png" alt="top"></a></div>
			  	</div>
			  	<!-- // quick -->
			</div>
			<!-- //rnavi -->
	  	</div>
	  	<!-- // container -->

	</div>
	<!-- //WRAP -->



			<!-- WIDERPLANET  SCRIPT START 2021.12.1 -->
		<div id="wp_tg_cts" style="display:none;"></div>
		<script type="text/javascript">
		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push(
		(function() {
			return {
				wp_hcuid:"kabfl3",   /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
						*주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
				ti:"53076",	/*광고주 코드 */
				ty:"Home",	/*트래킹태그 타입 */
				device:"web"	/*디바이스 종류  (web 또는  mobile)*/

			};
		}));
		</script>
		<script type="text/javascript" async="" src="./파크랜드 공식쇼핑몰_cart_files/wp_astg_4.0.js.다운로드"></script>
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
		var loc = "https://eshop.parkland.co.kr:444/nhome/cart/cart.asp?";
		location.href = "https://eshop.parkland.co.kr:444/nhome/member/member_login.asp?retURL=" + encodeURIComponent(loc);
	}
	</script>

<!-- AceCounter Log Gathering Script V.8.0.AMZ2019080601 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc6.acecounter.com','8080','AS4A41784471665','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ="https://"+ Inf[0] +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<!-- AceCounter Log Gathering Script End -->


	<script type="text/javascript" src="./파크랜드 공식쇼핑몰_cart_files/wcslog.js.다운로드"></script>
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

	

<script language="javascript">
function point_info( ct_num,ct_code )
{
	window.location ="cart_action.asp?action_state=point&ct_num="+ct_num+"&gd_num="+ct_code;
}

function cart_delete( ct_num,ct_code,eyn )
{
	var msg;
	if(eyn)
		msg = '삭제 시 이벤트 적용된 품번은 모두 삭제 처리 됩니다.\n삭제 하시겠습니까 ?';
	else
		msg = "\n 상품을 삭제하시겠습니까?";

	if(!confirm(msg)) return;
	window.location ="cart_action.asp?action_state=delete&ct_num="+ct_num+"&gd_num="+ct_code+"&eyn="+eyn;
}

function clearCart()	{
	if( confirm("장바구니를 비우시겠습니까?") )	{
		window.location = "cart_action.asp?action_state=clear";
	}
}

function check_action( state, coupon_use)
{

	var f = document.cartform;

	for( var i=0; i<f.allrumtt.value; i++)
	{
		//alert($('#sumtt'+i).val())
		if($('#sumtt'+i).val() =="aa"){
			alert("잘못된 금액입니다. 이 상품은 구매하실 수 없습니다.");
			return false;
		}

	}
	if ( state == "main" )
	{
		window.location = "/main/index.asp";
	}
	else if ( state == "next" )
	{
		window.location = "order.asp?coupon_use=" + coupon_use;
	}
}

function upcnts( ctnum,ctcnt,eyn )
{
	if(eyn) return;

	var cnts  = ++ ctcnt;

	location = "cart_change.asp?ctnum="+ctnum+"&mycnt="+cnts
}

function downcnts( ctnum,ctcnt,eyn )
{
	if(eyn) return;

	var cnts  = -- ctcnt
	if (	cnts >= 1 )
	{
		location = "cart_change.asp?ctnum="+ctnum+"&mycnt="+cnts
	}
	else
	{
		location = "cart_change.asp?ctnum="+ctnum+"&mycnt=1"
	}
}

function set_delete( ct_num , ct_code , gd_style)
{
	if (confirm("본 상품은 세트 상품이므로 상의/하의 혹은 해당 전체 상품이 삭제됩니다.\n 삭제하시겠습니까?"))
	{
		window.location ="cart_action.asp?action_state=delete&ct_num="+ct_num+"&gd_num="+ct_code+"&gd_style="+gd_style;
	}
}
function set_delete_set( ct_num , ct_code , gd_style,  s_gd_num)
{
	if (confirm("본 상품은 세트 상품이므로 상의/하의 혹은 해당 전체 상품이 삭제됩니다.\n 삭제하시겠습니까?"))
	{
		window.location ="cart_action.asp?action_state=delete&ct_num="+ct_num+"&gd_num="+ct_code+"&gd_style="+gd_style+"&s_gd_num="+s_gd_num;
	}
}

function gotoOrder()	{

	var f = document.cartform;

	for( var i=0; i<f.allrumtt.value; i++)
	{
		//alert($('#sumtt'+i).val())
		if($('#sumtt'+i).val() =="aa"){
			alert("잘못된 금액입니다. 이 상품은 구매하실 수 없습니다.");
			return false;
		}

	}
	var bool = confirm("회원으로 구매하시면 많은 혜택을 받으실수 있습니다\n\n비회원으로 구매하시겠습니까?\n\취소를 누르시면 로그인으로 이동합니다.");

	if (bool){
		document.location.href = "/nhome/cart/order.asp";
	}
	else
	{
		gLogin();
	}
}

</script></div></body></html>