<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>��ũ���� ���ļ��θ�</title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=1300">
	<meta name="facebook-domain-verification" content="ljsthv428khej1ow7p3b9ffy8q67i5">
    <meta name="facebook-domain-verification" content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
	<link rel="stylesheet" type="text/css" href="./��ũ���� ���ļ��θ�_order_files/reset.css" media="all">
	<link rel="stylesheet" type="text/css" href="./��ũ���� ���ļ��θ�_order_files/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="./��ũ���� ���ļ��θ�_order_files/owl.carousel.min.css">
	<!-- main slider css -->
	<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
	<!-- main slider css -->
	<script type="text/javascript" async="" src="./��ũ���� ���ļ��θ�_order_files/analytics.js.�ٿ�ε�"></script><script async="" src="./��ũ���� ���ļ��θ�_order_files/analytics.js.�ٿ�ε�"></script><script src="./��ũ���� ���ļ��θ�_order_files/AceCounter_AW.js.�ٿ�ε�"></script><script type="text/javascript" async="" src="./��ũ���� ���ļ��θ�_order_files/js"></script><script type="text/javascript" async="" src="./��ũ���� ���ļ��θ�_order_files/analytics.js.�ٿ�ε�"></script><script async="" src="./��ũ���� ���ļ��θ�_order_files/fbevents.js.�ٿ�ε�"></script><script src="./��ũ���� ���ļ��θ�_order_files/jquery-1.11.3.min.js.�ٿ�ε�"></script>
	<script type="text/javascript" src="./��ũ���� ���ļ��θ�_order_files/owl.carousel.js.�ٿ�ε�"></script><!-- main slider js -->
	<script src="./��ũ���� ���ļ��θ�_order_files/default.js.�ٿ�ε�" type="text/javascript" charset="euc-kr"></script>
	<script src="./��ũ���� ���ļ��θ�_order_files/common.js.�ٿ�ε�" type="text/javascript" charset="euc-kr"></script>

	<link rel="stylesheet" type="text/css" href="./��ũ���� ���ļ��θ�_order_files/odesign.css">
	<script src="./��ũ���� ���ļ��θ�_order_files/global.js.�ٿ�ε�" type="text/javascript" charset="euc-kr"></script>

	<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
	<script async="" src="./��ũ���� ���ļ��θ�_order_files/js(1)"></script>
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
			<div class="mlogo"><a href="https://eshop.parkland.co.kr:444/nhome/"><img src="./��ũ���� ���ļ��θ�_order_files/logo.png" alt="parkland"></a></div>
			<div class="search">
		        <ul>
		          <li>
		         	<form id="frmGSearch" name="frmGSearch" method="post" onsubmit="return m_fnGSearchGood_submit();" action="https://eshop.parkland.co.kr:444/nhome/shop/search_result.asp">
		            <input id="gKeyword" name="gKeyword" type="text" title="���հ˻�" class="input01" accesskey="S" onclick="m_fnEnterKey(this, fnGSearchGood);" placeholder="�˻�� �Է����ּ���">
		            <input type="image" class="input_btn" src="./��ũ���� ���ļ��θ�_order_files/btn_search.png" alt="Search">
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
		          <li id="menu1" class="sub-menu" class_normal="sub-menu" class_active="sub-menu active"> <a href="javascript:fnToggle(&#39;menu1&#39;);"><span>Men <img id="menu1_img" src="./��ũ���� ���ļ��θ�_order_files/icon_plus.png" alt=""></span></a>
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
		          <li id="menu2" class="sub-menu" class_normal="sub-menu" class_active="sub-menu active"> <a href="javascript:fnToggle(&#39;menu2&#39;);"><span>WoMen <img id="menu2_img" src="./��ũ���� ���ļ��θ�_order_files/icon_plus.png" alt=""></span></a>
		            <ul>
		              
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=1&amp;gtype=1">ALL</a> </li>
		            	
		            	<li><a href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=3&amp;gtype=1">����/���콺</a> </li>
		            	
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
		          <li class="l_normal"> <a href="https://eshop.parkland.co.kr:444/nhome/cart/order.asp?coupon_use=#"><span>Brands</span></a>
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
		          <li class="l_normal"> <a href="https://eshop.parkland.co.kr:444/nhome/cart/order.asp?coupon_use=#"><span>Special</span></a>
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
                  <li><p><a href="https://members.parkland.co.kr/my_parkland/join.asp" target="_blank"><img src="./��ũ���� ���ļ��θ�_order_files/sr_icon_1.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img src="./��ũ���� ���ļ��θ�_order_files/sr_icon_2.png" alt=""></a></p></li>
                </ul>
                <ul>
                  <!--<li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon03.png" alt="" /></a></p></li>-->
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img src="./��ũ���� ���ļ��θ�_order_files/sr_icon_3.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=50"><img src="./��ũ���� ���ļ��θ�_order_files/sr_icon_4.png" alt=""></a></p></li>
                </ul>
                <!--<ul>
                  <li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon05.png" alt="" /></a></p></li>
                </ul>-->
                <ul>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img src="./��ũ���� ���ļ��θ�_order_files/sr_icon_5.png" alt=""></a></p></li>
                  <li><p><a href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img src="./��ũ���� ���ļ��θ�_order_files/sr_icon_6.png" alt=""></a></p></li>
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
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp" class="roll"><img src="./��ũ���� ���ļ��θ�_order_files/cs_icon01.png" alt=""><img class="over" src="./��ũ���� ���ļ��θ�_order_files/cs_icon01-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/formnew.asp" class="roll"><img src="./��ũ���� ���ļ��θ�_order_files/cs_icon02.png" alt=""><img class="over" src="./��ũ���� ���ļ��θ�_order_files/cs_icon02-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp" class="roll"><img src="./��ũ���� ���ļ��θ�_order_files/cs_icon03.png" alt=""><img class="over" src="./��ũ���� ���ļ��θ�_order_files/cs_icon03-1.png" alt=""></a></li>
		        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/myorder.asp" class="roll"><img src="./��ũ���� ���ļ��θ�_order_files/cs_icon04.png" alt=""><img class="over" src="./��ũ���� ���ļ��θ�_order_files/cs_icon04-1.png" alt=""></a></li>
		      </div>
		      <!-- // cscenter -->
		    </div>
		    <!-- // navi -->

			<!-- contents -->
	    	<div class="contents">
	      		<!-- top menu -->
	      		<div id="dvTopmeu" class="t_util">
			      <ul>
			        
			        	<li class="mem"><i class="fa fa-user mr5" style="font-size:14px; color:#21286d;"></i><span class="maincolor fbold">��</span> ȯ���մϴ�.</li>
			        	<li><a href="https://eshop.parkland.co.kr:444/nhome/member/member_logout.asp">�α׾ƿ�</a></li>
			        	<li><a href="https://eshop.parkland.co.kr:444/nhome/user/modifyuserinfo.asp">����������</a></li>
			        
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp">MY ��ũ����</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp">��ٱ���(<span class="fbold maincolor" id="gTopCartCount">1</span>)</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/faq.asp">������</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
					<!--li><a href="http://www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2006335008030200590&pageUnit=10&searchCnd=wrkr_no&searchKrwd=6218105081&pageIndex=1">���������Ȯ��</a-->
					<li>service@parkland.co.kr</li>
			        <li class="sns">
			        	<a href="https://www.facebook.com/SuitHolic" target="_blank"><img src="./��ũ���� ���ļ��θ�_order_files/t_fbook.png" alt="���̽���"></a>
			        	<a href="http://blog.naver.com/parklanding" target="_blank"><img src="./��ũ���� ���ļ��θ�_order_files/t_blog.png" alt="��α�"></a>
			        	<a href="https://www.instagram.com/parklandholic" target="_blank"><img src="./��ũ���� ���ļ��θ�_order_files/t_insta.png" alt="��α�"></a>
			        	<!--<a href="http://parklanding.tistory.com/" target="_blank"><img src="/nhome/img/t_tistory.png" alt="Ƽ���丮" /></a>
			        	<a href="javascript:addFavorite();"><img src="/nhome/img/t_bookmark.png" alt="facebook" /></a>-->
			        </li>
			      </ul>
	      		</div>
	      		<!-- // top menu -->

	      		<!--  content_area -->
	      		<div class="content_area">

	

<style type="text/css">

.c-tit01 {padding-left:0px; margin-top:15px; margin-bottom:15px; font-size:13px; font-weight:bold;}
.c-tit02 {padding-left:0px; margin-top:25px; margin-bottom:15px; font-size:16px; font-weight:bold;}

.info-box {background:#f9f9f9; border: 1px solid #c9cacb; text-align:center; padding:15px; line-height:1.2;}


.mg10t {margin-top:10px}

.mg10r {margin-right:10px}

</style>

<form name="buyForm" method="post" action="https://eshop.parkland.co.kr:444/nhome/cart/orderconfirm.asp">
                  		<input type="hidden" name="coupon_use" value="">

			<div class="s_location"><a href="https://eshop.parkland.co.kr:444/"><img src="./��ũ���� ���ļ��θ�_order_files/icon_home.png" border="0"></a><img src="./��ũ���� ���ļ��θ�_order_files/icon_larr.png" border="0">Order</div>
	      	<div class="cline"></div>
	      	<div class="c_title"><p>���������Է�</p></div>
	      	<div class="stepimg">
	        	<li><img src="./��ũ���� ���ļ��θ�_order_files/step01_off.gif"></li>
	        	<li><img src="./��ũ���� ���ļ��θ�_order_files/step02_on.gif"></li>
	        	<li><img src="./��ũ���� ���ļ��θ�_order_files/step03_off.gif"></li>
	        	<li><img src="./��ũ���� ���ļ��θ�_order_files/step04_off.gif"></li>
	      	</div>


                                <table class="tb_type2">
                                    <colgroup>

                                        <col width="*">
                                        <col width="80">
                                        <col width="80">
										<col width="95">
                                        <col width="116">
                                        <col width="82">
                                        <col width="130">
                                    </colgroup>
                                    <thead>
                                        <tr class="cus_notice_list">
                                            <th>��ǰ��</th>
                                            <th>����</th>
                                            <th>������</th>
											<th>��ǰ����</th>
                                            <th>����</th>
                                            <th>�հ�</th>
                                            <th>������������Ʈ</th>
                                            <!--<th>����</th>-->
                                        </tr>
                                    </thead>
                                    <tbody id="og_glist">
                                    
										<tr>
                                            <!--<td><input type="checkbox" /></td>-->

                                            <td style="text-align: left"><!--<a href="#" target="_blank"><img src="/img/thumb_img4.jpg" alt="" />���̺� ��ȥ�� ��� �������� ���� Ƽ����</a>-->

												<a href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?cat_sn=1219&amp;gdNum=30597&amp;gdCode=PPC22185"><img name="bigimg" src="./��ũ���� ���ļ��θ�_order_files/PPC22185_1_C.jpg" onerror="javascript:fnLoadImgError(this, 3);" width="70" height="70" border="0">���̺� ���� �¾� ����
												</a>


											</td>
                                            <td>NAVY</td>
                                            <td>82</td>
											 <td>

												104,300��
												

											 </td>

                                            <td class="num_add">1��</td>
                                            <td>
											<b>104,300��</b>


											
													<input type="hidden" size="5" style="height:22px;" name="sumtt0" id="sumtt0" value="bb">
											
											</td>
											<td>3,129��</td>
	                                        <!--<td>
												
		                  						 	<a href="javascript:cart_delete('1016465','30597')" class="btn_del">����</a>
												
											</td>-->
                                    	</tr>
									

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="9" class="step2_price">

                                                <b>�� �����ݾ� (��ǰ�Ѿ� <strong><span id="og_totalsale">104,300</span>��</strong>
                                                	+ ��ۺ� <strong><span id="og_deliverysum">0</span>��</strong>)</b>
                                                <span>�հ�:<span id="og_totalamount">104,300</span></span>��
                                            	������������Ʈ <span id="og_totalpoint"> 3,129</span>��
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>






                                <br><br>
                                <h3 class="h3_title"><img src="./��ũ���� ���ļ��θ�_order_files/h3_1.jpg" alt="�ֹ��� ����"></h3>
                                <table class="tb_type3">
                                    <colgroup>
                                        <col width="128">
                                        <col width="*">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th style="vertical-align:middle;">������ <font style="color:#ff0000;">*</font></th>
                                            <td><input type="text" name="sm_name" maxlength="10" value="" class="w111"></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">��ȭ</th>
                                            <td><input type="text" name="sm_phone1" maxlength="3" value="" class="w62"><span>-</span><input type="text" maxlength="4" name="sm_phone2" value="" class="w62"><span>-</span><input type="text" name="sm_phone3" maxlength="4" value="" class="w62"></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">�޴��� <font style="color:#ff0000;">*</font></th>
                                            <td><input type="text" name="sm_hphone1" maxlength="4" value="" class="w62"><span>-</span><input type="text" maxlength="4" name="sm_hphone2" value="" class="w62"><span>-</span><input type="text" name="sm_hphone3" maxlength="4" value="" class="w62"></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">e-mail <font style="color:#ff0000;">*</font></th>
                                            <td><input type="text" name="sm_email" value="@" maxlength="50" class="w238"></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">�ּ�</th>
                                            <td>
                                                <p><input type="text" name="sm_zip" value="" maxlength="7" class="w62">
                                                <a href="javascript:findzipcode(&#39;/nhome&#39;, &#39;setSmAddr&#39;);" class="btn_zipcode">�����ȣ ��ȸ</a></p>
                                                <p><input type="text" name="sm_addr" value="" class="w483"><br><br><input type="text" name="sm_subaddr" value="" class="w483"></p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3 class="h3_title">
                                    <img src="./��ũ���� ���ļ��θ�_order_files/h3_2.jpg" alt="�����ôº� ����">&nbsp;&nbsp;
                                   <input type="checkbox" name="same" onclick="issame();" id="chk1"><label for="chk1">�����ôº��� ������ �ֹ��������� ������ üũ�ϼ���.</label>
                                </h3>
                                <table class="tb_type3">
                                    <colgroup>
                                        <col width="128">
                                        <col width="*">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th style="vertical-align:middle;">������ <font style="color:#ff0000;">*</font></th>
                                            <td><input type="text" maxlength="10" name="sd_name" class="w111"></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">��ȭ</th>
                                            <td><input type="text" maxlength="3" class="w62" name="sd_phone1"><span>-</span><input type="text" maxlength="4" class="w62" name="sd_phone2"><span>-</span><input type="text" maxlength="4" class="w62" name="sd_phone3"></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">�޴��� <font style="color:#ff0000;">*</font></th>
                                            <td><input type="text" class="w62" maxlength="4" name="sd_hphone1"><span>-</span><input type="text" class="w62" maxlength="4" name="sd_hphone2"><span>-</span><input type="text" maxlength="4" class="w62" name="sd_hphone3"></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">e-mail</th>
                                            <td><input type="text" name="sd_email" maxlength="50" class="w238"></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">�ּ� <font style="color:#ff0000;">*</font></th>
                                            <td>
                                                <p><input type="text" name="sd_zip" maxlength="7" class="w62">
                                                <a href="javascript:findzipcode(&#39;/nhome&#39;, &#39;setSdAddr&#39;);" class="btn_zipcode">�����ȣ ��ȸ</a></p>
                                                <p><input type="text" name="sd_addr" class="w483"><br><br><input type="text" name="sd_subaddr" class="w483"></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">��۽����ǻ���</th>
                                            <td>
                                                <input type="text" name="sm_memo" class="w483">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h3 class="h3_title"><img src="./��ũ���� ���ļ��θ�_order_files/h3_3.jpg" alt="������� ����"></h3>
                                <table class="tb_type3">
                                    <colgroup>
                                        <col width="128">
                                        <col width="*">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th style="vertical-align:middle;">�� �ֹ��ݾ�</th>
                                            <td><b><span id="og_totalsale2">104,300</span>��<input type="hidden" name="sm_tmoney" value="104300"></b></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">��������</th>
                                            <td><b><span id="og_totaldiscount">0</span>��</b></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">��۷�</th>
                                            <td><b><span id="og_deliverysum2">0</span>��</b></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">����Ʈ���</th>
                                            <td>
                                            	<div style="display:inline-block;float:left;"><input type="text" size="10" id="nUsePLPoint" name="nUsePLPoint" onchange="fnChangeUsePoint();" value="0" style="text-align:right;padding-right:3px;">��</div>
												<div style="display:inline-block;float:left;margin-top:3px;padding-left:10px;">
													
																									<b>��������Ʈ : </b>10,000<b>��(����Ʈ�� 5,000���̻����  100�� ������ ��밡���մϴ�.)</b> <br>
													
													</div>

												<div style="clear:both;float:none;display:flex;">
												<span id="usePointErr" style="color:#ff0000;">
												</span></div>
                                            </td>
                                        </tr>
                                        <!--tr>
                                            <th style="vertical-align:middle;">�������� ��ȣ</th>
                                            <td>
                                            	<input type="text" size="10" id="sPcNum" name="sPcNum"/>
												<input type="button" id="btnCheckCP" value="���� (��뿩�� Ȯ��)" class="btn_zipcode" style="width:150px;" onclick="javascript:fnCheckCoupon();" />
												<input type="hidden" id="bCheckCP" value="0" />
                                            </td>
                                        </tr-->
                                        <tr>
                                            <th style="vertical-align:middle;">���� �����ݾ�</th>
                                            <td><span style="font-weight:bold;font-color:#ff0000;" id="totalAmount">104,300��</span></td>
                                        </tr>
                                        <tr>
                                            <th style="vertical-align:middle;">��������</th>
                                            <td>

                                               <input name="sm_payway" id="radio1" type="radio" value="C" checked=""><label for="radio1"><b>ī�����</b>(<img src="./��ũ���� ���ļ��θ�_order_files/n_pay.png" border="0" height="30" style="vertical-align:middle;">, &nbsp;<img src="./��ũ���� ���ļ��θ�_order_files/k_pay.png" border="0" height="30" style="vertical-align:middle;">)</label>
                                               <input name="sm_payway" id="radio2" type="radio" value="D"><label for="radio2"><b>������ü</b></label>
                                               <input name="sm_payway" id="radio3" type="radio" value="B"><label for="radio3"><b>�������Ա�</b></label>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>


								<div class="info-box">
									<p class="b"><b>�ֹ��� ��ǰ�� ��ǰ��, ��ǰ����, ��������� Ȯ���Ͽ�����, ���ſ� �����Ͻðڽ��ϱ�? (���ڻ�ŷ��� ��8�� ��2��)</b></p>
									<p class="mg10t"><input name="agreed" type="checkbox" id="agreed" value="1"> <label for="agree" class="mg10r">�����մϴ�</label></p>
								</div>
                                <div class="btn_group3">
                                    <a href="javascript:check_input();"><img src="./��ũ���� ���ļ��θ�_order_files/btn_4.png" alt="�����ϱ�"></a><a href="javascript:history.back();"><img src="./��ũ���� ���ļ��θ�_order_files/btn_5.png" alt="����ϱ�"></a>
                                </div>
								<input type="hidden" name="allrumtt" value="1">
						</form>

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
					        <!--<li><a href="/nhome/customer/faq.asp">������</a></li>-->
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
							        ��ũ����������ͳݼ��θ�(��)��ũ����/��ǥ�̻�:������,�ڸ��/�λ걤���� ������ ��2�� 219-2����(��609-722)<br>
							        ����ڵ�Ϲ�ȣ:621-81-05081/����Ǹž��Ű��ȣ:2006-00590 <br>
							        CS CENTER 1644-0582 /FAX:051-527-5521
					        </address>
			       			<p>Copyright(c) 2006-2022 ��ũ���� �¶��ΰ��ļ��θ� (��)��ũ���� All Rights Reserved.</p>
			      		</div>
			      		<div class="f_right">
			        		<ul>
								<li class="fimg"><img src="./��ũ���� ���ļ��θ�_order_files/inipay.png" alt=""></li>
					          	<li>
						            <p>��ũ�������(��)�̴Ͻý���<br>
						              ���ž��� ����ũ�μ��񽺸� �����մϴ�.</p>
			            			<p><a href="https://mark.inicis.com/mark/escrow_popup.php?no=31366&amp;st=1355291431"><img src="./��ũ���� ���ļ��θ�_order_files/inipay_btn.png" alt=""></a></p>
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
						<div class="q_cart"><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp"><img src="./��ũ���� ���ļ��θ�_order_files/cart.png" alt=""></a>
			       		 	<p>(<span id="gRightCartCount">1</span>)</p>
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
			    	<div class="righttop"><a href="https://eshop.parkland.co.kr:444/nhome/cart/order.asp?coupon_use=#"><img src="./��ũ���� ���ļ��θ�_order_files/top.png" alt="top"></a></div>
			  	</div>
			  	<!-- // quick -->
			</div>
			<!-- //rnavi -->
	  	</div>
	  	<!-- // container -->

	</div>
	<!-- //WRAP -->



			<!-- WIDERPLANET  SCRIPT START 2021.12.1 -->
		<div id="wp_tg_cts" style="display:none;"><script id="wp_tag_script_1645707355575" src="./��ũ���� ���ļ��θ�_order_files/wpc.php"></script></div>
		<script type="text/javascript">
		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push(
		(function() {
			return {
				wp_hcuid:"kabfl3",   /*���ѹ� �� Unique ID (ex. �α���  ID, ���ѹ� �� )�� ��ȣȭ�Ͽ� ����.
						*���� : �α��� ���� ���� ����ڴ� ��� ���� �������� �ʽ��ϴ�.*/
				ti:"53076",	/*������ �ڵ� */
				ty:"Home",	/*Ʈ��ŷ�±� Ÿ�� */
				device:"web"	/*����̽� ����  (web �Ǵ�  mobile)*/

			};
		}));
		</script>
		<script type="text/javascript" async="" src="./��ũ���� ���ļ��θ�_order_files/wp_astg_4.0.js.�ٿ�ε�"></script>
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
		var loc = "https://eshop.parkland.co.kr:444/nhome/cart/order.asp?coupon_use=";
		location.href = "https://eshop.parkland.co.kr:444/nhome/member/member_login.asp?retURL=" + encodeURIComponent(loc);
	}
	</script>

<!-- AceCounter Log Gathering Script V.8.0.AMZ2019080601 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc6.acecounter.com','8080','AS4A41784471665','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ="https://"+ Inf[0] +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<!-- AceCounter Log Gathering Script End -->


	<script type="text/javascript" src="./��ũ���� ���ļ��θ�_order_files/wcslog.js.�ٿ�ε�"></script>
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

	

	<script language="javascript" src="./��ũ���� ���ļ��θ�_order_files/global.js.�ٿ�ε�"></script>

<script language="javascript">
function cart_delete( ct_num,ct_code )
{
	if ( confirm( "\n ��ǰ�� �����Ͻðڽ��ϱ�?" ) )
	{
		window.location ="cart_action.asp?action_state=delete&ct_num="+ct_num+"&gd_num="+ct_code;
	}
}

function check_input()
{
	var f = document.buyForm;

	for( var i=0; i<f.allrumtt.value; i++)
	{
		//alert($('#sumtt'+i).val())
		if($('#sumtt'+i).val() =="aa"){
			alert("�߸��� �ݾ��Դϴ�. �� ��ǰ�� �����Ͻ� �� �����ϴ�.");
			return false;
		}

	}





	if ( isTitle( f.sm_name.value ) )
	{
		alert( "\n�ֹ��ڸ��� �Է��ϼ���. ");
		f.sm_name.focus();
		return;
	}
	/*
	if ( isTitle( f.sm_phone1.value ) )
	{
		alert( "\n ��ȭ��ȣ�� �Է��ϼ���. ");
		f.sm_phone1.focus();
		return;
	}

	if ( isTitle( f.sm_phone2.value ) )
	{
		alert( "\n ��ȭ��ȣ�� �Է��ϼ���. ");
		f.sm_phone2.focus();
		return;
	}

	if ( isTitle( f.sm_phone3.value ) )
	{
		alert( "\n ��ȭ��ȣ�� �Է��ϼ���. ");
		f.sm_phone3.focus();
		return;
	}

	if( f.sm_phone1.value.length < 2 )	{
		alert("\n������ȣ�� 2�ڸ� �̻� �Է��ϼ���.")
		f.sm_phone1.focus();
		return;
	}

	if( f.sm_phone2.value.length < 3 )	{
		alert("\n��ȭ��ȣ�� 3�ڸ� �̻� �Է��ϼ���.")
		f.sm_phone2.focus();
		return;
	}

	if( f.sm_phone3.value.length < 4 )	{
		alert("\n��ȭ��ȣ�� 4�ڸ� �̻� �Է��ϼ���.")
		f.sm_phone3.focus();
		return;
	}
	*/
	if ( isTitle( f.sm_hphone1.value ) )
	{
		alert( "\n �޴�����ȣ�� �Է��ϼ���. ");
		f.sm_hphone1.focus();
		return;
	}
	if ( isTitle( f.sm_hphone2.value ) )
	{
		alert( "\n �޴�����ȣ�� �Է��ϼ���. ");
		f.sm_hphone2.focus();
		return;
	}
	if ( isTitle( f.sm_hphone3.value ) )
	{
		alert( "\n �޴�����ȣ�� �Է��ϼ���. ");
		f.sm_hphone3.focus();
		return;
	}

	if( f.sm_hphone1.value.length < 3 )	{
		alert("\n�޴�����ȣ�� 3�ڸ� �̻� �Է��ϼ���.")
		f.sm_hphone1.focus();
		return;
	}

	if( f.sm_hphone2.value.length < 3 )	{
		alert("\n�޴�����ȣ�� 3�ڸ� �̻� �Է��ϼ���.")
		f.sm_hphone2.focus();
		return;
	}

	if( f.sm_hphone3.value.length < 4 )	{
		alert("\n�޴�����ȣ�� 4�ڸ� �̻� �Է��ϼ���.")
		f.sm_hphone3.focus();
		return;
	}

	if ( isTitle( f.sm_email.value ) )
	{
		alert( "\n �̸��� �ּҸ� �Է��ϼ���. ");
		f.sm_email.focus();
		return;
	}
	if( !CheckEmail( f.sm_email.value ) )
	{
		alert("\n �̸��� ������ �ùٸ��� �ʽ��ϴ�.");
		f.sm_email.focus();
		return;
	}
	/*if ( isTitle( f.sm_zip.value ) )
	{
		alert( "\n �����ȣ�� �Է��ϼ���. ");
		f.sm_zip.focus();
		return;
	}	*/
	/*if ( isTitle( f.sm_zip2.value ) )
	{
		alert( "\n �����ȣ�� �Է��ϼ���. ");
		f.sm_zip2.focus();
		return;
	}	*/
	/*
	if ( isTitle( f.sm_addr.value ) )
	{
		alert( "\n �ּҸ� �Է��ϼ���. ");
		f.sm_addr.focus();
		return;
	}
	if ( isTitle( f.sm_subaddr.value ) )
	{
		alert( "\n ������ �ּҸ� �Է��ϼ���. ");
		f.sm_subaddr.focus();
		return;
	}	*/
	if ( isTitle( f.sd_name.value ) )
	{
		alert( "\n�����ôº��� ������ �Է��ϼ���. ");
		f.sd_name.focus();
		return;
	}
	/*
	if ( isTitle( f.sd_phone1.value ) )
	{
		alert( "\n ��ȭ��ȣ�� �Է��ϼ���. ");
		f.sd_phone1.focus();
		return;
	}
	if ( isTitle( f.sd_phone2.value ) )
	{
		alert( "\n ��ȭ��ȣ�� �Է��ϼ���. ");
		f.sd_phone2.focus();
		return;
	}
	if ( isTitle( f.sd_phone3.value ) )
	{
		alert( "\n ��ȭ��ȣ�� �Է��ϼ���. ");
		f.sd_phone3.focus();
		return;
	}

	if( f.sd_phone1.value.length < 2 )	{
		alert("\n������ȣ�� 2�ڸ� �̻� �Է��ϼ���.")
		f.sd_phone1.focus();
		return;
	}

	if( f.sd_phone2.value.length < 3 )	{
		alert("\n��ȭ��ȣ�� 3�ڸ� �̻� �Է��ϼ���.")
		f.sd_phone2.focus();
		return;
	}

	if( f.sd_phone3.value.length < 4 )	{
		alert("\n��ȭ��ȣ�� 4�ڸ� �̻� �Է��ϼ���.")
		f.sd_phone3.focus();
		return;
	}	*/

	if ( isTitle( f.sd_hphone1.value ) )
	{
		alert( "\n �޴�����ȣ�� �Է��ϼ���. ");
		f.sd_hphone1.focus();
		return;
	}
	if ( isTitle( f.sd_hphone2.value ) )
	{
		alert( "\n �޴�����ȣ�� �Է��ϼ���. ");
		f.sd_hphone2.focus();
		return;
	}
	if ( isTitle( f.sd_hphone3.value ) )
	{
		alert( "\n �޴�����ȣ�� �Է��ϼ���. ");
		f.sd_hphone3.focus();
		return;
	}

	if( f.sd_hphone1.value.length < 3 )	{
		alert("\n�޴�����ȣ�� 3�ڸ� �̻� �Է��ϼ���.")
		f.sd_hphone1.focus();
		return;
	}

	if( f.sd_hphone2.value.length < 3 )	{
		alert("\n�޴�����ȣ�� 3�ڸ� �̻� �Է��ϼ���.")
		f.sd_hphone2.focus();
		return;
	}

	if( f.sd_hphone3.value.length < 4 )	{
		alert("\n�޴�����ȣ�� 4�ڸ� �̻� �Է��ϼ���.")
		f.sd_hphone3.focus();
		return;
	}
	/*
	if ( isTitle( f.sd_email.value ) )
	{
		alert( "\n �̸��� �ּҸ� �Է��ϼ���. ");
		f.sd_email.focus();
		return;
	}
	if( !CheckEmail( f.sd_email.value ) )
	{
		alert("\n �̸��� ������ �ùٸ��� �ʽ��ϴ�.");
		f.sd_email.focus();
		return false;
	}*/
	if ( isTitle( f.sd_zip.value ) )
	{
		alert( "\n �����ȣ�� �Է��ϼ���. ");
		f.sd_zip.focus();
		return;
	}
	/*if ( isTitle( f.sd_zip2.value ) )
	{
		alert( "\n �����ȣ�� �Է��ϼ���. ");
		f.sd_zip2.focus();
		return;
	}	*/
	if ( isTitle( f.sd_addr.value ) )
	{
		alert( "\n �ּҸ� �Է��ϼ���. ");
		f.sd_addr.focus();
		return;
	}
	if ( isTitle( f.sd_subaddr.value ) )
	{
		alert( "\n ������ �ּҸ� �Է��ϼ���. ");
		f.sd_subaddr.focus();
		return;
	}
	/*if ( f.sm_payway[2].checked )
	{
		if( f.sm_bankaccount.value == 0 )
		{
			alert( "�Ա� ������ �����Ͻʽÿ�." );
			f.sm_bankaccount.focus();
			return false;
		}
		if ( isTitle( f.sm_bankuser.value ) )
		{
			alert( "�Ա��� �̸��� �Է��Ͻʽÿ�." );
			f.sm_bankuser.focus();
			return false;
		}
	}*/

	if($("#sPcNum").val() != "" && $("#bCheckCP").val() == "0")	{
		alert("���� ����� üũ�� �ּ���.");
		return;
	}

	if(f.agreed.checked == false){
		alert("���ſ� �������ֽñ� �ٶ��ϴ�.");
		return;
	}


	var point = $("#nUsePLPoint").val();
	if(point!="" && parseInt(point) >0 ) {
		checkPL();
	}
	else	{
		f.submit();
	}

}

function disaplyPointErr(errMsg)	{
	var totalAmount = 104300;
	$("#usePointErr").text(errMsg);
	$("#nUsePLPoint").val("0");
	$("#totalAmount").html(numberWithCommas(totalAmount) + "��");
}

function checkPL()	{
	var ret = fnCheckPoint();

	if(ret.retCode !=0)		{
		disaplyPointErr(ret.retMsg);
		return false;
	}
	
	getUserInfo("cmd=CHECKPLPOINT&plPoint=" + $("#nUsePLPoint").val() + "&totalsale=104300&ckey=&Event_Point=0", checkPL_proc, "/nhome");
	
}

function checkPL_proc(ret)	{
	eval("var adata = " + ret);
	if(parseInt(adata.retCode) != 0 )		{
		alert(adata.Message);
		return false;
	}

	var f = document.buyForm;
	f.submit();
}

function checkPL_proc2(ret)	{
	var totalAmount = 104300;
	console.log(ret);
	eval("var adata = " + ret);
	if(parseInt(adata.retCode) != 0 )		{
		disaplyPointErr(adata.retMsg);
		return;
	}

	$("#usePointErr").text("");
	totalAmount = totalAmount - parseInt($("#nUsePLPoint").val());
	$("#totalAmount").html(numberWithCommas(totalAmount) + "��");
}

function fnChangeUsePoint()	{
	var ret = fnCheckPoint();
	var totalAmount = 104300;
	if(ret.retCode !=0)		{
		disaplyPointErr(ret.retMsg);
		return;
	}

	
	testGetUserInfo("cmd=CHECKPLPOINT&plPoint=" + $("#nUsePLPoint").val() + "&totalsale=104300&ckey=&Event_Point=0", checkPL_proc2, "/nhome");
	
}

function fnCheckPoint()	{
	var retCode, retMsg;
	var nUsePLPoint;
	if($("#nUsePLPoint").val() == "")		{
		//nUsePLPoint = 0;
		retMsg = "�������Ʈ�� �Է��� �ּ���.";
		return {retCode: 1, retMsg: retMsg};
	}

	var number = /[^0-9]/; //���ڸ� ���
	 if( $("#nUsePLPoint").val().search(number) != -1 )		{
	 	retMsg = "�������Ʈ���� ���ڸ� �Է� �����մϴ�.";
		return {retCode: 1, retMsg: retMsg};
   }

	nUsePLPoint = parseInt($("#nUsePLPoint").val());

	var totalAmount = 104300;

	if(nUsePLPoint > totalAmount)	{
		retMsg = "�������Ʈ�� �� �����ݾ��� �ʰ��մϴ�.";
		return {retCode: 1, retMsg: retMsg};
	}

	if(nUsePLPoint > 0 && nUsePLPoint < 5000) 	{
		retMsg = "����Ʈ�� 5,000�� �̻���� ��밡���մϴ�.";
		return {retCode: 1, retMsg: retMsg};
	}

	if(nUsePLPoint % 100 != 0)	{
		retMsg = "5,000�� �̻���� 100�� ������ ��밡���մϴ�.";
		return {retCode: 1, retMsg: retMsg};
	}
	return {retCode: 0, retMsg: ""};
}

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function display_option( display )
{
	if ( display == "B" )
	{
		bankaccount.style.display = "none";
	}
	else
	{
		bankaccount.style.display = "none";
	}

}

function issame()
{
	var f = document.buyForm;
	if( f.same.checked == true )
	{
		f.sd_name.value = f.sm_name.value;
		f.sd_phone1.value = f.sm_phone1.value;
		f.sd_phone2.value = f.sm_phone2.value;
		f.sd_phone3.value = f.sm_phone3.value;
		f.sd_hphone1.value = f.sm_hphone1.value;
		f.sd_hphone2.value = f.sm_hphone2.value;
		f.sd_hphone3.value = f.sm_hphone3.value;
		f.sd_email.value = f.sm_email.value;
		//f.sd_zip1.value = f.sm_zip1.value;
		//f.sd_zip2.value = f.sm_zip2.value;
		f.sd_zip.value = f.sm_zip.value;
		f.sd_addr.value = f.sm_addr.value;
		f.sd_subaddr.value = f.sm_subaddr.value;
	}
	else
	{
		f.sd_name.value = "";
		f.sd_phone1.value = "";
		f.sd_phone2.value = "";
		f.sd_phone3.value = "";
		f.sd_hphone1.value = "";
		f.sd_hphone2.value = "";
		f.sd_hphone3.value = "";
		f.sd_email.value = "";
		//f.sd_zip1.value = "";
		//f.sd_zip2.value = "";
		f.sd_zip.value = "";
		f.sd_addr.value = "";
		f.sd_subaddr.value = "";
	}
}
 function openwindow(name, url, width, height, scrollbar) {
 scrollbar_str = scrollbar ? 'yes' : 'no';
 window.open(url, name, 'width='+width+',height='+height+',scrolling='+scrollbar_str);
}

function set_delete( ct_num , ct_code , gd_style)
{
	if (confirm("�� ��ǰ�� ��Ʈ ��ǰ�̹Ƿ� ���� Ȥ�� ���ǵ� �����˴ϴ�.\n �����Ͻðڽ��ϱ�?"))
	{
		window.location ="cart_action.asp?action_state=delete&ct_num="+ct_num+"&gd_num="+ct_code+"&gd_style="+gd_style;
	}
}

function set_delete_set( ct_num , ct_code , gd_style,  s_gd_num)
{
	if (confirm("�� ��ǰ�� ��Ʈ ��ǰ�̹Ƿ� ����/���� Ȥ�� �ش� ��ü ��ǰ�� �����˴ϴ�.\n �����Ͻðڽ��ϱ�?"))
	{
		window.location ="cart_action.asp?action_state=delete&ct_num="+ct_num+"&gd_num="+ct_code+"&gd_style="+gd_style+"&s_gd_num="+s_gd_num;
	}
}


function setSdAddr(zipcode, addr1, addr2)		{
	var f = document.buyForm;
	f.sd_zip.value = zipcode;
	f.sd_addr.value = addr1;
	f.sd_subaddr.value = addr2;
}


function setSmAddr(zipcode, addr1, addr2)	{
	var f = document.buyForm;
	f.sm_zip.value = zipcode;
	f.sm_addr.value = addr1;
	f.sm_subaddr.value = addr2;
}

function fnCheckCoupon()	{
	var spcnum = $("#sPcNum").val().trim();
	if(spcnum == "")	{
		alert("������ȣ�� �Է��� �ּ���.");
		return;
	}

	getCouponInfo("spcnum=" + spcnum + "&from=1", checkCP_proc, "/nhome");
}

function checkCP_proc(ret)	{
	eval("var adata = " + ret);
	if(parseInt(adata.retCode) != 0 )		{
		alert(adata.retMsg);
		$("#sPcNum").val("");
		return false;
	}

	alert("���� ������ ����Ǿ����ϴ�.");
	$("#btnCheckCP").css("display", "none");
	$("#sPcNum").attr("readonly", "readonly");
	$("#bCheckCP").val("1");

	var oData = adata.data;
	$("#og_glist").html(oData.og_glist);
	$("#og_totalsale").text(oData.og_totalsale);
	$("#og_totalsale2").text(oData.og_totalsale);
	$("#sm_tmoney").text(oData.og_totalsale);
	$("#og_deliverysum").text(oData.og_deliverysum);
	$("#og_deliverysum2").text(oData.og_deliverysum);
	$("#og_totalamount").text(oData.og_totalamount);
	$("#og_totalpoint").text(oData.og_totalpoint);
	$("#og_totaldiscount").text(oData.og_totaldiscount);
	$("#totalAmount").text(oData.og_totalamount);

}
</script>
</body></html>