<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>��ũ���� ���ļ��θ�</title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=1300">
	<meta name="facebook-domain-verification" content="ljsthv428khej1ow7p3b9ffy8q67i5">
    <meta name="facebook-domain-verification" content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
	<link rel="stylesheet" type="text/css" href="./��ũ���� ���ļ��θ�_modifyUserInfo_files/reset.css" media="all">
	<link rel="stylesheet" type="text/css" href="./��ũ���� ���ļ��θ�_modifyUserInfo_files/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="./��ũ���� ���ļ��θ�_modifyUserInfo_files/owl.carousel.min.css">
	<!-- main slider css -->
	<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
	<!-- main slider css -->
	<script async="" src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/analytics.js.�ٿ�ε�"></script><script src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/AceCounter_AW.js.�ٿ�ε�"></script><script type="text/javascript" async="" src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/analytics.js.�ٿ�ε�"></script><script type="text/javascript" async="" src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/js"></script><script type="text/javascript" async="" src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/analytics.js.�ٿ�ε�"></script><script async="" src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/fbevents.js.�ٿ�ε�"></script><script src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/jquery-1.11.3.min.js.�ٿ�ε�"></script>
	<script type="text/javascript" src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/owl.carousel.js.�ٿ�ε�"></script><!-- main slider js -->
	<script src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/default.js.�ٿ�ε�" type="text/javascript" charset="euc-kr"></script>
	<script src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/common.js.�ٿ�ε�" type="text/javascript" charset="euc-kr"></script>

	<link rel="stylesheet" type="text/css" href="./��ũ���� ���ļ��θ�_modifyUserInfo_files/odesign.css">
	<script src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/global.js.�ٿ�ε�" type="text/javascript" charset="euc-kr"></script>

	<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
	<script async="" src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/js(1)"></script>
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
<body class="body">

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
			<div class="mlogo">
				<a href="https://eshop.parkland.co.kr:444/nhome/"><img
					src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/logo.png" alt="parkland"></a>
			</div>
			<div class="search">
				<ul>
					<li>
						<form id="frmGSearch" name="frmGSearch" method="post"
							onsubmit="return m_fnGSearchGood_submit();"
							action="https://eshop.parkland.co.kr:444/nhome/shop/search_result.asp">
							<input id="gKeyword" name="gKeyword" type="text" title="���հ˻�"
								class="input01" accesskey="S"
								onclick="m_fnEnterKey(this, fnGSearchGood);"
								placeholder="�˻�� �Է����ּ���"> <input type="image"
								class="input_btn"
								src="./��ũ���� ���ļ��θ�_modifyUserInfo_files/btn_search.png"
								alt="Search">
							<!-- �ش�ý����� ���ڵ�Ÿ���� EUC-KR�ϰ�쿡�� �߰� START-->
							<input type="hidden" id="encodingType" name="encodingType"
								value="EUC-KR">
							<!-- �ش�ý����� ���ڵ�Ÿ���� EUC-KR�ϰ�쿡�� �߰� END-->
						</form>
					</li>
				</ul>
			</div>
		</div>
	</div>

</body></html>