<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
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
	href="<%=cp%>/shoppingmall/category/category_files/reset.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/category/category_files/style.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/category/category_files/owl.carousel.min.css">
<script async=""
	src="<%=cp%>/shoppingmall/category/category_files/analytics.js"></script>
<script
	src="<%=cp%>/shoppingmall/category/category_files/AceCounter_AW.js"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/category/category_files/analytics.js"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/category/category_files/js"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/category/category_files/analytics.js"></script>
<script async=""
	src="<%=cp%>/shoppingmall/category/category_files/fbevents.js"></script>
<script
	src="<%=cp%>/shoppingmall/category/category_files/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="<%=cp%>/shoppingmall/category/category_files/owl.carousel.js"></script>
<!-- main slider js -->
<script src="<%=cp%>/shoppingmall/category/category_files/default.js"
	type="text/javascript" charset="euc-kr"></script>
<script src="<%=cp%>/shoppingmall/category/category_files/common.js"
	type="text/javascript" charset="euc-kr"></script>

<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/category/category_files/odesign.css">
<script src="<%=cp%>/shoppingmall/category/category_files/global.js"
	type="text/javascript" charset="euc-kr"></script>

<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
<script async=""
	src="<%=cp%>/shoppingmall/category/category_files/js(1)"></script>

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
			<!-- content_area -->
			<div class="content_area">
				<!-- brandtop -->
				<div class="brandtop">
					<div id="owl-brand"
						class="owl-carousel owl-theme topmain owl-loaded owl-drag">
						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(-2000px, 0px, 0px); transition: all 0s ease 0s; width: 5000px;">
								<div class="owl-item active" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/20200722160111239.jpg"
											alt="">
									</div>
								</div>
								<div class="owl-item cloned" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/safa.jpg"
											alt="">
									</div>
								</div>
								<div class="owl-item active" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/safa.jpg"
											alt="">
									</div>
								</div>
								<div class="owl-item cloned" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/safa.jpg"
											alt="">
									</div>
								</div>
								<div class="owl-item cloned" style="width: 1000px;">
									<div class="item">
										<img
											src="<%=cp%>/shoppingmall/category/category_files/safa.jpg"
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
				<!-- // brandtop -->
				<!-- s_location -->
				<div class="s_location">
					<a href="<%=cp%>/shop/main/main.do"><img
						src="<%=cp%>/shoppingmall/category/category_files/icon_home_g.png"
						border="0"></a><img
						src="<%=cp%>/shoppingmall/category/category_files/icon_larr.png"
						border="0">
					<c:if test="${null eq ALL}">
						<a
							href="<%=cp%>/shop/category/category.do?brandNum=${lists[0].brandNum}">${lists[0].brandName}</a>
					</c:if>
					<c:if test="${null ne ALL}">
						<a href="<%=cp%>/shop/category/category.do">ALL</a>
					</c:if>
				</div>
				<!-- // s_location -->
				<!-- brand_tit -->
				<div class="brand_tit">
					<p>
						<c:if test="${null eq ALL}">
							<a
								href="<%=cp%>/shop/category/category.do?brandNum=${lists[0].brandNum}">${lists[0].brandName}</a>
						</c:if>
						<c:if test="${null ne ALL}">
							<a href="<%=cp%>/shop/category/category.do">ALL</a>
						</c:if>
						<span>${dataCount} items</span>
					</p>
				</div>
				<!-- // brand_tit -->
				<!-- brand_tab -->
				<div class="brand_tab">
					<c:forEach var="tl" items="${typeLists}">
						<c:set var="flag" value="false" />
						<c:forEach var="l" items="${lists}">
							<c:if test="${flag==false}">
								<c:if test="${tl.typeName==l.typeName}">
									<c:if test="${null eq ALL}">
										<li><a
											href="<%=cp%>/shop/category/category.do?brandNum=${l.brandNum}&typeNum=${l.typeNum}">${l.typeName }</a></li>
									</c:if>
									<c:if test="${null ne ALL}">
										<li><a
											href="<%=cp%>/shop/category/category.do?typeNum=${l.typeNum}">${l.typeName }</a></li>
									</c:if>
									<c:set var="flag" value="true" />
								</c:if>
							</c:if>
						</c:forEach>
					</c:forEach>
				</div>
				<!-- brand_tab -->
				<!-- mdbox -->
				<div class="mdbox">
					<div>
						<script>
							$(document).ready(function() {
								var owl = $('#owl-carousel02');
								owl.owlCarousel({
									items : 6,
									loop : true,
									//margin: 10,
									nav : true,
									//center:true,
									slideSpeed : 700,
									autoplay : true,
									autoplayTimeout : 3000,
									autoplayHoverPause : true,
								});

								// Go to the next item
								$('.customNextBtn02').click(function() {
									owl.trigger('next.owl.carousel');
									owl.trigger('next.owl.carousel');
									owl.trigger('next.owl.carousel');
									owl.trigger('next.owl.carousel');
									owl.trigger('next.owl.carousel');
									owl.trigger('next.owl.carousel');
								})
								// Go to the previous item
								$('.customPrevBtn02').click(function() {
									owl.trigger('prev.owl.carousel', [ 300 ]);
									owl.trigger('prev.owl.carousel', [ 300 ]);
									owl.trigger('prev.owl.carousel', [ 300 ]);
									owl.trigger('prev.owl.carousel', [ 300 ]);
									owl.trigger('prev.owl.carousel', [ 300 ]);
									owl.trigger('prev.owl.carousel', [ 300 ]);
								})
							})
						</script>
					</div>
					<!-- owl-carousel02 -->
					<div id="owl-carousel02"
						class="owl-carousel owl-theme owl-loaded owl-drag">
						<c:forEach var="dto" items="${lists}">
							<div class="item" style="line-height: 100%;">
								<a href="${imagePath}/${dto.saveFileName}"> <img
									src="${imagePath}/${dto.saveFileName}" class="imgListToggle"
									style="vertical-align: middle;">
								</a>
							</div>
						</c:forEach>
					</div>
					<!-- // owl-carousel02 -->
					<!-- customNavigation -->
					<div class="customNavigation arr-btn02">
						<a class="btn customPrevBtn02"> Previous</a> <a
							class="btn customNextBtn02"> Next</a>
					</div>
					<!-- // customNavigation -->
				</div>
				<!-- // mdbox -->
				<!-- list_newbox -->
				<div class="list_nbox">
					<div>
						<script language="javascript">
							$(document).ready(function() {
								controlListImages();
							});

							var nPage, nPagesize, nSort, nRowcount, brandCatId, sizeCode, eventCatId;
							nPage = "1";
							nPagesize = "40";
							nSort = "1";
							nRowcount = "4";
							brandCatId = "";
							sizeCode = "";
							eventCatId = "";

							function fnMove(nType, sValue, pPage) {

								if (nType == 1) {
									nPage = sValue;
								} else if (nType == 2) {
									nPagesize = sValue;
								} else if (nType == 3) {
									nSort = sValue;
									nPage = pPage;
								} else if (nType == 4) {
									nRowcount = sValue;
								} else if (nType == 5) {
									brandCatId = sValue;
									nPage = pPage;
								} else if (nType == 6) {
									sizeCode = sValue;
									nPage = pPage;
								} else if (nType == 7) {
									eventCatId = sValue;
									nPage = pPage;
								}

								document.location.href = "/nhome/shop/brandmain.asp?brandId=1219&gcId=&evgub=&gType=&brandCatId="
										+ brandCatId
										+ "&eventId=&eventId2=&nPagesize="
										+ nPagesize
										+ "&nSort="
										+ nSort
										+ "&nPage="
										+ nPage
										+ "&nRowcount="
										+ nRowcount
										+ "&sizeCode="
										+ sizeCode
										+ "&eventCatId=" + eventCatId;
							}

							function fnMovePage(nPage) {
								//fnMove(nPage, 40, 1, 4, "");
								fnMove(1, nPage, "");
							}

							function fnChangeSort(nSort) {
								//fnMove(1, 40, nSort, 4, "");
								fnMove(3, nSort, 1);
							}

							function fnChangePagesize(nPagesize) {
								//fnMove(1, nPagesize, 1, 4, "");
								fnMove(2, nPagesize, "");
							}

							function fnChangeRowcount(nRowcount) {
								//fnMove(1, 40, 1, nRowcount, "");
								fnMove(4, nRowcount, "");
							}

							function fnChangeSortOrder(o) {
								if (o.value == "4") {
									//fnMove(1, 80, 1, 4, "");
									fnMove(2, "80", "");
								}
							}

							function fnChangeSubCat(brandCatId) {
								//fnMove(1, 40, 1,  4,  brandCatId);
								fnMove(5, brandCatId, 1);
							}

							function fnChangeSize(sizeCode) {
								fnMove(6, sizeCode, 1);
							}

							function fnChangeSubCatevent2(eventCatId) {
								//fnMove(1, 40, 1,  4,  brandCatId);
								sizeCode = "";
								fnMove(7, eventCatId, 1);
							}
						</script>
					</div>
					<!-- tab_wrap -->
					<div class="tab_wrap">
						<div class="tab_type_n">
							<li class="active"><a
								href="<%=cp%>/shop/category/category.do?sort=new">신상품순</a></li>
							<li><a href="">인기상품순</a></li>
							<li><a href="<%=cp%>/shop/category/category.do?sort=low">낮은가격순</a></li>
							<li><a href="<%=cp%>/shop/category/category.do?sort=top">높은가격순</a></li>
						</div>
					</div>
					<!-- // tab_wrap -->
					<!-- select_custom_list -->
					<div class="select_custom_list">
						<div class="select_box">
							<label for="정렬선택">정렬선택</label> <select name="" id="color"
								title="정렬선택" onchange="fnChangeSortOrder(this);">
								<option value="4">20줄보기</option>
							</select>
						</div>
					</div>
					<!-- // select_custom_list -->
					<!-- select_list -->
					<div class="select_list">
						<div class="list_choice">
							<li><a href="#"><img
									src="<%=cp%>/shoppingmall/category/category_files/list4_on.png"
									alt=""></a></li>
						</div>
					</div>
					<!-- // select_list -->
				</div>
				<!-- // list_newbox -->
				<!-- item04 -->
				<div class="item04">
					<c:set var="n" value="0" />
					<c:forEach var="dto" items="${lists}">
						<c:if test="${n==0}">
							<ul>
						</c:if>
						<c:if test="${n!=0&&n%4==0 }">
							</ul>
							<ul>
						</c:if>
						<li>
							<div class="listbox">
								<a>
									<div class="thumb_box04">
										<a href="${detailUrl}?num=${dto.num}&pageNum=${pageNum}">
											<img src="${imagePath}/${dto.saveFileName}"
											class="imgListToggle" />
										</a>
									</div>
									<div class="txt_box">
										<div class="l_brandname">${dto.brandName }</div>
										<div class="l_brandcode"></div>
										<div class="l_subj">${dto.subject }</div>
										<div class="l_price">${dto.price }</div>
									</div>
								</a>
							</div>
						</li>
						<c:set var="n" value="${n+1}" />
					</c:forEach>
				</div>
				<!-- // item04 -->
				<!-- paging -->
				<div class="paging">
					<c:if test="${dataCount != 0}">
						<div align="center" height="30">${pageIndexList}</div>
					</c:if>
					<c:if test="${dataCount == 0}">
						<br />
						<div align="center" height="30">등록된 자료가 없습니다.</div>
					</c:if>
				</div>
				<!-- // paging -->
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
			<!-- rightquick_area -->
			<div class="rightquick_area">
				<div class="rightquick">
					<div class="q_cart">
						<a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp"><img
							src="<%=cp%>/shoppingmall/category/category_files/cart.png"
							alt=""></a>
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
							href="https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1219#"><img
							src="<%=cp%>/shoppingmall/category/category_files/top.png"
							alt="top"></a>
					</div>
				</div>
			</div>
			<!-- // rightquick_area -->
		</div>
		<!-- //rnavi -->
	</div>
	<!-- // container -->
	<!-- script -->
	<div>
		<!-- WIDERPLANET  SCRIPT START 2021.12.1 -->
		<div id="wp_tg_cts" style="display: none;">
			<script id="wp_tag_script_1645841314342"
				src="<%=cp%>/shoppingmall/category/category_files/wpc.php"></script>
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
			src="<%=cp%>/shoppingmall/category/category_files/wp_astg_4.0.js"></script>
		<!-- // WIDERPLANET  SCRIPT END 2021.12.1 -->
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
				getGoodsInfo("cmd=LISTRECENTVIEWED", listRecentView_proc,
						"/nhome");
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
				} else if ((window.sidebar && (navigator.userAgent
						.toLowerCase().indexOf('firefox') > -1))
						|| (window.opera && window.print)) {
					// Firefox version >= 23 and Opera Hotlist
					var $this = $(this);
					$this.attr('href', bookmarkURL);
					$this.attr('title', bookmarkTitle);
					$this.attr('rel', 'sidebar');
				} else if (window.external
						&& ('AddFavorite' in window.external)) {
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
				var loc = "https://eshop.parkland.co.kr:444/nhome/shop/brandmain.asp?brandId=1219";
				location.href = "https://eshop.parkland.co.kr:444/nhome/member/member_login.asp?retURL="
						+ encodeURIComponent(loc);
			}
		</script>
		<!-- AceCounter Log Gathering Script V.8.0.AMZ2019080601 -->
		<script language="javascript">
			var _AceGID = (function() {
				var Inf = [ 'gtc6.acecounter.com', '8080', 'AS4A41784471665',
						'AW', '0', 'NaPm,Ncisy', 'ALL', '0' ];
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
					_sc.src = 'https:' + '//cr.acecounter.com/Web/AceCounter_'
							+ _C + '.js?gc=' + _A[2] + '&py=' + _A[4] + '&gd='
							+ _G + '&gp=' + _A[1] + '&up=' + _U + '&rd='
							+ (new Date().getTime());
					_sm.parentNode.insertBefore(_sc, _sm);
					return _sc.src;
				}
			})();
		</script>
		<!-- AceCounter Log Gathering Script End -->
		<script type="text/javascript"
			src="<%=cp%>/shoppingmall/category/category_files/wcslog.js"></script>
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
		<script type="text/javascript">
			var _bAce = [];
			function ACEL_TRACKING(mode, ename) {
				var ACEL_img = new Image();
				var ACED_D = 'gtm1.acecounter.com';
				var ACED_H = (location.protocol == 'https:') ? 'https://'
						+ ACED_D + ':5443' : 'http://' + ACED_D + ':5757';
				ACEL_img.src = ACED_H + '/EMAM?euid=AS4A41784471665&ename='
						+ ename + '&fdv=' + mode + '&RID=' + Math.random()
						+ '&';
				if (typeof (Array.prototype.push) != 'undefined') {
					_bAce.push(ACEL_img);
				}
				;
			};
		</script>
	</div>
	<!-- // script -->
</body>
</html>