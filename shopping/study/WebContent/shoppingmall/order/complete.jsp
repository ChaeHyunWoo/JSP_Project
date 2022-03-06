<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>헬로네이처</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=1300">
<meta name="facebook-domain-verification"
	content="ljsthv428khej1ow7p3b9ffy8q67i5">
<meta name="facebook-domain-verification"
	content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/product/product_files/reset.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/product/product_files/style.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/product/product_files/owl.carousel.min.css">
<!-- main slider css -->
<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
<!-- main slider css -->
<script async=""
	src="<%=cp%>/shoppingmall/product/product_files/analytics.js.다운로드"></script>
<script
	src="<%=cp%>/shoppingmall/product/product_files/AceCounter_AW.js.다운로드"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/product/product_files/analytics.js.다운로드"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/product/product_files/js"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/product/product_files/analytics.js.다운로드"></script>

<script
	src="<%=cp%>/shoppingmall/product/product_files/jquery-1.11.3.min.js.다운로드"></script>
<script type="text/javascript"
	src="<%=cp%>/shoppingmall/product/product_files/owl.carousel.js.다운로드"></script>
<!-- main slider js -->
<script src="<%=cp%>/shoppingmall/product/product_files/default.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>
<script src="<%=cp%>/shoppingmall/product/product_files/common.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/product/product_files/odesign.css">
<script src="<%=cp%>/shoppingmall/product/product_files/global.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
<script async="" src="<%=cp%>/shoppingmall/product/product_files/js(1)"></script>
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
<body class="body">
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



				<!--  content_area -->
				<div class="content_area">
					<div>
						<style type="text/css">
.c-tit01 {
	padding-left: 0px;
	margin-top: 15px;
	margin-bottom: 15px;
	font-size: 13px;
	font-weight: bold;
}

.c-tit02 {
	padding-left: 0px;
	margin-top: 25px;
	margin-bottom: 15px;
	font-size: 16px;
	font-weight: bold;
}

.info-box {
	background: #f9f9f9;
	border: 1px solid #c9cacb;
	text-align: center;
	padding: 15px;
	line-height: 1.2;
}

.mg10t {
	margin-top: 10px
}

.mg10r {
	margin-right: 10px
}
</style>
					</div>
					<script type="text/javascript"
						src="<%=cp%>/shoppingmall/order/data/order.js"></script>
					<form name="myForm" method="post" action="">
						<input type="hidden" name="coupon_use" value="">

						<!-- 정보수정 -->
						<div class="s_location">
							<a href="<%=cp%>/shop/main/main.do"><img
								src="<%=cp%>/shoppingmall/product/product_files/icon_home.png"
								border="0"></a><img
								src="<%=cp%>/shoppingmall/product/product_files/icon_larr.png"
								border="0">헬로네이처
						</div>
						<div class="cline"></div>
						<div class="c_title">
							<p>결제완료</p>
						</div>
						<%-- 						<div class="stepimg">
							<li><img
								src="<%=cp%>/shoppingmall/order/order_files/step01_off.gif"></li>
							<li><img
								src="<%=cp%>/shoppingmall/order/order_files/step02_on.gif"></li>
							<li><img
								src="<%=cp%>/shoppingmall/order/order_files/step03_on.gif"></li>
							<li><img
								src="<%=cp%>/shoppingmall/order/order_files/step04_off.gif"></li>
						</div> --%>
						<table class="tb_type2">
							<colgroup>
								<col width="*">
								<col width="80">
								<col width="180">
								<col width="95">
								<col width="116">
								<col width="82">
								<col width="130">
							</colgroup>
							<thead>
								<tr class="cus_notice_list">
									<th>상품명</th>
									<th>브랜드</th>
									<th>종류</th>
									<th>상품가격</th>
									<th>수량</th>
									<th>배송비</th>
									<th>합계</th>
								</tr>
							</thead>
							<tbody id="og_glist">
								<tr>
									<td style="text-align: left"><a
										href="${imagePath}/${productDto.saveFileName}"> <img
											name="bigimg" src="${imagePath}/${productDto.saveFileName}"
											width="70" height="70" border="0">${productDto.subject }
									</a></td>
									<td>${productDto.brandName }</td>
									<td>${productDto.typeName }</td>
									<td>${productDto.price }원</td>
									<td class="num_add">${dto.cnt }</td>
									<td>2500원</td>
									<td><b>${(productDto.price * dto.cnt) + 2500 }원</b> <input
										type="hidden" size="5" style="height: 22px;" name="sumtt0"
										id="sumtt0" value="bb"></td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="9" class="step2_price"><b>총 결제금액 (상품총액 <strong><span
												id="og_totalsale">${productDto.price * dto.cnt}</span>원</strong> +
											배송비 <strong><span id="og_deliverysum">2500</span>원</strong>)
									</b> <span>합계:<span id="og_totalamount">${(productDto.price * dto.cnt) + 2500 }</span></span>원
									</td>
								</tr>
							</tfoot>
						</table>
					</form>
				</div>
				<div></div>
				<!-- // content_area -->
				<div class="tab_type3 mb40"></div>
				<h3 class="h3_title" align="center">
					<img src="<%=cp%>/shoppingmall/order/order_files/h3_2.jpg"
						alt="받으시는분 정보">
				</h3>
				<table class="tb_type1">
					<colgroup>
						<col width="100">
						<col width="100">
						<col width="100">
						<col width="*">
						<col width="100">
						<col width="300">
					</colgroup>
					<thead>
						<tr class="cus_notice_list">
							<th>이름</th>
							<th>휴대폰</th>
							<th>e-mail</th>
							<th>주소</th>
							<th>결제구분</th>
							<th>배송시유의사항</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td>${dto.sd_name }</td>
							<td>${dto.sd_hphone1}-${dto.sd_hphone2}-${dto.sd_hphone3}</td>
							<td>${dto.sd_email}</td>
							<td>${dto.sd_addr}</td>
							<td><c:choose>
									<c:when test="${dto.sm_payway eq 'C'}">카드</c:when>
									<c:when test="${dto.sm_payway eq 'D'}">계좌이체</c:when>
									<c:when test="${dto.sm_payway eq 'B'}">무통장입금</c:when>
									<c:otherwise></c:otherwise>
								</c:choose></td>
							<td>${dto.sm_memo}</td>
						</tr>

					</tbody>
				</table>


				<!-- // 정보수정 -->
				<!-- 본인확인 인증 s -->
				<style>
.title_type01 {
	background:
		url('http://members.parkland.co.kr/images/sub/left_line.png') center
		left no-repeat;
	font-size: 19px;
	color: #1e1e1e;
	padding-left: 10px;
	height: 17px;
	margin-bottom: 14px;
}

.title_type02 {
	font-size: 17px;
	color: #21286d;
	font-weight: 600;
	height: 17px;
	margin-bottom: 10px;
}

.sub_txt_type01 {
	font-size: 13px;
	color: #7e7e7e;
}

.join01_in {
	border: 1px solid #dfdfdf;
	margin-top: 23px;
}

.join01_in:after {
	content: '';
	display: block;
	clear: both;
}

.join01_in>ul>li {
	float: left;
	width: 50%;
	margin-top: 30px;
	text-align: center;
}

.join01_in>ul>li>dl {
	border-left: 1px solid #dfdfdf;
	padding-left: 30px;
}

.join01_in>ul>li>dl dt:first-child {
	height: 48px;
}

.join01_in>ul>li>dl dt {
	font-size: 18px;
	color: #21286d;
	height: 18px;
	margin-bottom: 19px;
}

.join01_in>ul>li>dl dd {
	font-size: 13px;
	color: #7e7e7e;
	height: 14px;
	margin-bottom: 19px;
	height: 35px;
}

.join01_in>ul>li:first-child>dl {
	border-left: 0;
}

.btn_type03 {
	margin-top: 10px;
}

.btn_type03 a {
	display: inline-block;
	width: 107px;
	padding: 5px 0;
	font-size: 13px;
	color: #fff;
	text-align: center;
	background-color: #21286d;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

.btn_type03 a:hover {
	color: #fff;
}

.btn_type03 a.bgcC {
	background-color: #898989;
}
</style>
				<div id="niceIpinPop"
					style="display: none; padding: 20px; position: absolute; left: 10px; top: 600px; width: 840px; height: 310px; border: 3px solid #7b7c7f; background-color: #FFF; z-index: 100;">
					<div class="title_type01">
						본인확인
						<div
							style="position: relative; float: right; margin-top: -10px; margin-right: -10px; width: 20px; height: 21px;">
							<img
								src="<%=cp%>/shoppingmall/product/product_files/login_popClose.png"
								style="cursor: pointer"
								onclick="javascript:$(&#39;#niceIpinPop&#39;).hide();">
						</div>
					</div>
					<div class="sub_txt_type01">핸드폰실명인증 또는 아이핀인증을 선택해주세요.</div>
					<div class="join01_in">
						<ul>
							<li>



								<title>NICE&#65533;??#65533;?#65533;&#65533;蹂?-
									CheckPlus &#65533;?щ낯??#65533;몄? &#65533;??#65533;&#65533;</title> <script
									language="javascript">
	window.name ="Parent_window";

	function fnPopup2(){
		window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
		document.form_chk.target = "popupChk";
		document.form_chk.submit();
	}
	</script> <!-- body class="body" onload="fnPopup();" --> <!-- <br>&#65533;泥?#65533;蹂?&#65533;??#65533;&#65533; &#65533;곗?#65533;&#65533; : [AgAFRzQwMjCN2yvlAOQJFL4ZyPOigU2sSJMlfhaA+d5jh+ILyvkWFzFLNVcRuf7HVLDKCn5dXf87Hqi6hM9W9nx42k0vbIvkZlpvkEX1pTHK48yhcMCsmBLxMWoam8JDUeLElvhmCe4VCYzhirxNjI33DCqR3CjvmymbX8p+ZHRmc2swnhHdWECmroOi9Y0RgiEQPX9utm6DbIvFBm+62b7BuDWRdF3u7X/805VQgtKHVfZeZUq1bmUEQYDLICVdz/W+Zui2xlZ8G5EE4T1HoMvtT4Io84GN7vCujSHvV6BhohZ9ssEuHveS7g9yc5b/MKuGY1kmo91idkFJGdKyjC8m9Xp6vSMctrp6VTVb+GLzixagqtD1c/AxbblVZWFS0A+kZveMYSmhZ10k9mgU/jqC6hZBjxx04r+Rz8x2P7UL1Sq7Lqp69K/Wfpr3pNQj06B1B2931Y361Jk8uiPk1h2aQXecFHUJUD0Il/sjM5BO6pWBRhbdYrl2WBPMeuwBrchxxrduunM8e7KUYoDufA3vldPRoWGEFqVjo/HKxbSiptEc08wy/w==]<br><br> -->

								<!-- 蹂몄?#65533;몄? &#65533;鍮&#65533;&#65533; &#65533;?&#65533;&#65533; &#65533;몄?&#65533;湲?&#65533;??#65533;? &#65533;ㅼ怨&#65533; 媛?#65533; form&#65533;&#65533; &#65533;?&#65533;⑸&#65533;&#65533;. -->
								<form name="form_chk" method="post">
									<input type="hidden" name="m" value="checkplusSerivce">
									<!-- &#65533;? &#65533;곗?#65533;&#65533;濡&#65533;, &#65533;??#65533;?硫&#65533; &#65533;??#65533;?? -->
									<input type="hidden" name="EncodeData"
										value="AgAFRzQwMjCN2yvlAOQJFL4ZyPOigU2sSJMlfhaA+d5jh+ILyvkWFzFLNVcRuf7HVLDKCn5dXf87Hqi6hM9W9nx42k0vbIvkZlpvkEX1pTHK48yhcMCsmBLxMWoam8JDUeLElvhmCe4VCYzhirxNjI33DCqR3CjvmymbX8p+ZHRmc2swnhHdWECmroOi9Y0RgiEQPX9utm6DbIvFBm+62b7BuDWRdF3u7X/805VQgtKHVfZeZUq1bmUEQYDLICVdz/W+Zui2xlZ8G5EE4T1HoMvtT4Io84GN7vCujSHvV6BhohZ9ssEuHveS7g9yc5b/MKuGY1kmo91idkFJGdKyjC8m9Xp6vSMctrp6VTVb+GLzixagqtD1c/AxbblVZWFS0A+kZveMYSmhZ10k9mgU/jqC6hZBjxx04r+Rz8x2P7UL1Sq7Lqp69K/Wfpr3pNQj06B1B2931Y361Jk8uiPk1h2aQXecFHUJUD0Il/sjM5BO6pWBRhbdYrl2WBPMeuwBrchxxrduunM8e7KUYoDufA3vldPRoWGEFqVjo/HKxbSiptEc08wy/w==">
									<!-- &#65533;?&#65533;&#65533; &#65533;泥?#65533;蹂대?#65533; &#65533;??#65533;&#65533; &#65533;&#65533; &#65533;곗?#65533;&#65533;&#65533;?&#65533;&#65533;. -->

									<!-- &#65533;泥?#65533;? &#65533;?듬?湲?&#65533;?&#65533;&#65533; &#65533;곗?#65533;&#65533;瑜&#65533; &#65533;ㅼ&#65533;湲?&#65533;??&#65533;ъ?#65533;&#65533; &#65533;&#65533; &#65533;?쇰?#65533;, &#65533;몄?寃곌낵 &#65533;??#65533;&#65533; &#65533;대?媛? 洹몃&#65533;濡&#65533; &#65533;≪&#65533;⑸&#65533;&#65533;.
	    	   &#65533;대?&#65533;?쇰명?#65533;&#65533; 異?#65533;&#65533;??&#65533;&#65533; &#65533;??#65533;?? -->
									<input type="hidden" name="param_r1" value="edit_ansim">
									<input type="hidden" name="param_r2" value=""> <input
										type="hidden" name="param_r3" value="">

									<!-- <a href="javascript:fnPopup();"> CheckPlus &#65533;?щ낯??#65533;몄? Click</a> -->
								</form>


								<dl>
									<dt>
										<img
											src="<%=cp%>/shoppingmall/product/product_files/join_icon01.png"
											alt="">
									</dt>
									<dt>휴대폰</dt>
									<dd>휴대폰으로 본인인증하기</dd>
									<dd>
										<div class="btn_type03">
											<a href="javascript:fnAnsimSubmit();">인증하기</a>
										</div>
									</dd>
								</dl>
							</li>
							<li>



								<title>NICE&#65533;??#65533;?#65533;&#65533;蹂?媛&#65533;&#65533;二쇰쇰?&#65533;&#65533;
									&#65533;鍮&#65533;&#65533;</title> <script language="javascript">
	window.name ="Parent_window";
	
	function fnPopup(){
		window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_ipin.target = "popupIPIN2";
		document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
		document.form_ipin.submit();
	}
	</script> <!-- iRtn : 0 - ?? 泥由???듬??<br><br>
&#65533;泥?#65533;蹂?&#65533;??#65533;&#65533; &#65533;곗?#65533;&#65533; : [AgEEQzY5Mm6wKwt/oiEpiWU/QJ9R38qi5dAPLW/4h2WTuTO+kyLfox81bFICEWhava2B6INKlolBxBrIgy3VirgGxJTQG3jPr6DJwFRJbL87jkk6p52m8PQSEBBJmYmyYCXAB4ZcMTAwspE+IFFaaIoVBAVpLzWbKZtfyn5kdGZzazCeEd1Yteb5IvxbW++06qKSolrbhF9rAuI2apE8EFT+5u2H6cectkuHU6K9ZIHex+GSoWkqGZn5Fk2v7X8G+sIL08bi1CMmW3PVhY2XFjogpDv0TS5jPNg63FUyCx2tJuHlozGghl7LQJYPboSIyArEgpd+AOyfS5qPThRPrUeG2W3aQ6o=]<br><br> -->

								<!-- 媛&#65533;&#65533;二쇰쇰?&#65533;&#65533; &#65533;鍮&#65533;&#65533; &#65533;?&#65533;&#65533; &#65533;몄?&#65533;湲?&#65533;??#65533;? &#65533;ㅼ怨&#65533; 媛?#65533; form&#65533;&#65533; &#65533;?&#65533;⑸&#65533;&#65533;. -->
								<form name="form_ipin" method="post">
									<input type="hidden" name="m" value="pubmain">
									<!-- &#65533;? &#65533;곗?#65533;&#65533;濡&#65533;, &#65533;??#65533;?硫&#65533; &#65533;??#65533;?? -->
									<input type="hidden" name="enc_data"
										value="AgEEQzY5Mm6wKwt/oiEpiWU/QJ9R38qi5dAPLW/4h2WTuTO+kyLfox81bFICEWhava2B6INKlolBxBrIgy3VirgGxJTQG3jPr6DJwFRJbL87jkk6p52m8PQSEBBJmYmyYCXAB4ZcMTAwspE+IFFaaIoVBAVpLzWbKZtfyn5kdGZzazCeEd1Yteb5IvxbW++06qKSolrbhF9rAuI2apE8EFT+5u2H6cectkuHU6K9ZIHex+GSoWkqGZn5Fk2v7X8G+sIL08bi1CMmW3PVhY2XFjogpDv0TS5jPNg63FUyCx2tJuHlozGghl7LQJYPboSIyArEgpd+AOyfS5qPThRPrUeG2W3aQ6o=">
									<!-- &#65533;?&#65533;&#65533; &#65533;泥?#65533;蹂대?#65533; &#65533;??#65533;&#65533; &#65533;&#65533; &#65533;곗?#65533;&#65533;&#65533;?&#65533;&#65533;. -->

									<!-- &#65533;泥?#65533;? &#65533;?듬?湲?&#65533;?&#65533;&#65533; &#65533;곗?#65533;&#65533;瑜&#65533; &#65533;ㅼ&#65533;湲?&#65533;??&#65533;ъ?#65533;&#65533; &#65533;&#65533; &#65533;?쇰?#65533;, &#65533;몄?寃곌낵 &#65533;??#65533;&#65533; &#65533;대?媛? 洹몃&#65533;濡&#65533; &#65533;≪&#65533;⑸&#65533;&#65533;.
    	 &#65533;대?&#65533;?쇰명?#65533;&#65533; 異?#65533;&#65533;??&#65533;&#65533; &#65533;??#65533;?? -->
									<input type="hidden" name="param_r1" value="edit_ipin">
									<input type="hidden" name="param_r2" value=""> <input
										type="hidden" name="param_r3" value="">

									<!-- <a href="javascript:fnPopup();"><img src="http://image.creditbank.co.kr/static/img/vno/new_img/bt_17.gif" width=218 height=40 border=0></a> -->
								</form> <!-- 媛&#65533;&#65533;二쇰쇰?&#65533;&#65533; &#65533;鍮&#65533;&#65533; &#65533;? &#65533;?댁?#65533;&#65533;? &#65533;ъ?#65533;?#65533; &#65533;몄?&#65533;&#65533; 諛?쇰?#65533; &#65533;??#65533;? &#65533;ъ?#65533;&#65533; &#65533;蹂?#65533;&#65533; &#65533;대?&#65533;?李쎌쇰?#65533; 諛寃&#65533;⑸&#65533;&#65533;.
	 &#65533;곕?#65533;&#65533; 遺&#65533;紐&#65533; &#65533;?댁?#65533;濡&#65533; &#65533;대&#65533;湲?&#65533;??#65533;? &#65533;ㅼ怨&#65533; 媛?#65533; form&#65533;&#65533; &#65533;?&#65533;⑸&#65533;&#65533;. -->
								<form name="vnoform" method="post">
									<input type="hidden" name="enc_data">
									<!-- &#65533;몄?諛?#65533; &#65533;ъ?#65533;&#65533; &#65533;蹂?&#65533;??#65533;&#65533; &#65533;곗?#65533;&#65533;&#65533;?&#65533;&#65533;. -->

									<!-- &#65533;泥?#65533;? &#65533;?듬?湲?&#65533;?&#65533;&#65533; &#65533;곗?#65533;&#65533;瑜&#65533; &#65533;ㅼ&#65533;湲?&#65533;??&#65533;ъ?#65533;&#65533; &#65533;&#65533; &#65533;?쇰?#65533;, &#65533;몄?寃곌낵 &#65533;??#65533;&#65533; &#65533;대?媛? 洹몃&#65533;濡&#65533; &#65533;≪&#65533;⑸&#65533;&#65533;.
    	 &#65533;대?&#65533;?쇰명?#65533;&#65533; 異?#65533;&#65533;??&#65533;&#65533; &#65533;??#65533;?? -->
									<input type="hidden" name="param_r1" value="edit_ipin">
									<input type="hidden" name="param_r2" value=""> <input
										type="hidden" name="param_r3" value="">
								</form>



								<dl>
									<dt>
										<img
											src="<%=cp%>/shoppingmall/product/product_files/join_icon02.png"
											alt="">
									</dt>
									<dt>아이핀(I-PIN)</dt>
									<dd>아이핀으로 본인인증하기</dd>
									<dd class="btn_type03">
										<a href="javascript:fnIpinSubmit();">인증하기</a>
									</dd>
								</dl>
							</li>
						</ul>
					</div>
				</div>
				<!-- 본인확인 인증 e -->

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
							src="<%=cp%>/shoppingmall/product/product_files/cart.png" alt=""></a>
						<p>
							(<span id="gRightCartCount">0</span>)
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
							href="https://eshop.parkland.co.kr:444/nhome/user/modifyuserinfo.asp#"><img
							src="<%=cp%>/shoppingmall/product/product_files/top.png"
							alt="top"></a>
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
	<div id="wp_tg_cts" style="display: none;">
		<script id="wp_tag_script_1645705916687"
			src="<%=cp%>/shoppingmall/product/product_files/wpc.php"></script>
	</div>
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
	<script type="text/javascript" async=""
		src="<%=cp%>/shoppingmall/product/product_files/wp_astg_4.0.js.다운로드"></script>
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
		var loc = "https://eshop.parkland.co.kr:444/nhome/user/modifyuserinfo.asp?";
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
		src="<%=cp%>/shoppingmall/product/product_files/wcslog.js.다운로드"></script>
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
function setAddrsub(zipcode, addr1, addr2, siNm,sggNm,emdNm ,liNm, roadAddrPart1,jibunAddr, engAddr, admCd,rnMgtSn , bdMgtSn, detBdNmList )		{
	$("#zipcode").val(zipcode);
	$("#addr1").val(addr1);
	$("#addr2").val(addr2);
	$("#siNm").val(siNm);
	$("#sggNm").val(sggNm);
	$("#emdNm").val(emdNm);
	$("#liNm").val(liNm);
	$("#roadAddrPart1").val(roadAddrPart1);
	$("#jibunAddr").val(jibunAddr);
	$("#engAddr").val(engAddr);
	$("#admCd").val(admCd);
	$("#rnMgtSn").val(rnMgtSn);
	$("#bdMgtSn").val(bdMgtSn);
	$("#detBdNmList").val(detBdNmList);
}
function setAddr(zipcode, addr1, addr2)		{
	$("#zipcode").val(zipcode);
	$("#addr1").val(addr1);
	$("#addr2").val(addr2);
}

function checkData()		{
	if($("#changepw").val() != "") 	{ 	// 비밀번호 변경을 입력 했을 경우.
		if ($("#changepw02").val() == "") {
			alert("비밀번호 변경 확인을 입력하세요");
			$("#changepw02").focus(); 
			return false;
		}
			
		if ($("#changepw").val() != $("#changepw02").val()) {
			alert("새 비밀번호가 일치하지 않습니다");
			$("#changepw02").focus(); 
			return false;
		}
	}	
	
	var o = $("#hp1");
	if(o.val() == "")		{
		alert("휴대폰번호를 입력하세요");
		o.focus();
		return false;
	}
	
	o = $("#hp2");
	if(o.val() == "")		{
		alert("휴대폰번호를 입력하세요");
		o.focus();
		return false;
	}
	
	o = $("#hp2");
	if(o.val() == "")		{
		alert("휴대폰번호를 입력하세요");
		o.focus();
		return false;
	}

	return true;
}


function fnSubmit()		{
	if(checkData())			{
		$("#frmData").submit();
	}
}

function fnAnsimSubmit()  {
	fnPopup2();
}
function fnIpinSubmit()  {
	fnPopup();
}
function fnAnsimReturn(hp){
	var frm = document.frmData;
	if(hp.length==11){
		frm.hp1.value = hp.substr(0,3);
		frm.hp2.value = hp.substr(3,4);
		frm.hp3.value = hp.substr(7,4);
	}else{
		frm.hp1.value = hp.substr(0,3);
		frm.hp2.value = hp.substr(3,3);
		frm.hp3.value = hp.substr(6,4);
	}
	$('#niceIpinPop').hide();
}
function fnIpinReturn(hp){
	var frm = document.frmData;
	frm.hp1.value = "";
	frm.hp2.value = "";
	frm.hp3.value = "";
	frm.hp1.readOnly = false;
	frm.hp2.readOnly = false;
	frm.hp3.readOnly = false;
	frm.hp1.focus();
	$('#niceIpinPop').hide();
}


</script>

</body>
</html>