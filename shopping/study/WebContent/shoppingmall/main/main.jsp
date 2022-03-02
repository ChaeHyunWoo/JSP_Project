<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>파크랜드 메인페이지</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=1300">
<meta name="facebook-domain-verification"
	content="ljsthv428khej1ow7p3b9ffy8q67i5">
<meta name="facebook-domain-verification"
	content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/main/main_files/reset.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/main/main_files/style.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/main/main_files/owl.carousel.min.css">

<script type="text/javascript" async=""
	src="<%=cp%>/main_files/analytics.js.다운로드"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/main/main_files/js"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/main/main_files/analytics.js.다운로드"></script>
<script async=""
	src="<%=cp%>/shoppingmall/main/main_files/analytics.js.다운로드"></script>
<script src="<%=cp%>/shoppingmall/main/main_files/AceCounter_AW.js.다운로드"></script>
<script src="<%=cp%>/shoppingmall/main/main_files/462724525419327"
	async=""></script>
<script async=""
	src="<%=cp%>/shoppingmall/main/main_files/fbevents.js.다운로드"></script>
<script
	src="<%=cp%>/shoppingmall/main/main_files/jquery-1.11.3.min.js.다운로드"></script>
<script type="text/javascript"
	src="<%=cp%>/shoppingmall/main/main_files/owl.carousel.js.다운로드"></script>
<!-- main slider js -->
<script src="<%=cp%>/shoppingmall/main/main_files/default.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>
<script src="<%=cp%>/shoppingmall/main/main_files/common.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/main/main_files/odesign.css">
<script src="<%=cp%>/shoppingmall/main/main_files/global.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
<script async="" src="<%=cp%>/shoppingmall/main/main_files/js(1)"></script>
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

	<div id="container">
		<!-- navi -->
		<div class="navi">
			<div class="mlogo">
					<a href="<%=cp%>/shop/main.do"><img
					src="<%=cp%>/shoppingmall/category/category_files/logo_x2.png"
					alt="parkland"></a>
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
								src="<%=cp %>/shoppingmall/main/main_files/btn_search.png"
								alt="Search">
							<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 START-->
							<input type="hidden" id="encodingType" name="encodingType"
								value="EUC-KR">
							<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 END-->
						</form>
					</li>
				</ul>
			</div>
			<script language="javascript">
				function fnToggle(menu) {
					var obj = document.getElementById(menu);
					if (obj.getAttribute("class") == obj
							.getAttribute("class_normal")) {
						obj.setAttribute("class", obj
								.getAttribute("class_active"));
						$("#" + menu + "_img").attr("src",
								"/nhome/img/icon_minus.png");
					} else {
						obj.setAttribute("class", obj
								.getAttribute("class_normal"));
						$("#" + menu + "_img").attr("src",
								"/nhome/img/icon_plus.png");
					}
				}
			</script>

			<div id="leftside-navigation">

				<ul>
					<li class="l_normal"><a href="#"><span>Brands</span></a>
						<ul class="none">
							<c:forEach var="dto" items="${brandLists}">
								<li><a href="${listUrl}?brandNum=${dto.brandNum}">${dto.brandName }</a></li>
							</c:forEach>
						</ul></li>



				</ul>

			</div>

			<div class="service_b">
				<ul>
					<li><p>
							<a href="https://members.parkland.co.kr/my_parkland/join.asp"
								target="_blank"><img
								src="<%=cp%>/shoppingmall/main/main_files/sr_icon_1.png" alt=""></a>
						</p></li>
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img
								src="<%=cp%>/shoppingmall/main/main_files/sr_icon_2.png" alt=""></a>
						</p></li>
				</ul>
				<ul>
					<!--<li><p><a href="/nhome/styling/event_1011.asp"><img src="/nhome/img/sr_icon03.png" alt="" /></a></p></li>-->
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp"><img
								src="<%=cp%>/shoppingmall/main/main_files/sr_icon_3.png" alt=""></a>
						</p></li>
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=50"><img
								src="<%=cp%>/shoppingmall/main/main_files/sr_icon_4.png" alt=""></a>
						</p></li>
				</ul>

				<ul>
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img
								src="<%=cp%>/shoppingmall/main/main_files/sr_icon_5.png" alt=""></a>
						</p></li>
					<li><p>
							<a
								href="https://eshop.parkland.co.kr:444/nhome/styling/event_1011.asp#p01"><img
								src="<%=cp%>/shoppingmall/main/main_files/sr_icon_6.png" alt=""></a>
						</p></li>
				</ul>
			</div>

			<div class="cscenter">
				<div class="cstitle">Cs center</div>
				<h2>1644-0582</h2>
				<p>
					평일 AM 10:00 ~ PM 18:00<br> 토,일요일/공휴일 휴무
				</p>
			</div>
			<div class="cs_icon">
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp"
					class="roll"><img
						src="<%=cp%>/shoppingmall/main/main_files/cs_icon01.png" alt=""><img
						class="over"
						src="<%=cp%>/shoppingmall/main/main_files/cs_icon01-1.png" alt=""></a></li>
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/customer/formnew.asp"
					class="roll"><img
						src="<%=cp%>/shoppingmall/main/main_files/cs_icon02.png" alt=""><img
						class="over"
						src="<%=cp%>/shoppingmall/main/main_files/cs_icon02-1.png" alt=""></a></li>
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/mypage/mypage.asp"
					class="roll"><img
						src="<%=cp%>/shoppingmall/main/main_files/cs_icon03.png" alt=""><img
						class="over"
						src="<%=cp%>/shoppingmall/main/main_files/cs_icon03-1.png" alt=""></a></li>
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/mypage/myorder.asp"
					class="roll"><img
						src="<%=cp%>/shoppingmall/main/main_files/cs_icon04.png" alt=""><img
						class="over"
						src="<%=cp%>/shoppingmall/main/main_files/cs_icon04-1.png" alt=""></a></li>
			</div>
			<!-- // cscenter -->
		</div>
		<!-- // navi -->

		<!-- contents -->
		<div class="contents">
			<!-- top menu -->
			<div id="dvTopmeu" class="t_util">
				<ul>

					<!-- <li><a href="javascript:gLogin();">로그인</a></li> -->



					<!-- 현우 -->
					<c:choose>
						<c:when test="${empty sessionScope.customInfo.userId }">
							<li><a href="<%=cp%>/shop/join/login.do">로그인</a></li>
						</c:when>

						<c:otherwise>
							<li>${sessionScope.customInfo.userName }님환영합니다</li>
						</c:otherwise>
					</c:choose>
					<!-- href="http://members.parkland.co.kr/my_parkland/join.asp" -->






					<c:choose>
						<c:when test="${empty sessionScope.customInfo.userId }">
							<li><a href="<%=cp%>/shop/join/join.do">회원가입</a></li>
						</c:when>

						<c:otherwise>
							<li><a href="<%=cp%>/shop/join/logout.do">로그아웃 <img
									src="<%=cp%>/shoppingmall/main/main_files/icon_newwin.png"
									alt=""></a></li>
							<li><a href="<%=cp%>/shop/join/update.do">내정보수정</a></li>
						</c:otherwise>
					</c:choose>

					<li><a href="<%=cp%>/shop/login.do">MY 파크랜드</a></li>
					<li><a href="<%=cp%>/shop/cart.do">장바구니(<span
							class="fbold maincolor" id="gTopCartCount">1</span>)
					</a></li>
					<li><a href="<%=cp%>/shop/notice.do">고객센터</a></li>
					<li><a
						href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
					<li>service@parkland.co.kr</li>
					<li class="sns"><a href="https://www.facebook.com/SuitHolic"
						target="_blank"><img
							src="<%=cp%>/shoppingmall/main/main_files/t_fbook.png" alt="페이스북"></a>
						<a href="http://blog.naver.com/parklanding" target="_blank"><img
							src="<%=cp%>/shoppingmall/main/main_files/t_blog.png" alt="블로그"></a>
						<a href="https://www.instagram.com/parklandholic" target="_blank"><img
							src="<%=cp%>/shoppingmall/main/main_files/t_insta.png" alt="블로그"></a>

					</li>
				</ul>
			</div>

			<div class="content_area">





				<script type="text/javascript">
					var _bAce = [];
					function ACEL_TRACKING(mode, ename) {
						var ACEL_img = new Image();
						var ACED_D = 'gtm1.acecounter.com';
						var ACED_H = (location.protocol == 'https:') ? 'https://'
								+ ACED_D + ':5443'
								: 'http://' + ACED_D + ':5656';
						ACEL_img.src = ACED_H
								+ '/EMAM?euid=AS4A41784471665&ename=' + ename
								+ '&fdv=' + mode + '&RID=' + Math.random()
								+ '&';
						if (typeof (Array.prototype.push) != 'undefined') {
							_bAce.push(ACEL_img);
						}
						;
					};
				</script>


				<div class="rolling_wrap">
					<div id="owl-carousel01"
						class="owl-carousel owl-theme owl-loaded owl-drag">



						<div class="brandtop">
					<div id="owl-brand"
						class="owl-carousel owl-theme topmain owl-loaded owl-drag">
						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(-2000px, 0px, 0px); transition: all 0s ease 0s; width: 5000px;">
								<div class="owl-item cloned" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/intro_main2.jpg"
											alt="">
									</div>
								</div>
								<div class="owl-item cloned" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/intro_main2.jpg"
											alt="">
									</div>
								</div>
								<div class="owl-item active" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/intro_main2.jpg"
											alt="">
									</div>
								</div>
								<div class="owl-item cloned" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/intro_main2.jpg"
											alt="">
									</div>
								</div>
								<div class="owl-item cloned" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/intro_main2.jpg"
											alt="">
									</div>
								</div>
							</div>
						</div>
						<div class="owl-nav disabled">
							<div class="owl-prev">prev</div>
							<div class="owl-next">next</div>
						</div>
						<div class="owl-dots disabled">
							<div class="owl-dot active">
								<span></span>
							</div>
						</div>
					</div>
				</div>
						<div class="owl-nav disabled">
							<div class="owl-prev">prev</div>
							<div class="owl-next">next</div>
						</div>
						<div class="owl-dots">
							<div class="owl-dot active">
								<span></span>
							</div>
							<div class="owl-dot">
								<span></span>
							</div>
							<div class="owl-dot">
								<span></span>
							</div>
							<div class="owl-dot">
								<span></span>
							</div>
							<div class="owl-dot">
								<span></span>
							</div>
							<div class="owl-dot">
								<span></span>
							</div>
						</div>
					</div>
					<div class="customNavigation arr-btn">
						<a class="btn customNextBtn01">Previous</a> <a
							class="btn customPrevBtn01">Next</a>
					</div>
				</div>
				<script>
					$(document).ready(function() {
						var owl = $('#owl-carousel01');
						owl.owlCarousel({
							items : 1,
							loop : true,
							//margin: 10,
							//nav:true,
							slideSpeed : 4500,
							autoplay : true,
							autoplayTimeout : 4500,
						// autoplayHoverPause: true,
						});

						// Go to the next item
						$('.customNextBtn01').click(function() {
							owl.trigger('next.owl.carousel');
						})
						// Go to the previous item
						$('.customPrevBtn01').click(function() {
							owl.trigger('prev.owl.carousel', [ 300 ]);
						})
					})
				</script>
				<!-- // main rolling -->

				<!-- 추가 -->
				<link rel="stylesheet"
					href="<%=cp%>/shoppingmall/main/main_files/slick.css">
				<!--slider css -->
				<script src="./main_files/slick.js.다운로드" type="text/javascript"></script>


				<ul style="padding-bottom: 20px;">
					<a
						href="https://eshop.parkland.co.kr:444/nhome/shop/goodsmain.asp?gcId=16&amp;gtype=2"><img
						src="./main_files/2022ss_dressshirts.jpg" alt=""></a>
				</ul>
				<ul style="padding-bottom: 20px;">
					<a
						href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain.asp?eventId=82"><img
						src="./main_files/bigsize.jpg" alt=""></a>
				</ul>

				<ul style="padding-bottom: 20px;">
					<a
						href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=478"><img
						src="./main_files/mensouter.jpg" alt=""></a>
				</ul>
				<ul style="padding-bottom: 20px;">
					<a
						href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=401"><img
						src="./main_files/outlet_banner.jpg" alt=""></a>
				</ul>
				<strong></strong>
				<ul style="padding-bottom: 20px;">
					<a
						href="https://eshop.parkland.co.kr:444/nhome/shop/eventmain2.asp?eventId2=416"><img
						src="./main_files/dressshirts_2021.jpg" alt=""></a>
				</ul>


			</div>



		</div>

	</div>

	<div id="dvNewWrapper" align="center">
		<!-- New Items -->
		<div id="dvNewHeaderWrapper" style="height: 143px;">
			<div id="dvNewHeader"
				style="width: 1000px; z-index: 9999; background-color: #ffffff;">
				<div class="m_tit mt70">
					<p>New Items</p>
				</div>
				<div class="list_choice">
					<!--<li><a href="#"><img src="/nhome/img/list4_on.png" alt=""></a></li>-->
					<li><img src="./main_files/list4_on.png" alt=""
						title="한줄에 3개 혹은 4개상품으로 보기" onsrc="/nhome/img/list4_on.png"
						offsrc="/nhome/img/list4_off.png" id="new-row" data-count="3"
						onclick="fnToggleRowtype(1);" style="cursor: pointer;"></li>
				</div>
				<!--tab -->
				<div class="brand_tab">
					<c:forEach var="dto" items="${lists}">
						<li><a>${dto.brandName }</a></li>
					</c:forEach>
				</div>				<!-- // tab -->
			</div>
		</div>
		<!-- All -->


		<div id="tab1" class="tab_contents" brandid="" type="1" 
			style="display: block;">
			<div class="item03" align="center">
			
				<c:set var="n" value="0" />
				<c:forEach var="dto" items="${lists}">
					<c:if test="${n==0}">
				<ul>
				</c:if>
					<c:if test="${n!=0&&n%3==0 }">
						</ul>
							<ul>				
					</c:if>
					<li>box
						<div class="listbox">
							<div class="thumb_box03">
								<a href="${imagePath}/${dto.saveFileName}"> <img
											src="${imagePath}/${dto.saveFileName}" class="imgListToggle" />
										</a>
							</div>
							<div class="txt_box">
								<a
									href="https://eshop.parkland.co.kr:444/nhome/shop/goodinfo.asp?gdNum=30529&amp;gdCode=JDL22163&amp;brandId=1204">
									<div class="l_brandname">
										<p>${dto.brandName }</p>
									</div>
									
									<div class="l_subj">
										${dto.subject }
									</div>
									<div class="l_price">${dto.price }원</div>
								</a>
							</div>
						</div> // box
					</li>


				<c:set var="n" value="${n+1}" />
				</c:forEach>
			</div>
		</div>
		<!-- // All -->



		<!-- Parkland -->
		<div id="tab2" class="tab_contents" brandid="1219" type="1"
			style="display: none;"></div>

		<div id="tab3" class="tab_contents" brandid="1204" type="1"
			style="display: none;"></div>

		<div id="tab4" class="tab_contents" brandid="1229" type="1"
			style="display: none;"></div>

		<div id="tab6" class="tab_contents" brandid="1203" type="1"
			style="display: none;"></div>

		<div id="tab7" class="tab_contents" brandid="1210" type="1"
			style="display: none;">
			<!-- 위 소스와 동일해서 생략했습니다. -->
		</div>

		<div id="tab9" class="tab_contents" brandid="1222" type="1"
			style="display: none;">
			<!-- 위 소스와 동일해서 생략했습니다. -->
		</div>




		<div class="n_more_btn">
			<a href="https://eshop.parkland.co.kr:444/nhome/#"
				onclick="fnMoveMore();"><span>+</span>더보기</a>
		</div>

	</div>

	<br>
	<br>






	</div>

	<div class="footer_wrap">
		<div class="footer_menu">
			<div class="fmenu">
				<li><a href="http://company.parkland.kr/" target="_blank">회사소개</a></li>
				<li><a href="https://members.parkland.co.kr/info/agreement.asp"
					target="_blank">이용약관</a></li>
				<li><a href="https://members.parkland.co.kr/info/personal.asp"
					target="_blank">개인정보취급방침</a></li>
				<li><a href="https://members.parkland.co.kr/info/email.asp"
					target="_blank">이메일무단수집거부</a></li>
				<!--<li><a href="/nhome/customer/faq.asp">고객센터</a></li>-->
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/customer/faq.asp">FAQ</a></li>
				<li><a
					href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
				<li>service@parkland.co.kr</li>
				<li><a
					href="http://www.ftc.go.kr/www/bizCommView.do?key=232&amp;apv_perm_no=2006335008030200590&amp;pageUnit=10&amp;searchCnd=wrkr_no&amp;searchKrwd=6218105081&amp;pageIndex=1">사업자정보확인</a></li>

			</div>

		</div>
		<div class="footer">
			<div class="f_left">
				<address>
					파크랜드공식인터넷쇼핑몰(주)파크랜드/대표이사:곽국민,박명규/부산광역시 금정구 서2동 219-2번지(우609-722)<br>
					사업자등록번호:621-81-05081/통신판매업신고번호:2006-00590 <br> CS CENTER
					1644-0582 /FAX:051-527-5521
				</address>
				<p>Copyright(c) 2006-2022 파크랜드 온라인공식쇼핑몰 (주)파크랜드 All Rights
					Reserved.</p>
			</div>
			<div class="f_right">
				<ul>
					<li class="fimg"><img
						src="<%=cp%>/shoppingmall/main/main_files/inipay.png" alt=""></li>
					<li>
						<p>
							파크랜드몰은(주)이니시스의<br> 구매안전 에스크로서비스를 제공합니다.
						</p>
						<p>
							<a
								href="https://mark.inicis.com/mark/escrow_popup.php?no=31366&amp;st=1355291431"><img
								src="<%=cp%>/shoppingmall/main/main_files/inipay_btn.png" alt=""></a>
						</p>
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
				<div class="q_cart">
					<a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp"><img
						src="<%=cp%>/shoppingmall/main/main_files/cart.png" alt=""></a>
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

						<ul id="gListRecentView"></ul>

					</div>
				</div>
				<div class="righttop">
					<a href="https://eshop.parkland.co.kr:444/nhome/#"><img
						src="<%=cp%>/shoppingmall/main/main_files/top.png" alt="top"></a>
				</div>
			</div>
			<!-- // quick -->
		</div>
		<!-- //rnavi -->
	</div>

	<div id="wp_tg_cts" style="display: none;">
		<script id="wp_tag_script_1645774219113"
			src="<%=cp%>/shoppingmall/main/main_files/wpc.php"></script>
	</div>
	<script type="text/javascript">
		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push((function() {
			return {
				wp_hcuid : "", /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				 *주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
				ti : "53076", /*광고주 코드 */
				ty : "Home", /*트래킹태그 타입 */
				device : "web" /*디바이스 종류  (web 또는  mobile)*/

			};
		}));
	</script>
	<script type="text/javascript" async=""
		src="<%=cp%>/shoppingmall/main/main_files/wp_astg_4.0.js.다운로드"></script>


	<script type="text/javascript">
		function new_window(theURL, winName, features) { //v3.0
			window.open(theURL, winName, features);
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			getCartCount();
			listRecentView();

	
		});



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
			var loc = "https://eshop.parkland.co.kr:444/nhome/index.asp?";
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


	<script type="text/javascript" src="./main_files/wcslog.js.다운로드"></script>
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



	<script type="text/javascript">
		$(document).ready(function() {

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

		function fnFixHeader() {
			var scrollTop = $(window).scrollTop();
			var topmargin = $("#dvTopmeu").height();

			var dvNewTop = $("#dvNewWrapper").offset().top;
			var dvNewHeight = $("#dvNewWrapper").height();

			var dvBestTop = $("#dvBestWrapper").offset().top;
			var dvBestHeight = $("#dvBestWrapper").height();

			$("#dvNewHeader").css("position", "");
			$("#dvBestHeader").css("position", "");
			console.log("scrollTop", scrollTop);
			console.log("dvNewTop-topmargin-50", (dvNewTop - topmargin - 50));
			console.log("(dvNewTop + dvNewHeight-topmargin-500)", (dvNewTop
					+ dvNewHeight - topmargin - 500));
			console.log("dvNewTop", dvNewTop);
			console.log("dvNewHeight", dvNewHeight);
			console.log("topmargin", topmargin);
			if (scrollTop >= (dvNewTop - topmargin - 50)
					&& scrollTop < (dvNewTop + dvNewHeight - topmargin - 500)) {
				console.log("dvnew fixed");
				$("#dvNewHeader").css("position", "fixed");
				$("#dvNewHeader").css("top", "85px");
			} else if (scrollTop >= (dvBestTop - topmargin - 50)
					&& scrollTop < (dvBestTop + dvBestHeight - topmargin)) {
				console.log("dvbest fixed");
				$("#dvNewHeader").css("position", "");
				$("#dvBestHeader").css("position", "fixed");
				$("#dvBestHeader").css("top", "85px");

			} else {
				$("#dvNewHeader").css("position", "");
				$("#dvBestHeader").css("position", "");
			}

		}

		function fnToggleRowtype(ntype) {
			var o;
			if (ntype == 1) {
				o = $("#new-row");
			} else if (ntype == 3) {
				o = $("#best-row2");
			} else if (ntype == 4) {
				o = $("#Qbest-row2");
			} else {
				o = $("#best-row");
			}

			if (o.attr("src") == o.attr("onsrc")) {
				o.attr("data-count", "3");
				o.attr("src", o.attr("offsrc"));
			} else {
				o.attr("data-count", "4");
				o.attr("src", o.attr("onsrc"));
			}

			if (ntype == 1) {
				loadList($("#dvNew").attr("cur-tab"));
			} else if (ntype == 3) {
				loadList($("#dvBest2").attr("cur-tab"));
			} else if (ntype == 4) {
				loadList($("#QdvBest2").attr("cur-tab"));
			} else {
				loadList($("#dvBest").attr("cur-tab"));
			}
		}

		function fnMouseover(o) {
			controlListImages();
		}

		function loadList(tabid) {
			if (parseInt($(tabid).attr("type")) == 1) {
				loadNewList(tabid);
			} else if (parseInt($(tabid).attr("type")) == 3) {
				loadBestList3(tabid);
			} else if (parseInt($(tabid).attr("type")) == 4) {
				QloadBestList3(tabid);
			} else {
				loadBestList(tabid);
			}

		}

		function showList(o, ret) {
			eval("var adata = " + ret);
			o.html(adata.data);
		}

		function loadNewList(tabid) {
			$("#dvNew").attr("cur-tab", tabid);
			var o = $(tabid);
			var count = $("#new-row").attr("data-count");

			loaddata("cmd=GETNEWLIST&nCount=" + count + "&brandId="
					+ o.attr("brandId"), "/nhome/if/ifgoods.asp",
					function(data) {
						showList(o, data);
					});
		}

		function loadBestList(tabid) {
			$("#dvBest").attr("cur-tab", tabid);
			var o = $(tabid);
			var count = $("#best-row").attr("data-count");
			loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId="
					+ o.attr("brandId"), "/nhome/if/ifgoods.asp",
					function(data) {
						showList(o, data);
					});
		}
		function loadBestList3(tabid) {
			$("#dvBest2").attr("cur-tab", tabid);
			var o = $(tabid);
			var count = $("#best-row2").attr("data-count");
			loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId="
					+ o.attr("brandId"), "/nhome/if/ifgoods.asp",
					function(data) {
						showList(o, data);
					});
		}
		function QloadBestList3(tabid) {
			$("#QdvBest2").attr("cur-tab", tabid);
			var o = $(tabid);
			var count = $("#Qbest-row2").attr("data-count");
			loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId="
					+ o.attr("brandId"), "/nhome/if/ifgoods.asp",
					function(data) {
						showList(o, data);
					});
		}
		function loadBestList_neo(tabid, cnt) {
			$("#dvBest").attr("cur-tab", tabid);
			var o = $(tabid);
			var count = $("#best-row").attr("data-count");
			loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId="
					+ o.attr("brandId") + "&nCount2=" + cnt,
					"/nhome/if/ifgoods.asp", function(data) {
						showList(o, data);
					});
		}
		function loadBestList_neo2(tabid, cnt) {
			$("#dvBest2").attr("cur-tab", tabid);
			var o = $(tabid);
			var count = $("#best-row2").attr("data-count");
			loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId="
					+ o.attr("brandId") + "&nCount2=" + cnt,
					"/nhome/if/ifgoods.asp", function(data) {
						showList(o, data);
					});
		}
		function QloadBestList_neo2(tabid, cnt) {
			$("#QdvBest2").attr("cur-tab", tabid);
			var o = $(tabid);
			var count = $("#Qbest-row2").attr("data-count");
			loaddata("cmd=GETBESTLIST&nCount=" + count + "&brandId="
					+ o.attr("brandId") + "&nCount2=" + cnt,
					"/nhome/if/ifgoods.asp", function(data) {
						showList(o, data);
					});
		}
		function controlTabs() {
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

		function fnMoveMore() {
			var o = $($("#dvNew").attr("cur-tab"));
			if (o.attr("brandId") == "") {
				document.location.href = "http://eshop.parkland.co.kr/nhome/shop/goodsmain.asp?gcId=2&gtype=2";
			} else {
				document.location.href = "/nhome/shop/brandmain.asp?brandId="
						+ o.attr("brandId");
			}
		}
	</script>
	<!--//include virtual="/new_admin/auto.asp"//-->
</body>
</html>