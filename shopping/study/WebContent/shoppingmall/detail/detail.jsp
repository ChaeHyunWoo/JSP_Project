<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>헬로네이처</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=1300">
<meta name="facebook-domain-verification"
	content="ljsthv428khej1ow7p3b9ffy8q67i5">
<meta name="facebook-domain-verification"
	content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/detail/detail_files/reset.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/detail/detail_files/style.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/detail/detail_files/owl.carousel.min.css">
<!-- main slider css -->
<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
<!-- main slider css -->
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/detail/detail_files/ec.js.다운로드"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/detail/detail_files/analytics.js.다운로드"></script>
<script async=""
	src="<%=cp%>/shoppingmall/detail/detail_files/analytics.js.다운로드"></script>
<script
	src="<%=cp%>/shoppingmall/detail/detail_files/AceCounter_AW.js.다운로드"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/detail/detail_files/js"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/detail/detail_files/analytics.js.다운로드"></script>
<script src="<%=cp%>/shoppingmall/detail/detail_files/462724525419327"
	async=""></script>
<script async=""
	src="<%=cp%>/shoppingmall/detail/detail_files/fbevents.js.다운로드"></script>
<script
	src="<%=cp%>/shoppingmall/detail/detail_files/jquery-1.11.3.min.js.다운로드"></script>
<script type="text/javascript"
	src="<%=cp%>/shoppingmall/detail/detail_files/owl.carousel.js.다운로드"></script>
<!-- main slider js -->
<script src="<%=cp%>/shoppingmall/detail/detail_files/default.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>
<script src="<%=cp%>/shoppingmall/detail/detail_files/common.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/detail/detail_files/odesign.css">
<script src="<%=cp%>/shoppingmall/detail/detail_files/global.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
<script async="" src="<%=cp%>/shoppingmall/detail/detail_files/js(1)"></script>
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
	<img height="1" width="1"
		src="https://www.facebook.com/tr?id=462724525419327&ev=PageView&noscript=1" />
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
	<!-- container -->
	<div id="container">
		<!-- navi -->
		<div class="navi">
			<div class="mlogo">
				<a href="<%=cp%>/shop/main/main.do"><img
					src="<%=cp%>/shoppingmall/main/main_files/logo2.JPG" alt="parkland"></a>
			</div>
			<div class="search">
				<ul>
					<li>
						<form id="frmGSearch" name="frmGSearch" method="post"
							onsubmit="return m_fnGSearchGood_submit();"
							action="https://eshop.parkland.co.kr:444/nhome/shop/search_result.asp">
							<input id="gKeyword" name="gKeyword" type="text" title="통합검색"
								class="input01" accesskey="S"
								onclick="m_fnEnterKey(this, fnGSearchGood);"
								placeholder="검색어를 입력해주세요"> <input type="image"
								class="input_btn"
								src="<%=cp%>/shoppingmall/category/category_files/btn_search.png"
								alt="Search">
							<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 START-->
							<input type="hidden" id="encodingType" name="encodingType"
								value="EUC-KR">
							<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 END-->
						</form>
					</li>
				</ul>
			</div>
			<div id="leftside-navigation">
				<ul>
					<li class="l_normal"><a href="#"><span>Brands</span></a>
						<ul class="none">
							<li><a href="${listUrl}">ALL</a></li>
							<c:forEach var="dto" items="${brandLists}">
								<li><a href="${listUrl}?brandNum=${dto.brandNum}">${dto.brandName }</a></li>
							</c:forEach>
						</ul></li>
					<li class="l_normal"><a
						href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1219#"><span>Special</span></a>
						<ul class="none">
							<li><a
								href="https://eshop.parkland.co.kr:444/nhome/shop/eventlist.asp">기획전
									&amp; 이벤트</a></li>
							<li><a
								href="https://eshop.parkland.co.kr:444/nhome/shop/typemain.asp?nSort=1">NEW
									ITEMS</a></li>

							<li><a
								href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=82">BIG
									SIZE</a></li>
							<li><a
								href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId2=401">OUTLET</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="service_b">
				<ul>
					<li><p>
							<a href="https://members.parkland.co.kr/my_parkland/join.asp"
								target="_blank"><img
								src="<%=cp%>/shoppingmall/category/category_files/sr_icon_1.png"
								alt=""></a>
						</p></li>
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img
								src="<%=cp%>/shoppingmall/category/category_files/sr_icon_2.png"
								alt=""></a>
						</p></li>
				</ul>
				<ul>
					<!--<li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon03.png" alt="" /></a></p></li>-->
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img
								src="<%=cp%>/shoppingmall/category/category_files/sr_icon_3.png"
								alt=""></a>
						</p></li>
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=50"><img
								src="<%=cp%>/shoppingmall/category/category_files/sr_icon_4.png"
								alt=""></a>
						</p></li>
				</ul>
				<ul>
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img
								src="<%=cp%>/shoppingmall/category/category_files/sr_icon_5.png"
								alt=""></a>
						</p></li>
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img
								src="<%=cp%>/shoppingmall/category/category_files/sr_icon_6.png"
								alt=""></a>
						</p></li>
				</ul>
			</div>
			<div class="cscenter">
				<div class="cstitle">Cs center</div>
				<h2>1644-4339</h2>
				<p>
					평일 AM 10:00 ~ PM 18:00<br> 토,일요일/공휴일 휴무
				</p>
			</div>
			<div class="cs_icon">
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp"
					class="roll"><img
						src="<%=cp%>/shoppingmall/category/category_files/cs_icon01.png"
						alt=""><img class="over"
						src="<%=cp%>/shoppingmall/category/category_files/cs_icon01-1.png"
						alt=""></a></li>
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/customer/formnew.asp"
					class="roll"><img
						src="<%=cp%>/shoppingmall/category/category_files/cs_icon02.png"
						alt=""><img class="over"
						src="<%=cp%>/shoppingmall/category/category_files/cs_icon02-1.png"
						alt=""></a></li>
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp"
					class="roll"><img
						src="<%=cp%>/shoppingmall/category/category_files/cs_icon03.png"
						alt=""><img class="over"
						src="<%=cp%>/shoppingmall/category/category_files/cs_icon03-1.png"
						alt=""></a></li>
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/mypage/myorder.asp"
					class="roll"><img
						src="<%=cp%>/shoppingmall/category/category_files/cs_icon04.png"
						alt=""><img class="over"
						src="<%=cp%>/shoppingmall/category/category_files/cs_icon04-1.png"
						alt=""></a></li>
			</div>
			<!-- // cscenter -->
		</div>
		<!-- // navi -->
		<!-- contents -->
		<div class="contents">
			<!-- dvTopmeu -->
			<div id="dvTopmeu" class="t_util">
				<ul>
					<c:choose>
						<c:when test="${empty sessionScope.customInfo.userId }">
							<li><a href="<%=cp%>/shop/join/login.do">로그인</a></li>
						</c:when>
						<c:otherwise>
							<li>${sessionScope.customInfo.userName }님환영합니다</li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${empty sessionScope.customInfo.userId }">
							<li><a href="<%=cp%>/shop/join/join.do">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="<%=cp%>/shop/join/logout.do">로그아웃 <img
									src="<%=cp%>/shoppingmall/main/main_files/icon_newwin.png"
									alt=""></a></li>
							<li><a href="<%=cp%>/shop/join/update.do">내정보수정</a></li>
							<li><a href="<%=cp%>/shop/product/productSave.do">HELLO
									Nature</a></li>
						</c:otherwise>
					</c:choose>
					<li><a
						href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp">장바구니(<span
							class="fbold maincolor" id="gTopCartCount">0</span>)
					</a></li>
					<li><a href="<%=cp%>/shop/notice/notice.do">고객센터</a></li>
					<li><a
						href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
					<!--li><a href="http://www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2006335008030200590&pageUnit=10&searchCnd=wrkr_no&searchKrwd=6218105081&pageIndex=1">사업자정보확인</a-->
					<li>help@hellonature.co.kr</li>
					<li class="sns"><a href="https://www.facebook.com/SuitHolic"
						target="_blank"><img
							src="<%=cp%>/shoppingmall/category/category_files/t_fbook.png"
							alt="페이스북"></a> <a href="http://blog.naver.com/parklanding"
						target="_blank"><img
							src="<%=cp%>/shoppingmall/category/category_files/t_blog.png"
							alt="블로그"></a> <a
						href="https://www.instagram.com/parklandholic" target="_blank"><img
							src="<%=cp%>/shoppingmall/category/category_files/t_insta.png"
							alt="블로그"></a></li>
				</ul>
			</div>
			<!-- // dvTopmeu -->
			<!--  content_area -->
			<div class="content_area">


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

	document.location.href = "/mshop/detail.asp?gdNum=30704&gdCode=PPC22173&brandId=1219&gcId=&evgub=";
} else {
//	document.location.href = "/nhome/shop/goodinfo.asp?gdNum=30704&gdCode=PPC22173&brandId=1219&gcId=&evgub=";
}
</script>
				<!--// pc : mobile e //-->

				<link rel="stylesheet" type="text/css"
					href="<%=cp%>/shoppingmall/detail/detail_files/popModal_1019.css">
				<script type="text/javascript"
					src="<%=cp%>/shoppingmall/detail/detail_files/popModal_1019.js.다운로드"></script>
				<div class="s_location">
					<a href="<%=cp%>/shop/main/main.do"><img
						src="<%=cp%>/shoppingmall/detail/detail_files/icon_home.png"
						border="0"></a><img
						src="<%=cp%>/shoppingmall/detail/detail_files/icon_larr.png"
						border="0">헬로네이처
				</div>
				<!-- detail_wrap -->
				<div class="detail_wrap">
					<div class="detail_img">
						<div id="dvZoom"
							style="position: absolute; width: 460px; height: 627px; overflow: hidden; background-color: rgb(255, 255, 255); z-index: 100; display: none;">
							<img
								src="<%=cp%>/shoppingmall/detail/detail_files/PPC22173_1_Z.jpg"
								border="0" style="position: absolute; left: 0px; top: 0px;">
						</div>
						<!-- 이미지 롤링 -->

						<div class="detail_bimg_wrap">
							<div class="zoomWrapper" style="HEIGHT: 500px; WIDTH: 500px">

								<img id="goodImage_" src="${imagePath}/${dto.saveFileName}"
									style="cursor: url(<%=cp%>/shoppingmall/detail/detail_files/PPC22173_1_B.jpg), auto;">

							</div>
						</div>
						<!-- // 이미지 롤링 -->
					</div>

					<!-- detail_txt -->
					<form name="buyform" method="post"
						action="https://eshop.parkland.co.kr:444/nhome/cart/cart_action.asp">

						<input type="hidden" name="returnurl"
							value="/nhome/shop/goodinfo.asp%3FgdNum%3D30704%26gdCode%3DPPC22173%26brandId%3D1219%26gcId%3D%26evgub%3D">
						<input type="hidden" name="action_state" value="insert"> <input
							type="hidden" name="action_mode"> <input type="hidden"
							name="gd_num" value="30704"> <input type="hidden"
							name="gd_code" value="PPC22173"> <input type="hidden"
							name="gs_check" value=""> <input type="hidden"
							name="cooki_id" value="">
						<div id="detail_txt" class="detail_txt">
							<p>${dto.brandName }</p>
							<h2>${dto.subject }</h2>
							<!--<h3>50% + 쿠폰15% <a href="#"><i class="fa fa-question-circle-o"></i></a></h3>-->

							<h3>
								적립포인트 <b>0</b>원
								<!-- <a href="#"><i class="fa fa-question-circle-o"></i></a>-->
							</h3>
							<!--<h3>신한카드 혜택 <a href="#"><i class="fa fa-question-circle-o"></i></a></h3>-->
							<div class="mprice">
								<div class="discount">
									0% <img
										src="<%=cp%>/shoppingmall/detail/detail_files/icon_discount.png">
								</div>
								<span>상품금액</span>${dto.price }<br>
								<div class="cline mt20 mb30"></div>
								<div class="detail_content">
									<ul>
										<li class="dc_left">종류</li>
										<li class="dc_right">${dto.typeName }</li>
									</ul>
									<ul>
										<li class="dc_left30">수량</li>
										<li class="dc_right">
											<div class="prd_account clearFix">
												<input type="text" name="mycnt" value="1">
											</div>
										</li>
									</ul>
								</div>
								<div class="cline mt30"></div>
								<div class="btn_detail mt20">
									<script type="text/javascript">
									function btn_order()
									{
										var f = document.buyform;
										
									    f.action="/study/shop/order/order.do?num="+${dto.num}+"&cnt="+f.mycnt.value;
									    f.submit();
									}
									</script>
									<c:choose>
										<c:when test="${empty sessionScope.customInfo.userId }">
										</c:when>
										<c:otherwise>
											<li><a href="javascript:btn_order();"><img
													src="<%=cp%>/shoppingmall/detail/detail_files/btn_order.png"
													alt=""></a></li>
											<%-- 											<li><a href="javascript:confirm_loction();"><img
													src="<%=cp%>/shoppingmall/detail/detail_files/btn_cart.png"
													alt=""></a></li> --%>
										</c:otherwise>
									</c:choose>
								</div>
								<!-- 20180516 ADD -->

								<div class="sns_wrap">
									<li class="sns_tit"><img
										src="<%=cp%>/shoppingmall/detail/detail_files/sns_t.png"
										alt=""></li>
									<li class="naver"><a
										href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&amp;gdCode=PPC22173&amp;brandId=1219&amp;gcId=&amp;evgub=#.">Naver</a></li>
									<li class="kakaos" onclick="shareStory()"><a
										href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&amp;gdCode=PPC22173&amp;brandId=1219&amp;gcId=&amp;evgub=#.">Kakao
											Story</a></li>
									<li class="fb"><a
										href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&amp;gdCode=PPC22173&amp;brandId=1219&amp;gcId=&amp;evgub=#.">Facebook</a></li>
									<li class="tw"><a
										href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&amp;gdCode=PPC22173&amp;brandId=1219&amp;gcId=&amp;evgub=#.">Twitter</a></li>
									<li class="urllink"><a
										href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&amp;gdCode=PPC22173&amp;brandId=1219&amp;gcId=&amp;evgub=#.">Url</a></li>
								</div>

								<script
									src="<%=cp%>/shoppingmall/detail/detail_files/kakao.min.js.다운로드"></script>
								<script type="text/javascript">
Kakao.init('7a63479d2d497d7c0ee9e58d865a1736');
/*
function sendKakaoTalk()
{
	Kakao.Link.sendTalkLink({
      label: '파크랜드 공식쇼핑몰',
      image: {
        src: 'http://eshop.parkland.co.kr/nhome/img/logo.png',
        width: '236',
        height: '45'
      },
      webButton: {
        text: '파크랜드 공식쇼핑몰',
        url: 'http://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&gdCode=PPC22173&brandId=1219&gcId=&evgub='
      }
    });
}
*/
    Kakao.Link.createDefaultButton({
      container: '#kakao-link-btn',
      objectType: 'feed',
      content: {
        title: '파크랜드 공식쇼핑몰',
        description: '#파크랜드 공식쇼핑몰',
        imageUrl: 'http://eshop.parkland.co.kr/img/sns_logo.png',
        link: {
          mobileWebUrl: 'http://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&gdCode=PPC22173&brandId=1219&gcId=&evgub='
        }
      }
    });
function shareStory() {
	Kakao.Story.share({
		url: 'http://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&gdCode=PPC22173&brandId=1219&gcId=&evgub=',
		text: '파크랜드 공식쇼핑몰'
	});
}
function toSNS(sns, strTitle, strURL) {
	var snsArray = new Array();
	var strMsg = strTitle + " " + strURL;
	var image = "http://factin.co.kr/img/logo_s.png";
	snsArray['twitter'] = "http://twitter.com/home?status=" + encodeURIComponent(strTitle) + ' ' + encodeURIComponent(strURL);
	snsArray['facebook'] = "http://www.facebook.com/share.php?u=" + encodeURIComponent(strURL);
	snsArray['pinterest'] = "http://www.pinterest.com/pin/create/button/?url=" + encodeURIComponent(strURL) + "&media=" + image + "&description=" + encodeURIComponent(strTitle);
	snsArray['band'] = "http://band.us/plugin/share?body=" + encodeURIComponent(strTitle) + "  " + encodeURIComponent(strURL) + "&route=" + encodeURIComponent(strURL);
	snsArray['blog'] = "http://blog.naver.com/openapi/share?url=" + encodeURIComponent(strURL) + "&title=" + encodeURIComponent(strTitle);
	snsArray['line'] = "http://line.me/R/msg/text/?" + encodeURIComponent(strTitle) + " " + encodeURIComponent(strURL);
	snsArray['pholar'] = "http://www.pholar.co/spi/rephol?url=" + encodeURIComponent(strURL) + "&title=" + encodeURIComponent(strTitle);
	snsArray['google'] = "https://plus.google.com/share?url=" + encodeURIComponent(strURL) + "&t=" + encodeURIComponent(strTitle);
	window.open(snsArray[sns]);
}
function copy_clip(url) {
	var IE = (document.all) ? true : false;
	if (IE) {
		window.clipboardData.setData("Text", url);
		alert("이 글의 단축url이 클립보드에 복사되었습니다.");
	} else {
		temp = prompt("이 글의 단축url입니다. Ctrl+C를 눌러 클립보드로 복사하세요", url);
	}
}
</script>
								<!-- // 20180516 ADD -->

								<div class="cart_evbanner">
									<ul>
										<a href="https://members.parkland.co.kr/my_parkland/join.asp"><img
											src="<%=cp%>/shoppingmall/detail/detail_files/2020ss_evbanner_01_m.jpg"
											alt="" style="width: 100%;"></a>
									</ul>
									<!--<ul><a href="/nhome/shop/eventmain2.asp?brandId=&gcId=&evgub=&gType=&brandCatId=&eventId=&eventId2=115&nPagesize=40&nSort=1&nPage=1&nRowcount=4&sizeCode=&eventCatId=2988"><img src="/nhome/img/outer_evbanner_459x73.jpg" alt=""></a></ul>
		    <!--ul><img src="/nhome/img/muffler_Nbandbanner2.jpg" alt=""-->

									<!--ul><a href="/nhome/event/30thanks.asp"><img src="/nhome/img/good_evbanner_0503.jpg" alt=""></a></ul-->
								</div>

							</div>

							<!-- // detail_txt -->
						</div>
					</form>
					<!-- // detail_wrap -->

					<!-- mdbox -->



					<div class="mdbox_tit"></div>
					<div class="mdbox_tit"></div>
					<div class="mdbox_tit">
						같은아이템 <span>추천상품</span>
					</div>
					<!-- md rolling -->
					<div class="mdbox mb50">
						<script>
            $(document).ready(function() {
              var owl = $('#owl-carousel03');
              owl.owlCarousel({
                items: 5,
                loop: true,
                /* margin: 10, */
				nav:true,
				//center:true,
				slideSpeed : 700,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
              });

			  // Go to the next item
				$('.customNextBtn03').click(function() {
				    owl.trigger('next.owl.carousel');
				})
				// Go to the previous item
				$('.customPrevBtn03').click(function() {
				    owl.trigger('prev.owl.carousel', [300]);
				})
            })
          </script>
						<div id="owl-carousel03"
							class="owl-carousel owl-theme owl-loaded owl-drag">
							<c:forEach var="dto" items="${lists}">
								<div class="item" style="line-height: 100%;">
									<a href="${imagePath}/${dto.saveFileName}"><img
										src="${imagePath}/${dto.saveFileName}" class="imgListToggle"
										style="vertical-align: middle;"> </a>
								</div>
							</c:forEach>
						</div>
						<div class="customNavigation arr-btn02">
							<a class="btn customPrevBtn03">Previous</a> <a
								class="btn customNextBtn03">Next</a>
						</div>
					</div>
					<!-- // md rolling -->
					<!-- // mdbox -->

					<!-- 상세정보 탭 -->
					<div id="dvHeaderWrapper">
						<div id="dvHeader"
							style="width: 1000px; height: 50px; z-index: 9999; background-color: #ffffff;">
							<div class="tab_type2">
								<li id="mtab1" class="active"><a
									href="javascript:fnSelectTab(1);">상세정보</a></li>
								<li id="mtab2"><a href="javascript:fnSelectTab(2);""="">배송/교환/반품
										안내</a></li>
								<li id="mtab3"><a href="javascript:fnSelectTab(3);">상품평</a></li>
							</div>
						</div>
					</div>
					<!-- // 상세정보 탭 -->
					<div id="dvInfo">
						<!--  상세정보 -->

						<!-- 20171117 add -->
						<div class="detail_service_b">
							<ul>
								<li class="bc"><p>
										<a href="https://members.parkland.kr/my_parkland/join.asp"
											target="_blank"><img
											src="<%=cp%>/shoppingmall/detail/detail_files/sr_icon01.png"
											alt=""></a>
									</p></li>
								<li><p>
										<a
											href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img
											src="<%=cp%>/shoppingmall/detail/detail_files/sr_icon02.png"
											alt=""></a>
									</p></li>
								<li><p>
										<a
											href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img
											src="<%=cp%>/shoppingmall/detail/detail_files/sr_icon03.png"
											alt=""></a>
									</p></li>
								<li><p>
										<a
											href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img
											src="<%=cp%>/shoppingmall/detail/detail_files/sr_icon04.png"
											alt=""></a>
									</p></li>
								<li><p>
										<a
											href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img
											src="<%=cp%>/shoppingmall/detail/detail_files/sr_icon05.png"
											alt=""></a>
									</p></li>
								<li><p>
										<a
											href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img
											src="<%=cp%>/shoppingmall/detail/detail_files/sr_icon07.png"
											alt=""></a>
									</p></li>
								<li><p>
										<a
											href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img
											src="<%=cp%>/shoppingmall/detail/detail_files/sr_icon08.png"
											alt=""></a>
									</p></li>
							</ul>
						</div>
						<!-- // 20171117 add -->
						<div class="d_view" id="p01">
							<img src="${imagePath}/${dto.detailImageFileName}">
						</div>
						<!-- // 상세정보 -->

						<!-- 배송/교환/반품 안내 탭 -->

						<!-- // 배송/교환/반품 안내 탭 -->
						<!--  배송/교환/반품 안내 -->
						<div class="d_view" id="p02" style="display: none;">
							<div class="product_txt">
								<ul>
									<li><span>배송기간</span> <strong> - 결제 확인 시점으로부터 <b><font
												color="#b43909">7일 이내</font></b> 발송 가능합니다.<br>
											&nbsp;&nbsp;(공휴일 포함 시 / 산간도서지방의 경우 항공료 또는 도선료가 추가됩니다. 또한,
											재고상황에 따라 변경될 수 있습니다.)<br> - 쇼핑백 제공이나 선물포장은 불가합니다.
									</strong></li>
									<li><span>반품안내</span> <strong> - 반품신청은 배송완료 후
											파크랜드 쇼핑몰에 접속 후 <b>[MY 파크랜드]-[반품/교환/취소접수]</b>에서 반품 접수하시면 됩니다.<br>
											- 반품접수가 완료된 경우 상품회수 지시는 파크랜드몰에서 요청하며 CJ대한통운 택배기사님이 반품접수완료
											1~2일후에 방문합니다.<br> &nbsp;&nbsp;(타 택배사 이용시 택배비 부담은 고객님
											부담임을 양지하여 주시기 바랍니다.)<br> - 제품 불량에 대한 반품비는 본사가 부담하나 그 외
											단순 변심에 의한 반품시 <b><font color="#b43909">배송료 6,000원</font></b>을
											고객님이 부담하셔야 합니다. <br> &nbsp;&nbsp;(부분 반품시 3,000원)<br>
											- 착불로 보내시게 될 경우, 자동 재반송처리되어 고객님께서 배송비를 이중으로 부담하실 수 있으니
											유의바랍니다.<br> - 환불은 반송된 상품이 파크랜드에 도착 후 상품확인과 배송비 입금 확인 후에
											처리됩니다.<br> - 처음 배송된 상품상태와 다를 경우, 세탁/착용 후 외출하신 경우에는 반품이
											불가합니다.<br> - 모니터상의 사진과 제품의 색상은 다소 차이가 있을 수 있으며, 미세한 색상의
											차이는 제품이상으로 인한 반품사유가 되지 않습니다.
									</strong></li>
									<li><span>교환안내</span> <strong> - <b>교환은 주문하신
												상품의 컬러와 사이즈 교환만 가능합니다.</b><br> (단, 교환상품 품절인 경우 교환접수가 안될 수
											있으며 반품으로 접수하시면 됩니다.)<br> - 교환신청은 배송완료 후 파크랜드 쇼핑몰에 접속 후 <b>[MY
												파크랜드]-[반품/교환/취소접수]</b>에서 교환 접수하시면 됩니다.<br> - 교환접수가 완료된 경우
											상품회수 지시는 파크랜드몰에서 요청하며 CJ대한통운 택배기사님이 교환접수완료 1~2일후에 방문합니다.<br>
											(타 택배사 이용시 택배비 부담은 고객님 부담임을 양지하여 주시기 바랍니다.)<br> - 제품 불량에
											대한 교환비는 본사가 부담하나 그 외 단순 변심에 의한 교환시 <b><font
												color="#b43909">배송료 6,000원</font></b>을 고객님이 부담하셔야 합니다.<br>
											- 교환상품은 반송된 상품이 파크랜드에 도착 후 상품확인과 배송비 입금 확인 후에 배송됩니다.
									</strong></li>
									<li><span>취소안내</span> <strong> - 주문취소는 <b>[MY
												파크랜드]-[반품/교환/취소접수]</b>에서 취소접수하시면 관리자 확인 후 취소접수 처리됩니다.<br> -
											주문취소는 상품포장이 시작되지 않았을 경우만 가능합니다. (주문상태가 입금대기중, 주문완료 단계인 경우)
									</strong></li>
									<li><span>반품/교환 필독사항</span> <strong> - 물건을 받은날로부터
											7일이 경과한 제품은 반품 교환이 불가능합니다.<br> - 제품 손상 및 제품의 가치가 상실된 경우
											(라벨제거, 입은 흔적, 구김, 오염물질이 묻은경우) 반품 교환이 불가능합니다.<br> - 처음
											배송시 상태를 유지(옷걸이, 폴리백, tAg)하여 파크랜드의 상품박스로 보내주셔야 처리가 가능합니다.<br>
											- 세트상품의 경우 부분 교환 및 부분 반품은 불가능합니다.<br> - 사은품을 받으신 경우 함께
											반품을 하여야만 환불처리가 가능합니다.<br> - 교환시에는 교환하실 상품만 보내주시면 됩니다.
									</strong></li>
									<li><span>상품 주문시 주의사항</span> <strong> - 쇼핑몰에서
											판매중인 상품 주문시 컴퓨터 해상도에 따라 상품이 달라 보일 수 있으니 이점 유의 하셔서 주문해 주시면
											감사하겠습니다. </strong></li>
								</ul>
							</div>
						</div>
						<!-- // 배송/교환/반품 안내 -->
						<!--  상품평 -->
						<div class="d_view" id="p03" style="display: none;">
							<div class="btn_review_write">

								<a href="javascript:gLogin();">상품평쓰기</a>

							</div>
							<div id="dvReview">
								<table class="tb_type1">
									<colgroup>
										<col width="113">
										<col width="*">
										<col width="113">
										<col width="130">
										<col width="110">
									</colgroup>
									<tbody></tbody>
								</table>
								<br>
								<div class="page">
									◀ <strong>[1]</strong> ▶
								</div>
							</div>
						</div>
						<!-- // 상품평 -->
					</div>



					<!-- AceCounter eCommerce (Product_Detail) v7.5 Start -->
					<!-- Function and Variables Definition Block Start -->
					<script language="javascript">
var _JV="AMZ2017020801";//script Version
var _UD='undefined';var _UN='unknown';
function _IDV(a){return (typeof a!=_UD)?1:0}
var _CRL='http://'+'gtc6.acecounter.com:8080/';
var _GCD='AS4A41784471665';
if( document.URL.substring(0,8) == 'https://' ){ _CRL = 'https://gtc6.acecounter.com/logecgather/' ;};
if(!_IDV(_A_i)) var _A_i = new Image() ;if(!_IDV(_A_i0)) var _A_i0 = new Image() ;if(!_IDV(_A_i1)) var _A_i1 = new Image() ;if(!_IDV(_A_i2)) var _A_i2 = new Image() ;if(!_IDV(_A_i3)) var _A_i3 = new Image() ;if(!_IDV(_A_i4)) var _A_i4 = new Image() ;
function _RP(s,m){if(typeof s=='string'){if(m==1){return s.replace(/[#&^@,]/g,'');}else{return s.replace(/[#&^@]/g,'');} }else{return s;} };
function _RPS(a,b,c){var d=a.indexOf(b),e=b.length>0?c.length:1; while(a&&d>=0){a=a.substring(0,d)+c+a.substring(d+b.length);d=a.indexOf(b,d+e);}return a};
function AEC_F_D(pd,md,cnum){var i=0,amt=0,num=0;var cat='',nm='';num=cnum;md=md.toLowerCase();if(md=='b'||md=='i'||md=='o'){for(i=0;i<_A_pl.length;i++){if(_A_nl[i]==''||_A_nl[i]==0)_A_nl[i]='1';if(num==0||num=='')num='1';if(_A_pl[i]==pd){nm=_RP(_A_pn[i]);amt=(parseInt(_RP(_A_amt[i],1))/parseInt(_RP(_A_nl[i],1)))*num;cat=_RP(_A_ct[i]);var _A_cart=_CRL+'?cuid='+_GCD;_A_cart+='&md='+md+'&ll='+_RPS(escape(cat+'@'+nm+'@'+amt+'@'+num+'^&'),'+','%2B');break;};};if(_A_cart.length>0)_A_i.src=_A_cart+"rn="+String(new Date().getTime());setTimeout("",2000);};};
if(!_IDV(_A_pl)) var _A_pl = Array(1) ;
if(!_IDV(_A_nl)) var _A_nl = Array(1) ;
if(!_IDV(_A_ct)) var _A_ct = Array(1) ;
if(!_IDV(_A_pn)) var _A_pn = Array(1) ;
if(!_IDV(_A_amt)) var _A_amt = Array(1) ;
if(!_IDV(_pd)) var _pd = '' ;
if(!_IDV(_ct)) var _ct = '' ;
if(!_IDV(_amt)) var _amt = '' ;
</script>
					<!-- Function and Variables Definition Block End-->

					<!-- AceCounter eCommerce (Product_Detail) v7.5 Start -->
					<!-- Data Allocation (Product_Detail) -->
					<script language="javascript">

_pd =_RP("카키 면 워싱 밴딩 팬츠");
_ct =_RP("파크랜드 > 일반바지");
_amt = _RP("49000",1); // _RP(1)-> 가격

if (_amt == 0){
	alert("잘못된 금액입니다. 이 상품은 구매하실 수 없습니다.");
	history.back();
}

_A_amt=Array('49000');
_A_nl=Array('1');
_A_pl=Array('PPC22173');
_A_pn=Array('카키 면 워싱 밴딩 팬츠');
_A_ct=Array('파크랜드 > 일반바지');
</script>
					<!-- AceCounter eCommerce (Product_detail) v6.4 Start -->

					<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
					<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc6.acecounter.com','8080','AS4A41784471665','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
					<noscript>
						<img
							src='http://gtc6.acecounter.com:8080/?uid=AS4A41784471665&je=n&'
							border='0' width='0' height='0' alt=''>
					</noscript>
					<!-- AceCounter Log Gathering Script End -->




					<!-- WIDERPLANET  SCRIPT START 2021.12.1 -->
					<div id="wp_tg_cts" style="display: none;">
						<script id="wp_tag_script_1646028380828"
							src="<%=cp%>/shoppingmall/detail/detail_files/wpc.php"></script>
					</div>
					<script type="text/javascript">
var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
	return {
		wp_hcuid:"",  	/*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				 *주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
		ti:"53076",
		ty:"Item",
		device:"web"
		,items:[{i:"PPC22173",	t:"카키 면 워싱 밴딩 팬츠"}] /* i:<상품 식별번호  (Feed로 제공되는 상품코드와 일치하여야 합니다 .) t:상품명  */
		};
}));
</script>
					<script type="text/javascript" async=""
						src="<%=cp%>/shoppingmall/detail/detail_files/wp_astg_4.0.js.다운로드"></script>
					<!-- // WIDERPLANET  SCRIPT END 2021.12.1 -->






				</div>
				<!-- // content_area -->

				<!-- footer_wrap -->
				<div class="footer_wrap">
					<!-- footer_menu -->
					<div class="footer_menu">
						<div class="fmenu">
							<li><a href="http://company.parkland.kr/" target="_blank">회사소개</a></li>
							<li><a
								href="https://members.parkland.co.kr/info/agreement.asp"
								target="_blank">이용약관</a></li>
							<li><a
								href="https://members.parkland.co.kr/info/personal.asp"
								target="_blank">개인정보취급방침</a></li>
							<li><a href="https://members.parkland.co.kr/info/email.asp"
								target="_blank">이메일무단수집거부</a></li>
							<!--<li><a href="/nhome/customer/faq.asp">고객센터</a></li>-->
							<li><a
								href="https://eshop.parkland.co.kr:444/nhome/customer/faq.asp">FAQ</a></li>
							<li><a
								href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
							<li>help@hellonature.co.kr</li>
							<li><a
								href="http://www.ftc.go.kr/www/bizCommView.do?key=232&amp;apv_perm_no=2006335008030200590&amp;pageUnit=10&amp;searchCnd=wrkr_no&amp;searchKrwd=6218105081&amp;pageIndex=1">사업자정보확인</a></li>
						</div>
					</div>
					<!-- // footer_menu -->
					<!-- footer -->
					<div class="footer">
						<div class="f_left">
							<ul>
								<li>대표이사 : 오정후</li>
								<li>법인명(단체명): (주) 헬로네이처</li>
								<li>사업자 등록번호 : <a
									href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1058766628&amp;apv_perm_no="
									target="_self">105-87-66628</a></li>
								<li>통신판매 신고번호 : 제2012 서울강남 02931호</li>
								<li>개인정보 보호책임자 : 박종화</li>
								<li>입점문의 : <a
									href="https://partner.hellonature.co.kr/partner/ui/inquiry.html"
									target="_blank" rel="noopener">입점문의하기</a></li>
								<li>제휴문의 : mkt@hellonature.co.kr</li>
								<li>채용문의 : recruit@hellonature.co.kr</li>
								<li>기타문의 : help@hellonature.co.kr</li>
								<li>고객센터 : 1644-4339</li>
								<li>주소 : 서울특별시 강남구 봉은사로 16길 33(역삼동) 우 06127</li>
							</ul>
						</div>
						<div class="f_right">
							<ul>
								<li class="fimg"><img
									src="<%=cp%>/shoppingmall/category/category_files/inipay.png"
									alt=""></li>
								<li>
									<p>
										헬로네이처는 (주)이니시스의<br> 구매안전 에스크로서비스를 제공합니다.
									</p>
									<p>
										<a
											href="https://mark.inicis.com/mark/escrow_popup.php?no=31366&amp;st=1355291431"><img
											src="<%=cp%>/shoppingmall/category/category_files/inipay_btn.png"
											alt=""></a>
									</p>
								</li>
							</ul>
						</div>
					</div>
					<!-- // footer -->
				</div>
				<!-- // footer_wrap -->
			</div>
			<!-- // contents -->

			<!-- rnavi -->
			<div class="rnavi">
				<!-- quick -->
				<div class="rightquick_area">
					<div class="rightquick">
						<div class="q_cart">
							<a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp"><img
								src="<%=cp%>/shoppingmall/detail/detail_files/cart.png" alt=""></a>
							<p>
								(<span id="gRightCartCount">2</span>)
							</p>
						</div>
						<div class="q_recent">
							Recent
							<p>
								(<span id="gRecentViewCount">0</span>)
							</p>
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
						<div class="righttop">
							<a
								href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&amp;gdCode=PPC22173&amp;brandId=1219&amp;gcId=&amp;evgub=#"><img
								src="<%=cp%>/shoppingmall/detail/detail_files/top.png" alt="top"></a>
						</div>
					</div>
					<!-- // quick -->
				</div>
				<!-- //rnavi -->
			</div>
			<!-- // container -->

		</div>
		<!-- //WRAP -->



		<!-- WIDERPLANET  SCRIPT START 2021.12.1 -->
		<div id="wp_tg_cts" style="display: none;"></div>
		<div>
			<script type="text/javascript">
		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push(
		(function() {
			return {
				wp_hcuid:"",   
				ti:"53076",	
				ty:"Home",	
				device:"web"	

			};
		}));
		</script>
		</div>
		<script type="text/javascript" async=""
			src="<%=cp%>/shoppingmall/detail/detail_files/wp_astg_4.0.js.다운로드"></script>


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
		var loc = "https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30704&gdCode=PPC22173&brandId=1219&gcId=&evgub=";
		location.href = "https://eshop.parkland.co.kr:444/nhome/member/member_login.asp?retURL=" + encodeURIComponent(loc);
	}
	</script>

		<!-- AceCounter Log Gathering Script V.8.0.AMZ2019080601 -->
		<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc6.acecounter.com','8080','AS4A41784471665','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ="https://"+ Inf[0] +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
		<!-- AceCounter Log Gathering Script End -->


		<script type="text/javascript"
			src="<%=cp%>/shoppingmall/detail/detail_files/wcslog.js.다운로드"></script>
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



		<script>
$(document).ready(function() {
	gtag('event','view_item',{
		"items":[{
			"id":"PPC22173",
			"name":"카키 면 워싱 밴딩 팬츠",
			"list_name":"Detail",
			"brand":"파크랜드",
			"category":"일반바지",
			"variant":"",
			"list_position":1,
			"quantity":1,
			"price":'49000'
		}]
	});
	$('#goodImage').mouseover(function() {
		var pos = $("#detail_txt").position();
		var o = $("#dvZoom");
		o.css({'top' : pos.top + 'px', 'left' : pos.left + 'px'});
		o.show();
	});

    $('#goodImage').mousemove(function(e) {
 		var lense = $("#dvZoom");
 		var o = $("#dvZoom img");
 		var magnification = o.width() / lense.width();
 		//var position = $('#goodImage').position();
 		var position = $('#goodImage').offset();
 		var posX, posY
 		var left, top;

		var pointX, pointY
		pointX = 0;
		pointY = 0;

		pointX = e.pageX-30;
		pointY = e.pageY-50;

		var agent = navigator.userAgent.toLowerCase();
		if ( (navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
		     // ie일 경우
		    pointX -= 40;
			pointY -= 50;
		}else{
		     // ie가 아닐 경우
		}

		//console.log((pointX-position.left) + "," + (pointY-position.top));
 		left = 0-((pointX-position.left)*magnification);
 		top = 0-((pointY-position.top)*magnification);

 		if(left < lense.width()-o.width())	{
 			left = lense.width() - o.width();
 		}

 		if(top<lense.height()-o.height())	{
 			top = lense.height() - o.height();
 		}

 		o.css("left", left + "px");
 		o.css("top", top + "px");
 		return ;


 		posX = e.pageX - position.left;
 		posY = e.pageY - position.top;

 		left = posX * magnification;
 		top = posY * magnification;
 		//console.log(magnification);
 		//console.log(left + "," + top);
 		if(left <= lense.width() )	{
 			left = 0;
 		}
 		else if(o.width()-left <= lense.width() )		{
			left = o.width() - lense.width();
 		}
 		else {
 			left -= lense.width();
 		}
 		if( left > 0 )	left =0;
 		if(top <= lense.height() )	{
 			top = 0;
 		}
 		else if(o.height()-top <= lense.height() )		{
			left = o.height() - lense.height();
 		}
 		else		{
 			top -= lense.height();
 		}
 		if(top>0) top=0;

 		//console.log(left + "," + top);
 		o.css("left", left + "px");
 		o.css("top", top + "px");

    });

    $('#goodImage').mouseout(function() {
		$("#dvZoom").hide();
	});

	$("#dvZoom").hide();
	$("#goodImage").attr("src", $("#thumbnail li:first").attr("data-image"));
	$("#dvZoom img").attr("src", $("#thumbnail li:first").attr("data-zoom-image"));

	$('#thumbnail li').click(function(e) {

		$("#goodImage").attr("src", $(this).attr("data-image"));
		$("#dvZoom img").attr("src", $(this).attr("data-zoom-image"));
    });

    controlListImages();

    loadReviewList();

	//2019-12-18 size button
	//사이즈선택
	if($('.size_box').hasClass('sizechip_not')) $(this).css('cursor','default').unbind('click');

	$('.size_box').bind("click", function(){
		var mgdname = $(this).attr('data-main');
		if(mgdname != "") { alert(mgdname + '사이즈와 동일한 사이즈만 선택이 가능합니다.'); return; }

		if($(this).hasClass('on')) return;
		if($(this).hasClass('sizechip_not')) return;

		$(this).addClass('on').css('cursor','default').siblings('.size_box').removeClass('on');
		var num = $(this).attr('data-num');
		if(num =='' || num == undefined)	{
			$('#gs_num').val($(this).attr('data-size'));
		} else {
			$('#gs_num'+num).val($(this).attr('data-size'));
		}

		var msize = $(this).text();
		var obox;
		$('.size_box').each(function(index, item){
			obox = $(item);
			if(obox.attr('data-main')!='')	{
				if(msize == obox.text())	{
					obox.addClass('on').css('cursor','default').siblings('.size_box').removeClass('on');
					num = obox.attr('data-num');
					if(num =='' || num == undefined)	{
						$('#gs_num').val(obox.attr('data-size'));
					} else {
						$('#gs_num'+num).val(obox.attr('data-size'));
					}
				}
			}
		});

	});


});


$(window).scroll(function() {
	fnFixHeader();
});


function fnFixHeader()	{
	var scrollTop =  $(window).scrollTop();
	var topmargin = $("#dvTopmeu").height();

	var dvViewTop = $("#dvHeaderWrapper").offset().top;
	var dvHeaderHeight = $("#dvHeader").height();
	$("#dvHeader").css("position", "");

	if(scrollTop >= (dvViewTop-topmargin-50)) 		{

		$("#dvHeader").css("position", "fixed");
		$("#dvHeader").css("top", "85px");
	}
	else		{
		$("#dvHeader").css("position", "");
	}

}


function fnSelectTab(tabid)	{
	for(var i=1; i<=3; i++)	{
		var o = $("#mtab" + i);
		o.removeClass("active");
		$("#p0" + i).css("display", "none");
	}

	$("#mtab" + tabid).addClass("active");
	//document.location.href = "#p0" + tabid;
	$("#p0" + tabid).css("display", "block");

	var offset = $("#dvHeaderWrapper").offset();
    $('html, body').animate({scrollTop : offset.top - $("#dvTopmeu").height()}, 400);
}

function loadReviewList()	{

	loaddata("cmd=GETREVIEWLIST&nCount=20&gdNum=30704" ,"/nhome/if/ifgoods.asp", function(data)	{
		showList(data);
	});
}


function showList(ret)	{
	var o = $("#dvReview");
	eval("var adata = " + ret);
	o.html(adata.data);
}

</script>


		<script language="javascript">
function checkSize()		{
	var f = document.buyform;

	//if ( f.gs_num[f.gs_num.selectedIndex].value == "0" )
	if ( f.gs_num.value == "0" || f.gs_num.value == "" )
	{
		alert ( "\n 사이즈를 선택해 주십시오." );
		return false;
	}
	
	return true;
}

function checkCount()	{
	var f = document.buyform;

	if ( f.mycnt.value == "0" ||  f.mycnt.value == "" )
	{
		alert ( "\n 수량을 먼저 입력해 주십시오." );
		f.mycnt.value.focus();
		return false;
	}

	return true;
}

function cart_check( mode )
{
	var f = document.buyform;

	if( !checkSize() )		{
		return;
	}

	if( !checkCount() )	{
		return;
	}

	if ( mode == "order" )	{
		f.action_mode.value = 'order';
	}
	else if ( mode == "cart" )	{
		f.action_mode.value = 'cart';
	}
	else	{
		f.action_mode.value = 'shop';
	}

	buyform.submit();
}


function goods_login()
{
	var f = document.buyform;
	
    f.action="/study/shop/order/order.do?num="+${dto.num};
    f.submit();
	
	/* if( !checkSize() )		{
		return;
	}
	if( !checkCount() )	{
		return;
	}
	f.action_mode.value = 'order';

	var bool = confirm("회원으로 구매하시면 많은 혜택을 받으실수 있습니다\n\n비회원으로 구매하시겠습니까?\n\취소를 누르시면 로그인으로 이동합니다.");

	if (bool){
		//window.open( "goods_login.asp","event","width=550,height=450,top=10,left=10,scrollbars=no,status=no'");
		f.submit();
	}
	else
	{
		//location.href = "https://eshop.parkland.co.kr:444/nhome/member/member_login.asp";
		gLogin();
	} */
}

function goods_login_1()
{
	var f = document.buyform;

	if( !checkSize() )		{
		return;
	}

	if( !checkCount() )	{
		return;
	}

	f.action_mode.value = 'order';

	location.href="goods_login_1.asp";
}

// 이미지 변견
function pview(img){
  document.bigimg.src=".<%=cp%>
			/shoppingmall/detail/" + img;
			}

			// 메일
			function sendmail(pm_num) {
				var openurl = "sendform.asp?pm_num=" + pm_num;

				window
						.open(openurl, "event",
								"width=540,height=680,top=10,left=10,scrollbars=no,status=no'");
			}
			// 사이즈 차트
			function sizediagram(sizefile) {
				window
						.open(sizefile, "event",
								"width=613,height=700,top=10,left=10,scrollbars=yes,status=no'");
			}
			// 수량 올림
			function upcnts() {
				var cnts = ++document.buyform.mycnt.value;
				document.buyform.mycnt.value = cnts;
			}

			// 수량 내림
			function downcnts() {
				var cnts = --document.buyform.mycnt.value;
				if (cnts >= 1) {
					document.buyform.mycnt.value = cnts;
				} else {
					document.buyform.mycnt.value = 1;
				}
			}

			function display_info(num) {
				var o = document.getElementById("display_" + num);

				if (o.style.display == "block") {
					o.style.display = "none";
				} else {
					o.style.display = "block";
				}
				/*
				 var displaynum = eval( "display_" + num );

				 if ( viewid != null )
				 {
				 if ( viewid != displaynum )
				 {
				 viewid.style.display = "none";
				 }
				 }

				 if ( displaynum.style.display == "none" )
				 {
				 displaynum.style.display = "block";
				 }
				 else
				 {
				 displaynum.style.display = "none";
				 }
				 viewid = displaynum;
				 */
			}

			function useinfo(idx) {
				if (confirm("\n 정말 선택한 내용을 삭제하시겠습니까?")) {
					window.location = "formaction.asp?state=DELETE&gd_num=30704&gd_code=PPC22173&cat_sn=&idx="
							+ idx;
				}
			}

			function modify(idx) {
				var url = "userform.asp?state=UPDATE&gd_num=30704&gd_code=PPC22173&cat_sn=&idx="
						+ idx;
				window
						.open(url, "userinfo",
								"width=520,height=690,top=10,left=10,scrollbars=no,status=no");
			}

			function confirm_loction() {
				if (!checkSize()) {
					return;
				}

				var check = confirm("장바구니로 이동 하시겠습니까?");
				if (check == true)
					cart_check('cart');
				else
					cart_check('shop');
			}

			function coupon_login() {
				alert("\n 쿠폰은 회원만 사용가능하니다. 로그인 하신후에 쿠폰발급이 가능합니다.");
				window.location = "/nhome/member/member_login.asp?strReURL=";
			}
		</script>



	</div>
</body>
</html>