<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
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
	href="<%=cp%>/shoppingmall/order/order_files/reset.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/order/order_files/style.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/order/order_files/owl.carousel.min.css">
<!-- main slider css -->
<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
<!-- main slider css -->
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/order/order_files/analytics.js.다운로드"></script>
<script async=""
	src="<%=cp%>/shoppingmall/order/order_files/analytics.js.다운로드"></script>
<script
	src="<%=cp%>/shoppingmall/order/order_files/AceCounter_AW.js.다운로드"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/order/order_files/js"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/order/order_files/analytics.js.다운로드"></script>
<script async=""
	src="<%=cp%>/shoppingmall/order/order_files/fbevents.js.다운로드"></script>
<script
	src="<%=cp%>/shoppingmall/order/order_files/jquery-1.11.3.min.js.다운로드"></script>
<script type="text/javascript"
	src="<%=cp%>/shoppingmall/order/order_files/owl.carousel.js.다운로드"></script>
<!-- main slider js -->
<script src="<%=cp%>/shoppingmall/order/order_files/default.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>
<script src="<%=cp%>/shoppingmall/order/order_files/common.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/order/order_files/odesign.css">
<script src="<%=cp%>/shoppingmall/order/order_files/global.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
<script async="" src="<%=cp%>/shoppingmall/order/order_files/js(1)"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-143530513-1');

	gtag('config', 'UA-126736889-1'); //190828
</script>
<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
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
		if ($(window).scrollTop()) {
			$(".arthro_banner").css("display", "none");
		} else {
			$(".arthro_banner").css("display", "block");
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

	function getCookie_tb(strName) {
		var strArg = new String(strName + "=");
		var nArgLen, nCookieLen, nEnd;
		var i = 0, j;

		nArgLen = strArg.length;
		nCookieLen = document.cookie.length;

		if (nCookieLen > 0) {

			while (i < nCookieLen) {
				j = i + nArgLen;
				if (document.cookie.substring(i, j) == strArg) {
					nEnd = document.cookie.indexOf(";", j);
					if (nEnd == -1)
						nEnd = document.cookie.length;
					return unescape(document.cookie.substring(j, nEnd));
				}
				i = document.cookie.indexOf(" ", i) + 1;
				if (i == 0)
					break;
			}
		}

		return ("");
	}

	function setCookie_tb(name, value) {
		var todayDate = new Date();
		todayDate.setTime(todayDate.getTime() + (1000 * 3600) * 24 * 1); //1일
		document.cookie = name + "=" + escape(value) + ";path=/;expires="
				+ todayDate.toGMTString() + ";";
	}

	$(function() {

		if (getCookie_tb('popUp_tb') != "checked") {

			$("#bannerPop3").css('visibility', 'visible').show();
			$("#bannerPop3").find(".closePop").click(function(e) {
				e.preventDefault();

				if ($("#_closePop").is(":checked")) {
					setCookie_tb("popUp_tb", "checked");
				}

				$("#bannerPop3").css('visibility', 'hide').slideup('fast');
			});
		}

	});
</script>

<script>
	$(document).ready(function() {
		$('a.es').click(function() {
			$('html, body').animate({
				scrollTop : $($.attr(this, 'href')).offset().top - 85
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

				<script type="text/javascript"
					src="<%=cp%>/shoppingmall/order/data/order.js"></script>
				<form name="myForm" method="post" action="" accept-charset="utf-8">
					<input type="hidden" name="coupon_use" value="">

					<div class="s_location">
						<a href="<%=cp%>/shop/main/main.do"><img
							src="<%=cp%>/shoppingmall/order/order_files/icon_home.png"
							border="0"></a><img
							src="<%=cp%>/shoppingmall/order/order_files/icon_larr.png"
							border="0">헬로네이처
					</div>
					<div class="cline"></div>
					<div class="c_title">
						<p>결제정보입력</p>
					</div>
					<div class="stepimg">
						<li><img
							src="<%=cp%>/shoppingmall/order/order_files/step01_off.gif"></li>
						<li><img
							src="<%=cp%>/shoppingmall/order/order_files/step02_on.gif"></li>
						<li><img
							src="<%=cp%>/shoppingmall/order/order_files/step03_off.gif"></li>
						<li><img
							src="<%=cp%>/shoppingmall/order/order_files/step04_off.gif"></li>
					</div>
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
									href="${imagePath}/${dto.saveFileName}"> <img name="bigimg"
										src="${imagePath}/${dto.saveFileName}" width="70" height="70"
										border="0">${dto.subject }
								</a></td>
								<td>${dto.brandName }</td>
								<td>${dto.typeName }</td>
								<td>${dto.price }원</td>
								<td class="num_add">${cnt }</td>
								<td>2500원</td>
								<td><b>${(dto.price * cnt) + 2500 }원</b> <input
									type="hidden" size="5" style="height: 22px;" name="sumtt0"
									id="sumtt0" value="bb"></td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="9" class="step2_price"><b>총 결제금액 (상품총액 <strong><span
											id="og_totalsale">${dto.price * cnt }</span>원</strong> + 배송비 <strong><span
											id="og_deliverysum">2500</span>원</strong>)
								</b> <span>합계:<span id="og_totalamount">${(dto.price * cnt) + 2500 }</span></span>원
								</td>
							</tr>
						</tfoot>
					</table>
					<br> <br>
					<h3 class="h3_title">
						<img src="<%=cp%>/shoppingmall/order/order_files/h3_1.jpg"
							alt="주문자 정보">
					</h3>
					<table class="tb_type3">
						<colgroup>
							<col width="128">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th style="vertical-align: middle;">고객성명 <font
									style="color: #ff0000;">*</font></th>
								<td><input type="text" name="sm_name" maxlength="10"
									value="${memberDto.name }" class="w111"></td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">휴대폰 <font
									style="color: #ff0000;">*</font></th>
								<td><input type="text" name="sm_hphone1" maxlength="4"
									value="${memberDto.hp1 }" class="w62"><span>-</span><input
									type="text" maxlength="4" name="sm_hphone2"
									value="${memberDto.hp2 }" class="w62"><span>-</span><input
									type="text" name="sm_hphone3" maxlength="4"
									value="${memberDto.hp3 }" class="w62"></td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">e-mail <font
									style="color: #ff0000;">*</font></th>
								<td><input type="text" name="sm_email"
									value="${memberDto.email1 }@${memberDto.email2 }"
									maxlength="50" class="w238"></td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">주소 <font
									style="color: #ff0000;">*</font></th>
								<td>
									<p>
										<input type="text" name="sm_addr"
											value="${memberDto.roadFullAddr }" class="w483">
									</p>
								</td>
							</tr>
						</tbody>
					</table>
					<h3 class="h3_title">
						<img src="<%=cp%>/shoppingmall/order/order_files/h3_2.jpg"
							alt="받으시는분 정보">&nbsp;&nbsp; <input type="checkbox"
							name="same" onclick="issame();" id="chk1"><label
							for="chk1">받으시는분의 정보가 주문자정보와 같으면 체크하세요.</label>
					</h3>
					<table class="tb_type3">
						<colgroup>
							<col width="128">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th style="vertical-align: middle;">고객성명 <font
									style="color: #ff0000;">*</font></th>
								<td><input type="text" maxlength="10" name="sd_name"
									class="w111"></td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">휴대폰 <font
									style="color: #ff0000;">*</font></th>
								<td><input type="text" class="w62" maxlength="4"
									name="sd_hphone1"><span>-</span><input type="text"
									class="w62" maxlength="4" name="sd_hphone2"><span>-</span><input
									type="text" maxlength="4" class="w62" name="sd_hphone3"></td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">e-mail <font
									style="color: #ff0000;">*</font></th>
								<td><input type="text" name="sd_email" maxlength="50"
									class="w238"></td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">주소 <font
									style="color: #ff0000;">*</font></th>
								<td>
									<p>
										<input type="text" name="sd_addr" class="w483">
									</p>
								</td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">배송시유의사항 <font
									style="color: #ff0000;">*</font></th>
								<td><input type="text" name="sm_memo" class="w483">
								</td>
							</tr>
						</tbody>
					</table>
					<h3 class="h3_title">
						<img src="<%=cp%>/shoppingmall/order/order_files/h3_3.jpg"
							alt="결제방법 선택">
					</h3>
					<table class="tb_type3">
						<colgroup>
							<col width="128">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th style="vertical-align: middle;">총 주문금액</th>
								<td><b><span id="og_totalsale2">${dto.price * cnt }</span>원<input
										type="hidden" name="sm_tmoney" value="104300"></b></td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">배송료</th>
								<td><b><span id="og_deliverysum2">2500</span>원</b></td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">최종 결제금액</th>
								<td><span style="font-weight: bold; font-color: #ff0000;"
									id="totalAmount">${(dto.price * cnt) + 2500 }원</span></td>
							</tr>
							<tr>
								<th style="vertical-align: middle;">결제구분</th>
								<td><input name="sm_payway" id="radio1" type="radio"
									value="C" checked=""><label for="radio1"><b>카드결제</b>(<img
										src="<%=cp%>/shoppingmall/order/order_files/n_pay.png"
										border="0" height="30" style="vertical-align: middle;">,
										&nbsp;<img
										src="<%=cp%>/shoppingmall/order/order_files/k_pay.png"
										border="0" height="30" style="vertical-align: middle;">)</label>

									<input name="sm_payway" id="radio2" type="radio" value="D"><label
									for="radio2"><b>계좌이체</b></label> <input name="sm_payway"
									id="radio3" type="radio" value="B"><label for="radio3"><b>무통장입금</b></label>
								</td>
							</tr>
						</tbody>
					</table>


					<div class="info-box">
						<p class="b">
							<b>주문할 상품의 상품명, 상품가격, 배송정보를 확인하였으며, 구매에 동의하시겠습니까? (전자상거래법 제8조
								제2항)</b>
						</p>
						<p class="mg10t">
							<input name="agreed" type="checkbox" id="agreed" value="1">
							<label for="agree" class="mg10r">동의합니다</label>
						</p>
					</div>
					<div class="btn_group3">
						<input type="hidden" name="productNum" value="${dto.num}">
						<input type="hidden" name="userId" value="${memberDto.id}">
						<input type="hidden" name="saveFileName"
							value="${dto.saveFileName}"> <input type="hidden"
							name="subject" value="${dto.subject}"> <input
							type="hidden" name="brandName" value="${dto.brandName}">
						<input type="hidden" name="typeName" value="${dto.typeName}">
						<input type="hidden" name="price" value="${dto.price }"> <input
							type="hidden" name="cnt" value="${cnt }"> <input
							type="button" value="결제하기" onclick="sendIt();"
							class="btn-type btn5 blue mr5" /> <input type="button"
							value="취소하기"
							onclick="javascript:location.href='<%=cp%>/shop/product/productSave.do';"
							class="btn-type btn5 blue mr5" />
					</div>
					<input type="hidden" name="allrumtt" value="1">
				</form>

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
							src="<%=cp%>/shoppingmall/order/order_files/cart.png" alt=""></a>
						<p>
							(<span id="gRightCartCount">1</span>)
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
							href="https://eshop.parkland.co.kr:444/nhome/cart/order.asp?coupon_use=#"><img
							src="<%=cp%>/shoppingmall/order/order_files/top.png" alt="top"></a>
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
		<script id="wp_tag_script_1645707355575"
			src="<%=cp%>/shoppingmall/order/order_files/wpc.php"></script>
	</div>
	<script type="text/javascript">
		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push((function() {
			return {
				wp_hcuid : "kabfl3", /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				 *주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
				ti : "53076", /*광고주 코드 */
				ty : "Home", /*트래킹태그 타입 */
				device : "web" /*디바이스 종류  (web 또는  mobile)*/

			};
		}));
	</script>
	<script type="text/javascript" async=""
		src="<%=cp%>/shoppingmall/order/order_files/wp_astg_4.0.js.다운로드"></script>
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
		function new_window(theURL, winName, features) { //v3.0
			window.open(theURL, winName, features);
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
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

		function getCartCount() {
			getCartInfo("cmd=GETCARTCOUNT", getCartCount_proc, "/nhome");
		}

		function getCartCount_proc(ret) {
			eval("var adata = " + ret);
			if (parseInt(adata.retCode) != 0) {
				alert(adata.Message);
				return false;
			}

			$("#gTopCartCount").html(adata.data);
			$("#gRightCartCount").html(adata.data);
		}

		function listRecentView() {
			getGoodsInfo("cmd=LISTRECENTVIEWED", listRecentView_proc, "/nhome");
		}

		function listRecentView_proc(ret) {
			eval("var adata = " + ret);
			if (parseInt(adata.retCode) != 0) {
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
			} else if ((window.sidebar && (navigator.userAgent.toLowerCase()
					.indexOf('firefox') > -1))
					|| (window.opera && window.print)) {
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
				alert((navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Cmd'
						: 'Ctrl')
						+ '+D 키를 눌러 즐겨찾기에 등록하실 수 있습니다.');
			}
		}

		function gLogin() {
			var loc = "https://eshop.parkland.co.kr:444/nhome/cart/order.asp?coupon_use=";
			location.href = "https://eshop.parkland.co.kr:444/nhome/member/member_login.asp?retURL="
					+ encodeURIComponent(loc);
		}
	</script>

	<!-- AceCounter Log Gathering Script V.8.0.AMZ2019080601 -->
	<script language="javascript">
		var _AceGID = (function() {
			var Inf = [ 'gtc6.acecounter.com', '8080', 'AS4A41784471665', 'AW',
					'0', 'NaPm,Ncisy', 'ALL', '0' ];
			var _CI = (!_AceGID) ? [] : _AceGID.val;
			var _N = 0;
			var _T = new Image(0, 0);
			if (_CI.join('.').indexOf(Inf[3]) < 0) {
				_T.src = "https://" + Inf[0] + '/?cookie';
				_CI.push(Inf);
				_N = _CI.length;
			}
			return {
				o : _N,
				val : _CI
			};
		})();
		var _AceCounter = (function() {
			var G = _AceGID;
			var _sc = document.createElement('script');
			var _sm = document.getElementsByTagName('script')[0];
			if (G.o != 0) {
				var _A = G.val[G.o - 1];
				var _G = (_A[0]).substr(0, _A[0].indexOf('.'));
				var _C = (_A[7] != '0') ? (_A[2]) : _A[3];
				var _U = (_A[5]).replace(/\,/g, '_');
				_sc.src = 'https:' + '//cr.acecounter.com/Web/AceCounter_' + _C
						+ '.js?gc=' + _A[2] + '&py=' + _A[4] + '&gd=' + _G
						+ '&gp=' + _A[1] + '&up=' + _U + '&rd='
						+ (new Date().getTime());
				_sm.parentNode.insertBefore(_sc, _sm);
				return _sc.src;
			}
		})();
	</script>
	<!-- AceCounter Log Gathering Script End -->


	<script type="text/javascript"
		src="<%=cp%>/shoppingmall/order/order_files/wcslog.js.다운로드"></script>
	<script type="text/javascript">
		if (!wcs_add)
			var wcs_add = {};
		wcs_add["wa"] = "d2a0aa740ab8d";
		wcs_do();
	</script>
	<script type="text/javascript">
		if (!wcs_add)
			var wcs_add = {};
		wcs_add["wa"] = "s_5a296bbc5570";
		wcs.inflow("parkland.co.kr");
		wcs_do();
	</script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'https://www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-96357523-1', 'auto');
		ga('send', 'pageview');
	</script>

	<!--// 20171214 min //-->
	<script type="text/javascript">
		var _bAce = [];
		function ACEL_TRACKING(mode, ename) {
			var ACEL_img = new Image();
			var ACED_D = 'gtm1.acecounter.com';
			var ACED_H = (location.protocol == 'https:') ? 'https://' + ACED_D
					+ ':5443' : 'http://' + ACED_D + ':5757';
			ACEL_img.src = ACED_H + '/EMAM?euid=AS4A41784471665&ename=' + ename
					+ '&fdv=' + mode + '&RID=' + Math.random() + '&';
			if (typeof (Array.prototype.push) != 'undefined') {
				_bAce.push(ACEL_img);
			}
			;
		};
	</script>



	<script language="javascript"
		src="<%=cp%>/shoppingmall/order/order_files/global.js.다운로드"></script>

	<script language="javascript">
		function cart_delete(ct_num, ct_code) {
			if (confirm("\n 상품을 삭제하시겠습니까?")) {
				window.location = "cart_action.asp?action_state=delete&ct_num="
						+ ct_num + "&gd_num=" + ct_code;
			}
		}

		function check_input() {
			var f = document.buyForm;

			for (var i = 0; i < f.allrumtt.value; i++) {
				//alert($('#sumtt'+i).val())
				if ($('#sumtt' + i).val() == "aa") {
					alert("잘못된 금액입니다. 이 상품은 구매하실 수 없습니다.");
					return false;
				}

			}

			if (isTitle(f.sm_name.value)) {
				alert("\n주문자명을 입력하세요. ");
				f.sm_name.focus();
				return;
			}
			/*
			if ( isTitle( f.sm_phone1.value ) )
			{
				alert( "\n 전화번호를 입력하세요. ");
				f.sm_phone1.focus();
				return;
			}

			if ( isTitle( f.sm_phone2.value ) )
			{
				alert( "\n 전화번호를 입력하세요. ");
				f.sm_phone2.focus();
				return;
			}

			if ( isTitle( f.sm_phone3.value ) )
			{
				alert( "\n 전화번호를 입력하세요. ");
				f.sm_phone3.focus();
				return;
			}

			if( f.sm_phone1.value.length < 2 )	{
				alert("\n지역번호는 2자리 이상 입력하세요.")
				f.sm_phone1.focus();
				return;
			}

			if( f.sm_phone2.value.length < 3 )	{
				alert("\n전화번호를 3자리 이상 입력하세요.")
				f.sm_phone2.focus();
				return;
			}

			if( f.sm_phone3.value.length < 4 )	{
				alert("\n전화번호를 4자리 이상 입력하세요.")
				f.sm_phone3.focus();
				return;
			}
			 */
			if (isTitle(f.sm_hphone1.value)) {
				alert("\n 휴대폰번호를 입력하세요. ");
				f.sm_hphone1.focus();
				return;
			}
			if (isTitle(f.sm_hphone2.value)) {
				alert("\n 휴대폰번호를 입력하세요. ");
				f.sm_hphone2.focus();
				return;
			}
			if (isTitle(f.sm_hphone3.value)) {
				alert("\n 휴대폰번호를 입력하세요. ");
				f.sm_hphone3.focus();
				return;
			}

			if (f.sm_hphone1.value.length < 3) {
				alert("\n휴대폰번호를 3자리 이상 입력하세요.")
				f.sm_hphone1.focus();
				return;
			}

			if (f.sm_hphone2.value.length < 3) {
				alert("\n휴대폰번호를 3자리 이상 입력하세요.")
				f.sm_hphone2.focus();
				return;
			}

			if (f.sm_hphone3.value.length < 4) {
				alert("\n휴대폰번호를 4자리 이상 입력하세요.")
				f.sm_hphone3.focus();
				return;
			}

			if (isTitle(f.sm_email.value)) {
				alert("\n 이메일 주소를 입력하세요. ");
				f.sm_email.focus();
				return;
			}
			if (!CheckEmail(f.sm_email.value)) {
				alert("\n 이메일 형식이 올바르지 않습니다.");
				f.sm_email.focus();
				return;
			}
			/*if ( isTitle( f.sm_zip.value ) )
			{
				alert( "\n 우편번호를 입력하세요. ");
				f.sm_zip.focus();
				return;
			}	*/
			/*if ( isTitle( f.sm_zip2.value ) )
			{
				alert( "\n 우편번호를 입력하세요. ");
				f.sm_zip2.focus();
				return;
			}	*/
			/*
			if ( isTitle( f.sm_addr.value ) )
			{
				alert( "\n 주소를 입력하세요. ");
				f.sm_addr.focus();
				return;
			}
			if ( isTitle( f.sm_subaddr.value ) )
			{
				alert( "\n 나머지 주소를 입력하세요. ");
				f.sm_subaddr.focus();
				return;
			}	*/
			if (isTitle(f.sd_name.value)) {
				alert("\n받으시는분의 정보를 입력하세요. ");
				f.sd_name.focus();
				return;
			}
			/*
			if ( isTitle( f.sd_phone1.value ) )
			{
				alert( "\n 전화번호를 입력하세요. ");
				f.sd_phone1.focus();
				return;
			}
			if ( isTitle( f.sd_phone2.value ) )
			{
				alert( "\n 전화번호를 입력하세요. ");
				f.sd_phone2.focus();
				return;
			}
			if ( isTitle( f.sd_phone3.value ) )
			{
				alert( "\n 전화번호를 입력하세요. ");
				f.sd_phone3.focus();
				return;
			}

			if( f.sd_phone1.value.length < 2 )	{
				alert("\n지역번호는 2자리 이상 입력하세요.")
				f.sd_phone1.focus();
				return;
			}

			if( f.sd_phone2.value.length < 3 )	{
				alert("\n전화번호를 3자리 이상 입력하세요.")
				f.sd_phone2.focus();
				return;
			}

			if( f.sd_phone3.value.length < 4 )	{
				alert("\n전화번호를 4자리 이상 입력하세요.")
				f.sd_phone3.focus();
				return;
			}	*/

			if (isTitle(f.sd_hphone1.value)) {
				alert("\n 휴대폰번호를 입력하세요. ");
				f.sd_hphone1.focus();
				return;
			}
			if (isTitle(f.sd_hphone2.value)) {
				alert("\n 휴대폰번호를 입력하세요. ");
				f.sd_hphone2.focus();
				return;
			}
			if (isTitle(f.sd_hphone3.value)) {
				alert("\n 휴대폰번호를 입력하세요. ");
				f.sd_hphone3.focus();
				return;
			}

			if (f.sd_hphone1.value.length < 3) {
				alert("\n휴대폰번호를 3자리 이상 입력하세요.")
				f.sd_hphone1.focus();
				return;
			}

			if (f.sd_hphone2.value.length < 3) {
				alert("\n휴대폰번호를 3자리 이상 입력하세요.")
				f.sd_hphone2.focus();
				return;
			}

			if (f.sd_hphone3.value.length < 4) {
				alert("\n휴대폰번호를 4자리 이상 입력하세요.")
				f.sd_hphone3.focus();
				return;
			}
			/*
			if ( isTitle( f.sd_email.value ) )
			{
				alert( "\n 이메일 주소를 입력하세요. ");
				f.sd_email.focus();
				return;
			}
			if( !CheckEmail( f.sd_email.value ) )
			{
				alert("\n 이메일 형식이 올바르지 않습니다.");
				f.sd_email.focus();
				return false;
			}*/
			if (isTitle(f.sd_zip.value)) {
				alert("\n 우편번호를 입력하세요. ");
				f.sd_zip.focus();
				return;
			}
			/*if ( isTitle( f.sd_zip2.value ) )
			{
				alert( "\n 우편번호를 입력하세요. ");
				f.sd_zip2.focus();
				return;
			}	*/
			if (isTitle(f.sd_addr.value)) {
				alert("\n 주소를 입력하세요. ");
				f.sd_addr.focus();
				return;
			}
			if (isTitle(f.sd_subaddr.value)) {
				alert("\n 나머지 주소를 입력하세요. ");
				f.sd_subaddr.focus();
				return;
			}
			/*if ( f.sm_payway[2].checked )
			{
				if( f.sm_bankaccount.value == 0 )
				{
					alert( "입금 은행을 선택하십시오." );
					f.sm_bankaccount.focus();
					return false;
				}
				if ( isTitle( f.sm_bankuser.value ) )
				{
					alert( "입금자 이름을 입력하십시오." );
					f.sm_bankuser.focus();
					return false;
				}
			}*/

			if ($("#sPcNum").val() != "" && $("#bCheckCP").val() == "0") {
				alert("쿠폰 사용을 체크해 주세요.");
				return;
			}

			if (f.agreed.checked == false) {
				alert("구매에 동의해주시기 바랍니다.");
				return;
			}

			var point = $("#nUsePLPoint").val();
			if (point != "" && parseInt(point) > 0) {
				checkPL();
			} else {
				f.submit();
			}

		}

		function disaplyPointErr(errMsg) {
			var totalAmount = 104300;
			$("#usePointErr").text(errMsg);
			$("#nUsePLPoint").val("0");
			$("#totalAmount").html(numberWithCommas(totalAmount) + "원");
		}

		function checkPL() {
			var ret = fnCheckPoint();

			if (ret.retCode != 0) {
				disaplyPointErr(ret.retMsg);
				return false;
			}

			getUserInfo("cmd=CHECKPLPOINT&plPoint=" + $("#nUsePLPoint").val()
					+ "&totalsale=104300&ckey=&Event_Point=0", checkPL_proc,
					"/nhome");

		}

		function checkPL_proc(ret) {
			eval("var adata = " + ret);
			if (parseInt(adata.retCode) != 0) {
				alert(adata.Message);
				return false;
			}

			var f = document.buyForm;
			f.submit();
		}

		function checkPL_proc2(ret) {
			var totalAmount = 104300;
			console.log(ret);
			eval("var adata = " + ret);
			if (parseInt(adata.retCode) != 0) {
				disaplyPointErr(adata.retMsg);
				return;
			}

			$("#usePointErr").text("");
			totalAmount = totalAmount - parseInt($("#nUsePLPoint").val());
			$("#totalAmount").html(numberWithCommas(totalAmount) + "원");
		}

		function fnChangeUsePoint() {
			var ret = fnCheckPoint();
			var totalAmount = 104300;
			if (ret.retCode != 0) {
				disaplyPointErr(ret.retMsg);
				return;
			}

			testGetUserInfo("cmd=CHECKPLPOINT&plPoint="
					+ $("#nUsePLPoint").val()
					+ "&totalsale=104300&ckey=&Event_Point=0", checkPL_proc2,
					"/nhome");

		}

		function fnCheckPoint() {
			var retCode, retMsg;
			var nUsePLPoint;
			if ($("#nUsePLPoint").val() == "") {
				//nUsePLPoint = 0;
				retMsg = "사용포인트를 입력해 주세요.";
				return {
					retCode : 1,
					retMsg : retMsg
				};
			}

			var number = /[^0-9]/; //숫자만 허용
			if ($("#nUsePLPoint").val().search(number) != -1) {
				retMsg = "사용포인트에는 숫자만 입력 가능합니다.";
				return {
					retCode : 1,
					retMsg : retMsg
				};
			}

			nUsePLPoint = parseInt($("#nUsePLPoint").val());

			var totalAmount = 104300;

			if (nUsePLPoint > totalAmount) {
				retMsg = "사용포인트가 총 결제금액을 초과합니다.";
				return {
					retCode : 1,
					retMsg : retMsg
				};
			}

			if (nUsePLPoint > 0 && nUsePLPoint < 5000) {
				retMsg = "포인트는 5,000원 이상부터 사용가능합니다.";
				return {
					retCode : 1,
					retMsg : retMsg
				};
			}

			if (nUsePLPoint % 100 != 0) {
				retMsg = "5,000원 이상부터 100원 단위로 사용가능합니다.";
				return {
					retCode : 1,
					retMsg : retMsg
				};
			}
			return {
				retCode : 0,
				retMsg : ""
			};
		}

		function numberWithCommas(x) {
			return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}

		function display_option(display) {
			if (display == "B") {
				bankaccount.style.display = "none";
			} else {
				bankaccount.style.display = "none";
			}

		}

		function issame() {
			var f = document.myForm;
			if (f.same.checked == true) {
				f.sd_name.value = f.sm_name.value;
				f.sd_hphone1.value = f.sm_hphone1.value;
				f.sd_hphone2.value = f.sm_hphone2.value;
				f.sd_hphone3.value = f.sm_hphone3.value;
				f.sd_email.value = f.sm_email.value;
				f.sd_addr.value = f.sm_addr.value;
			} else {
				f.sd_name.value = "";
				f.sd_hphone1.value = "";
				f.sd_hphone2.value = "";
				f.sd_hphone3.value = "";
				f.sd_email.value = "";
				f.sd_addr.value = "";
			}
		}
		function openwindow(name, url, width, height, scrollbar) {
			scrollbar_str = scrollbar ? 'yes' : 'no';
			window.open(url, name, 'width=' + width + ',height=' + height
					+ ',scrolling=' + scrollbar_str);
		}

		function set_delete(ct_num, ct_code, gd_style) {
			if (confirm("본 상품은 세트 상품이므로 상의 혹은 하의도 삭제됩니다.\n 삭제하시겠습니까?")) {
				window.location = "cart_action.asp?action_state=delete&ct_num="
						+ ct_num + "&gd_num=" + ct_code + "&gd_style="
						+ gd_style;
			}
		}

		function set_delete_set(ct_num, ct_code, gd_style, s_gd_num) {
			if (confirm("본 상품은 세트 상품이므로 상의/하의 혹은 해당 전체 상품이 삭제됩니다.\n 삭제하시겠습니까?")) {
				window.location = "cart_action.asp?action_state=delete&ct_num="
						+ ct_num + "&gd_num=" + ct_code + "&gd_style="
						+ gd_style + "&s_gd_num=" + s_gd_num;
			}
		}

		function setSdAddr(zipcode, addr1, addr2) {
			var f = document.buyForm;
			f.sd_zip.value = zipcode;
			f.sd_addr.value = addr1;
			f.sd_subaddr.value = addr2;
		}

		function setSmAddr(zipcode, addr1, addr2) {
			var f = document.buyForm;
			f.sm_zip.value = zipcode;
			f.sm_addr.value = addr1;
			f.sm_subaddr.value = addr2;
		}

		function fnCheckCoupon() {
			var spcnum = $("#sPcNum").val().trim();
			if (spcnum == "") {
				alert("쿠폰번호를 입력해 주세요.");
				return;
			}

			getCouponInfo("spcnum=" + spcnum + "&from=1", checkCP_proc,
					"/nhome");
		}

		function checkCP_proc(ret) {
			eval("var adata = " + ret);
			if (parseInt(adata.retCode) != 0) {
				alert(adata.retMsg);
				$("#sPcNum").val("");
				return false;
			}

			alert("쿠폰 할인이 적용되었습니다.");
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
</body>
</html>