<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>��ũ���� ���ļ��θ�</title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=1300">
	<meta name="facebook-domain-verification" content="ljsthv428khej1ow7p3b9ffy8q67i5">
    <meta name="facebook-domain-verification" content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
	<link rel="stylesheet" type="text/css" href="./notice_files/reset.css" media="all">
	<link rel="stylesheet" type="text/css" href="./notice_files/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="./notice_files/owl.carousel.min.css">
	<!-- main slider css -->
	<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
	<!-- main slider css -->
	<script async="" src="./notice_files/analytics.js.�ٿ�ε�"></script><script src="./notice_files/AceCounter_AW.js.�ٿ�ε�"></script><script type="text/javascript" async="" src="./notice_files/analytics.js.�ٿ�ε�"></script><script type="text/javascript" async="" src="./notice_files/js"></script><script type="text/javascript" async="" src="./notice_files/analytics.js.�ٿ�ε�"></script><script src="./notice_files/462724525419327" async=""></script><script async="" src="./notice_files/fbevents.js.�ٿ�ε�"></script><script src="./notice_files/jquery-1.11.3.min.js.�ٿ�ε�"></script>
	<script type="text/javascript" src="./notice_files/owl.carousel.js.�ٿ�ε�"></script><!-- main slider js -->
	<script src="./notice_files/default.js.�ٿ�ε�" type="text/javascript" charset="euc-kr"></script>
	<script src="./notice_files/common.js.�ٿ�ε�" type="text/javascript" charset="euc-kr"></script>

	<link rel="stylesheet" type="text/css" href="./notice_files/odesign.css">
	<script src="./notice_files/global.js.�ٿ�ε�" type="text/javascript" charset="euc-kr"></script>

	<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
	<script async="" src="./notice_files/js(1)"></script>
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

	/*���� ������*/
	$(window).scroll(function() {
		var scrollHeight = $(document).height();
		var scrollPosition = $(window).height() + $(window).scrollTop();
		if($(window).scrollTop()) {
			$(".arthro_banner").css("display","none");
		} else {
			$(".arthro_banner").css("display","block");
		}
	});

	/**��ũ���� ������ ���� �̻� ���������� ��Ÿ���߰��ϱ�**/
	/*if (jQuery(window).width() > 1300) {
    jQuery(window).on("scroll",function(ev){
        if(jQuery(window).scrollTop() > 85 ) { /**���� �ȼ� ����**/
        /*jQuery('.mlogo').addClass('ktop');  /**���� ���̿��� .fixed Ŭ������ �߰��մϴ�. ��Ÿ�Ͽ��� �����Ӱ� ��ġ ���� �����մϴ�.**/
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

	/*��� �̺�Ʈ ���*/

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
		todayDate.setTime(todayDate.getTime() +	(1000 *	3600) *	24 * 1);	//1��
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
	<!-- ��� ���� -->
	<!--div id="bannerPop3" class="arthro_bannerWrap" style="background-color:#c82128;border:0;">
		<form name="pop_frm10" action="">
			<div class="arthro_banner" style="padding:0;background-color:#c82128;height:80px;">

				<!--div class="arthro_img"><a href="/nhome/customer/view.asp?idx=36&page=1"><img src="/images/2021/topbanner.jpg" alt="" /></a></div-->
				<!--
                <!--div class="btn_closeimg"><a href="#none" class="closePop"><img src="/nhome/img/btn_close_wh.png" /></a></div>
				<!--div class="banner_close">
					<label style="color:#000;">
					<input type="checkbox" name="check" id="_closePop" />
					�Ϸ絿�� ���� ����</label>
				</div>
				-->
			
		
	
	<!-- ��� ���� ��-->


  	<!-- container -->
  	<div id="container">
		<!-- navi -->
	    <div class="navi">
			<div class="mlogo"><a href="https://eshop.parkland.co.kr:444/nhome/"><img src="./notice_files/logo.png" alt="parkland"></a></div>
			<div class="search">
		        <ul>
		          <li>
		         	<form id="frmGSearch" name="frmGSearch" method="post" onsubmit="return m_fnGSearchGood_submit();" action="https://eshop.parkland.co.kr:444/nhome/shop/search_result.asp">
		            <input id="gKeyword" name="gKeyword" type="text" title="���հ˻�" class="input01" accesskey="S" onclick="m_fnEnterKey(this, fnGSearchGood);" placeholder="�˻�� �Է����ּ���">
		            <input type="image" class="input_btn" src="./notice_files/btn_search.png" alt="Search">
					<!-- �ش�ý����� ���ڵ�Ÿ���� EUC-KR�ϰ�쿡�� �߰� START-->
					<input type="hidden" id="encodingType" name="encodingType" value="EUC-KR">
					<!-- �ش�ý����� ���ڵ�Ÿ���� EUC-KR�ϰ�쿡�� �߰� END-->
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
		          <li id="menu1" class="sub-menu" class_normal="sub-menu" class_active="sub-menu active"> <a href="javascript:fnToggle(&#39;menu1&#39;);"><span>Men <img id="menu1_img" src="./notice_files/icon_plus.png" alt=""></span></a>
		            <ul>
		            
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=2&amp;gtype=2">ALL</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=12&amp;gtype=2">����/��Ʈ</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=13&amp;gtype=2">����</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=14&amp;gtype=2">����</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=15&amp;gtype=2">��Ʈ</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=16&amp;gtype=2">�巹������</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=17&amp;gtype=2">ĳ�־����/�������</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=18&amp;gtype=2">Ƽ����</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=19&amp;gtype=2">��Ʈ</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=28&amp;gtype=2">����Ʈ</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=20&amp;gtype=2">�������</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=21&amp;gtype=2">�Ϲݹ���</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=22&amp;gtype=2">�׼�����</a> </li>
		            	
		            </ul>
		          </li>
		          <li id="menu2" class="sub-menu" class_normal="sub-menu" class_active="sub-menu active"> <a href="javascript:fnToggle(&#39;menu2&#39;);"><span>WoMen <img id="menu2_img" src="./notice_files/icon_plus.png" alt=""></span></a>
		            <ul>
		              
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=1&amp;gtype=1">ALL</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=3&amp;gtype=1">����/����콺</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=4&amp;gtype=1">Ƽ����</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=5&amp;gtype=1">��Ʈ</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=29&amp;gtype=1">����Ʈ</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=6&amp;gtype=1">���ǽ�/��ĿƮ</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=7&amp;gtype=1">����</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=8&amp;gtype=1">��Ʈ</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=9&amp;gtype=1">����</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=10&amp;gtype=1">����</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=23&amp;gtype=1">�׼�����</a> </li>
		            	
		            </ul>
		          </li>
		          <li class="l_normal"> <a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp#"><span>Brands</span></a>
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
		          <li class="l_normal"> <a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp#"><span>Special</span></a>
		            <ul class="none">
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventlist.asp">��ȹ�� &amp; �̺�Ʈ</a></li>
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
                  <li><p><a href="https://members.parkland.co.kr/my_parkland/join.asp" target="_blank"><img src="./notice_files/sr_icon_1.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img src="./notice_files/sr_icon_2.png" alt=""></a></p></li>
                </ul>
                <ul>
                  <!--<li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon03.png" alt="" /></a></p></li>-->
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img src="./notice_files/sr_icon_3.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=50"><img src="./notice_files/sr_icon_4.png" alt=""></a></p></li>
                </ul>
                <!--<ul>
                  <li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon05.png" alt="" /></a></p></li>
                </ul>-->
                <ul>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img src="./notice_files/sr_icon_5.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img src="./notice_files/sr_icon_6.png" alt=""></a></p></li>
                </ul>
              </div>
<!-- // 20171011 add -->
		      <!-- cscenter -->
		      <div class="cscenter">
		        <div class="cstitle">Cs center</div>
		        <h2>1644-0582</h2>
		        <p>���� AM 10:00 ~ PM 18:00<br> ��,�Ͽ���/������ �޹�</p>
		      </div>
		      <div class="cs_icon">
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp" class="roll"><img src="./notice_files/cs_icon01.png" alt=""><img class="over" src="./notice_files/cs_icon01-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/formnew.asp" class="roll"><img src="./notice_files/cs_icon02.png" alt=""><img class="over" src="./notice_files/cs_icon02-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp" class="roll"><img src="./notice_files/cs_icon03.png" alt=""><img class="over" src="./notice_files/cs_icon03-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/myorder.asp" class="roll"><img src="./notice_files/cs_icon04.png" alt=""><img class="over" src="./notice_files/cs_icon04-1.png" alt=""></a></li>
		      </div>
		      <!-- // cscenter -->
		    </div>
		    <!-- // navi -->

			<!-- contents -->
	    	<div class="contents">
	      		<!-- top menu -->
	      		<div id="dvTopmeu" class="t_util">
			      <ul>
			        
			        	<li><a href="javascript:gLogin();">�α���</a></li>
			        	<li><a href="http://members.parkland.co.kr/my_parkland/join.asp" target="_blank">ȸ������<img src="./notice_files/icon_newwin.png" alt=""></a></li>
			        	<li><a href="https://eshop.parkland.co.kr:444/nhome/member/nomember_login.asp">��ȸ���ֹ���ȸ</a></li>
			       	
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp">MY ��ũ����</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp">��ٱ���(<span class="fbold maincolor" id="gTopCartCount">0</span>)</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/faq.asp">��������</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
					<!--li><a href="http://www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2006335008030200590&pageUnit=10&searchCnd=wrkr_no&searchKrwd=6218105081&pageIndex=1">���������Ȯ��</a-->
					<li>service@parkland.co.kr</li>
			        <li class="sns">
			        	<a href="https://www.facebook.com/SuitHolic" target="_blank"><img src="./notice_files/t_fbook.png" alt="���̽���"></a>
			        	<a href="http://blog.naver.com/parklanding" target="_blank"><img src="./notice_files/t_blog.png" alt="���α�"></a>
			        	<a href="https://www.instagram.com/parklandholic" target="_blank"><img src="./notice_files/t_insta.png" alt="���α�"></a>
			        	<!--<a href="http://parklanding.tistory.com/" target="_blank"><img src="/nhome/img/t_tistory.png" alt="Ƽ���丮" /></a>
			        	<a href="javascript:addFavorite();"><img src="/nhome/img/t_bookmark.png" alt="facebook" /></a>-->
			        </li>
			      </ul>
	      		</div>
	      		<!-- // top menu -->

	      		<!--  content_area -->
	      		<div class="content_area">

	
		<div class="s_location"><a href="https://eshop.parkland.co.kr:444/"><img src="./notice_files/icon_home.png" border="0"></a><img src="./notice_files/icon_larr.png" border="0">Customer Center<img src="./notice_files/icon_larr.png" border="0">��������</div>
		<div class="cline"></div>
		<div class="c_title"><p>��������</p></div>
		<div class="tab_type3 mb40">
			<li class="active"><a href="http://eshop.parkland.co.kr/nhome/customer/notice.asp">��������</a></li>
			<li><a href="http://eshop.parkland.co.kr/nhome/customer/faq.asp">FAQ</a></li>
			<li><a href="http://eshop.parkland.co.kr/nhome/customer/formnew.asp">1:1����</a></li>
			<li><a href="http://eshop.parkland.co.kr/nhome/mypage/mypage.asp">�ֹ������ȸ</a></li>
			<li><a href="http://eshop.parkland.co.kr/nhome/mypage/myorder.asp">��ǰ/��ȯ/�������</a></li>
			<li><a href="http://www.parkland.co.kr/store/guidance.asp" target="_blank">����˻�</a></li>
			
          		<li><a href="https://members.parkland.co.kr/my_parkland/mobile_members_join.asp" target="_blank">�ű� ����� ī�� �߱�</a></li>
          	
		</div>
	
      
		<!-- �̺κп� ���α׷� �־��ּ��� -->
		<table class="tb_type1">
	        <colgroup>
	            <col width="80">
	            <col width="*">
	            <col width="100">
	            <col width="90">
	        </colgroup>
	        <thead>
	            <tr class="cus_notice_list">
	                <th>��ȣ</th>
	                <th>����</th>
	                <th>�����</th>
	                <th>��ȸ��</th>
	            </tr>
	        </thead>
	        <tbody>
			
                <tr>
                    <td>27</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=36&amp;page=1">[���ȳ�]ź�� 33�ֳ� ���������� �̺�Ʈ</a> </p></td>
                    <td>2021-12-02</td>
                    <td>2108</td>
                </tr>
 			
                <tr>
                    <td>26</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=35&amp;page=1">[��ũ���� ���θ� ����] ���� �ȳ�</a> </p></td>
                    <td>2021-10-13</td>
                    <td>131</td>
                </tr>
 			
                <tr>
                    <td>25</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=34&amp;page=1">[���ȳ�]10�ϰ�, �ִ� 3���� �߰�����</a> </p></td>
                    <td>2021-04-09</td>
                    <td>357</td>
                </tr>
 			
                <tr>
                    <td>24</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=33&amp;page=1">[��۾ȳ�] 2020�� �߼����ް�  ������� �ȳ�</a> </p></td>
                    <td>2020-09-25</td>
                    <td>281</td>
                </tr>
 			
                <tr>
                    <td>23</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=32&amp;page=1">[���ȳ�] ��ũ���� �ڷγ� �غ� ��ǰ �̺�Ʈ</a> </p></td>
                    <td>2020-04-28</td>
                    <td>1735</td>
                </tr>
 			
                <tr>
                    <td>22</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=30&amp;page=1">** ���θ� ���� ���� �ȳ� **</a> </p></td>
                    <td>2019-10-24</td>
                    <td>559</td>
                </tr>
 			
                <tr>
                    <td>21</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=29&amp;page=1">[���ȳ�] 20���� �̻� ���� �����е鲲 �𸵹� ����!!</a> </p></td>
                    <td>2019-06-28</td>
                    <td>793</td>
                </tr>
 			
                <tr>
                    <td>20</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=28&amp;page=1">[���ȳ�] ��ũ���� 3���� ���� ���� ���� ����</a> </p></td>
                    <td>2019-05-03</td>
                    <td>715</td>
                </tr>
 			
                <tr>
                    <td>19</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=26&amp;page=1">[���ȳ�] Spring SALE 10% �߰�����</a> </p></td>
                    <td>2019-02-28</td>
                    <td>932</td>
                </tr>
 			
                <tr>
                    <td>18</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=25&amp;page=1">[���ȳ�] ��ũ���� ������ Ư�� �̺�Ʈ</a> </p></td>
                    <td>2019-01-25</td>
                    <td>820</td>
                </tr>
 			
                <tr>
                    <td>17</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=24&amp;page=1">[���ȳ�]18FW �Ż�ǰ �߰� 10% �������</a> </p></td>
                    <td>2018-12-05</td>
                    <td>651</td>
                </tr>
 			
                <tr>
                    <td>16</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=23&amp;page=1">  [���ȳ�]FW �̿���ǰ �߰��������</a> </p></td>
                    <td>2018-11-23</td>
                    <td>1914</td>
                </tr>
 			
                <tr>
                    <td>15</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=22&amp;page=1">[���ȳ�]�ܿ� �Ż�ǰ �߰��������</a> </p></td>
                    <td>2018-11-23</td>
                    <td>678</td>
                </tr>
 			
                <tr>
                    <td>14</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=21&amp;page=1">[���ȳ�] ��ũ���� ź�� 30�ֳ� ���� �佺Ƽ�� </a> </p></td>
                    <td>2018-11-07</td>
                    <td>1374</td>
                </tr>
 			
            </tbody>
        </table>
        <br>
        <div class="page" style="text-align:center;">
		�� <strong>[1]</strong> <a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp?board=&amp;page=2">2</a>&nbsp; <a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp?board=&amp;page=2">��</a>         
		</div>	
       <!--// 20150428 -->

				</div>
				<!-- // content_area -->

			  	<!-- Footer -->
			  	<div class="footer_wrap">
			    	<div class="footer_menu">
				      	<div class="fmenu">
					        <li><a href="http://company.parkland.kr/" target="_blank">ȸ��Ұ�</a></li>
					        <li><a href="https://members.parkland.co.kr/info/agreement.asp" target="_blank">�̿���</a></li>
					        <li><a href="https://members.parkland.co.kr/info/personal.asp" target="_blank">����������޹�ħ</a></li>
					        <li><a href="https://members.parkland.co.kr/info/email.asp" target="_blank">�̸��Ϲ��ܼ����ź�</a></li>
					        <!--<li><a href="/nhome/customer/faq.asp">��������</a></li>-->
					        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/faq.asp">FAQ</a></li>
					        <li><a href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
							<li>service@parkland.co.kr</li>
							<li><a href="http://www.ftc.go.kr/www/bizCommView.do?key=232&amp;apv_perm_no=2006335008030200590&amp;pageUnit=10&amp;searchCnd=wrkr_no&amp;searchKrwd=6218105081&amp;pageIndex=1">���������Ȯ��</a></li>

				      	</div>
			      		<!--div class="fselect">
			        		<div class="select_type001">
			          			<select name="select2" onChange="new_window(value,'','location=yes, directories=yes,resizable=yes,status=yes,toolbar=yes,menubar=yes, left=0, top=0, scrollbars=yes')">
						            <option value="http://eshop.parkland.co.kr">= FAMILY SITE =</option>
						            <option value="http://www.parkland.co.kr">��ũ����</option>
						            <option value="http://company.parkland.kr/">��ũ������</option>
						            <option value="http://members.parkland.co.kr/">��ũ���� �����</option>
						            <option value="http://www.jhass.co.kr/">�����Ͻ�</option>
						            <option value="http://www.vostro.kr">����Ʈ��</option>
						            <option value="http://www.prelin.co.kr/">������</option>
						            <option value="http://www.austinreed.co.kr/">����ƾ����</option>
						            <option value="http://www.parklandsports.co.kr/">PL������</option>
			          			</select>
			        		</div>
						</div-->
			    	</div>
			    	<div class="footer">
			      		<div class="f_left">
			        		<address>
							        ��ũ����������ͳݼ��θ�(��)��ũ����/��ǥ�̻�:������,�ڸ���/�λ걤���� ������ ��2�� 219-2����(��609-722)<br>
							        ����ڵ�Ϲ�ȣ:621-81-05081/����Ǹž��Ű���ȣ:2006-00590 <br>
							        CS CENTER 1644-0582 /FAX:051-527-5521
					        </address>
			       			<p>Copyright(c) 2006-2022 ��ũ���� �¶��ΰ��ļ��θ� (��)��ũ���� All Rights Reserved.</p>
			      		</div>
			      		<div class="f_right">
			        		<ul>
								<li class="fimg"><img src="./notice_files/inipay.png" alt=""></li>
					          	<li>
						            <p>��ũ�������(��)�̴Ͻý���<br>
						              ���ž��� ����ũ�μ��񽺸� �����մϴ�.</p>
			            			<p><a href="https://mark.inicis.com/mark/escrow_popup.php?no=31366&amp;st=1355291431"><img src="./notice_files/inipay_btn.png" alt=""></a></p>
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
						<div class="q_cart"><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp"><img src="./notice_files/cart.png" alt=""></a>
			       		 	<p>(<span id="gRightCartCount">0</span>)</p>
			      		</div>
			      		<div class="q_recent">Recent
			        		<p>(<span id="gRecentViewCount">0</span>)</p>
					        <!-- �ֱٵ�ϻ�ǰ ����Ʈ �Ѹ� -->
					        <div class="recent">
					          <!--<ul class="customNavigation PrevBtn">
					            <a class="btn customPrevBtn"><img src="/nhome/img/arr_l.png"  alt="����" /></a>
					          </ul>-->
					          <ul id="gListRecentView"></ul>
					          <!--<ul class="customNavigation NextBtn">
					            <a class="btn customNextBtn"><img src="/nhome/img/arr_r.png"  alt="����" /></a>
					          </ul>
					        </div>-->
					        <!-- // �ֱٵ�ϻ�ǰ ����Ʈ �Ѹ� -->
			      		</div>
			    	</div>
			    	<div class="righttop"><a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp#"><img src="./notice_files/top.png" alt="top"></a></div>
			  	</div>
			  	<!-- // quick -->
			</div>
			<!-- //rnavi -->
	  	</div>
	  	<!-- // container -->

	</div>
	<!-- //WRAP -->



			<!-- WIDERPLANET  SCRIPT START 2021.12.1 -->
		<div id="wp_tg_cts" style="display:none;"><script id="wp_tag_script_1645774839235" src="./notice_files/wpc.php"></script></div>
		<script type="text/javascript">
		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push(
		(function() {
			return {
				wp_hcuid:"",   /*�����ѹ� �� Unique ID (ex. �α���  ID, �����ѹ� �� )�� ��ȣȭ�Ͽ� ����.
						*���� : �α��� ���� ���� ����ڴ� ��� ���� �������� �ʽ��ϴ�.*/
				ti:"53076",	/*������ �ڵ� */
				ty:"Home",	/*Ʈ��ŷ�±� Ÿ�� */
				device:"web"	/*����̽� ����  (web �Ǵ�  mobile)*/

			};
		}));
		</script>
		<script type="text/javascript" async="" src="./notice_files/wp_astg_4.0.js.�ٿ�ε�"></script>
		<!-- // WIDERPLANET  SCRIPT END 2021.12.1 -->

	
	
<!--<script>
// ���� ��ư
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
            alert((navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Cmd' : 'Ctrl') + '+D Ű�� ���� ���ã�⿡ ����Ͻ� �� �ֽ��ϴ�.');
        }
	}

	function gLogin()	{
		var loc = "https://eshop.parkland.co.kr:444/nhome/customer/notice.asp?";
		location.href = "https://eshop.parkland.co.kr:444/nhome/member/member_login.asp?retURL=" + encodeURIComponent(loc);
	}
	</script>

<!-- AceCounter Log Gathering Script V.8.0.AMZ2019080601 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc6.acecounter.com','8080','AS4A41784471665','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ="https://"+ Inf[0] +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<!-- AceCounter Log Gathering Script End -->


	<script type="text/javascript" src="./notice_files/wcslog.js.�ٿ�ε�"></script>
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
	function MM_swapImgRestore() { //v3.0
	  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
	}

	function MM_preloadImages() { //v3.0
	  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
		var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
		if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
	}

	function MM_findObj(n, d) { //v4.0
	  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
		d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	  if(!x && document.getElementById) x=document.getElementById(n); return x;
	}

	function MM_swapImage() { //v3.0
	  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
	   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
	}

</script>
<script type="text/JavaScript">
	function explorer( url, width, height )
	{
		window.open( url,"browser","width="+width+",height="+height+",top=10,left=10,scrollbars=yes,status=no");
	}
</script></body></html>