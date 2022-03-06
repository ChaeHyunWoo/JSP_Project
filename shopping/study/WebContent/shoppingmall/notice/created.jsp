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
<title>헬로네이처</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=1300">
<meta name="facebook-domain-verification"
	content="ljsthv428khej1ow7p3b9ffy8q67i5">
<meta name="facebook-domain-verification"
	content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/notice/notice_files/reset.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/notice/notice_files/style.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/notice/notice_files/owl.carousel.min.css">
<!-- main slider css -->
<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
<!-- main slider css -->
<script async=""
	src="<%=cp%>/shoppingmall/notice/notice_files/analytics.js.다운로드"></script>
<script
	src="<%=cp%>/shoppingmall/notice/notice_files/AceCounter_AW.js.다운로드"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/notice/notice_files/analytics.js.다운로드"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/notice/notice_files/js"></script>
<script type="text/javascript" async=""
	src="<%=cp%>/shoppingmall/notice/notice_files/analytics.js.다운로드"></script>
<script src="<%=cp%>/shoppingmall/notice/notice_files/462724525419327"
	async=""></script>
<script async=""
	src="<%=cp%>/shoppingmall/notice/notice_files/fbevents.js.다운로드"></script>
<script
	src="<%=cp%>/shoppingmall/notice/notice_files/jquery-1.11.3.min.js.다운로드"></script>
<script type="text/javascript"
	src="<%=cp%>/shoppingmall/notice/notice_files/owl.carousel.js.다운로드"></script>
<!-- main slider js -->
<script src="<%=cp%>/shoppingmall/notice/notice_files/default.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>
<script src="<%=cp%>/shoppingmall/notice/notice_files/common.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/notice/notice_files/odesign.css">
<script src="<%=cp%>/shoppingmall/notice/notice_files/global.js.다운로드"
	type="text/javascript" charset="euc-kr"></script>

<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
<script async="" src="<%=cp%>/shoppingmall/notice/notice_files/js(1)"></script>
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


				<div class="s_location">
					<a href="https://eshop.parkland.co.kr:444/"><img
						src="<%=cp%>/shoppingmall/notice/notice_files/icon_home.png"
						border="0"></a><img
						src="<%=cp%>/shoppingmall/notice/notice_files/icon_larr.png"
						border="0">Customer Center<img
						src="<%=cp%>/shoppingmall/notice/notice_files/icon_larr.png"
						border="0">공지사항
				</div>
				<div class="cline"></div>
				<div class="c_title">
					<p>1:1문의</p>
				</div>
				<div class="tab_type3 mb40">
					<li class="active"><a
						href="http://eshop.parkland.co.kr/nhome/customer/notice.asp">공지사항</a></li>
					<li><a
						href="http://eshop.parkland.co.kr/nhome/customer/faq.asp">FAQ</a></li>
					<li><a href="<%=cp%>/shop/list.do">1:1문의</a></li>
					<li><a
						href="http://eshop.parkland.co.kr/nhome/mypage/mypage.asp">주문배송조회</a></li>
					<li><a
						href="http://eshop.parkland.co.kr/nhome/mypage/myorder.asp">반품/교환/취소접수</a></li>
					<li><a href="http://www.parkland.co.kr/store/guidance.asp"
						target="_blank">매장검색</a></li>

					<li><a
						href="https://members.parkland.co.kr/my_parkland/mobile_members_join.asp"
						target="_blank">신규 멤버스 카드 발급</a></li>

				</div>

				<link rel="stylesheet" type="text/css"
					href="<%=cp%>/shoppingmall/notice/css/style.css" />
				<link rel="stylesheet" type="text/css"
					href="<%=cp%>/shoppingmall/notice/css/created.css" />

				<script type="text/javascript" src="<%=cp%>/notice/js/util.js"></script>
				<script type="text/javascript">




	function sendIt(){
		
		var f = document.myForm;
		
		str = f.subject.value;
		str = str.trim();
		if(!str){
			alert("\n제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		f.subject.value = str;
		
		str = f.name.value;
		str = str.trim();
		if(!str){
			alert("\n이름을 입력하세요.");
			f.name.focus();
			return;
		}
		f.name.value = str;
		
		/* if(!isValidKorean(str)) {
			alert("\n이름을 정확히 입력하세요.");
			f.name.focus();
			return;
		} */
		f.name.value = str;
		
		/* if(f.email.value){  //이메일의 value값을 가져와라 
			if(!isValidEmail(f.email.value)){
				alert("\n정상적인 E-mail을 입력하세요.");
				f.email.focus();
				return;
			}
			
		} */
		
		str = f.content.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.content.focus();
			return;
		}
		f.content.value = str;
		
		str = f.pwd.value;
		str = str.trim();
		if(!str){
			alert("\n패스워드를 입력하세요.");
			f.pwd.focus();
			return;
		}
		f.pwd.value = str;
		
		f.action = "<%=cp%>
					/shop/notice/created_ok.do";
						f.submit();
					}
				</script>
				<!-- 이부분에 프로그램 넣어주세요 -->


				<!-- 여기부터 게시판 등록 작성 -->
				<body>

					<div id="bbs">
						<div id="bbs_title">게 시 판 (Servlet)</div>

						<form action="" method="post" name="myForm">
							<div id="bbsCreated">

								<div class="bbsCreated_bottomLine">
									<dl>
										<dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
										<dd>
											<input type="text" name="subject" size="60" maxlength="100"
												class="boxTF" />
										</dd>
									</dl>
								</div>

								<div class="bbsCreated_bottomLine">
									<dl>
										<dt>작 성 자</dt>
										<dd>
											<input type="text" name="name" size="35" maxlength="20"
												class="boxTF" value="${sessionScope.customInfo.userName }" />
										</dd>
									</dl>
								</div>

								<div class="bbsCreated_bottomLine">
									<dl>
										<dt>E-mail</dt>
										<dd>
											<input type="text" name="email" size="35" maxlength="50"
												class="boxTF" />
										</dd>
									</dl>
								</div>

								<div id="bbsCreated_content">
									<dl>
										<dt>내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
										<dd>
											<textarea rows="12" cols="63" name="content" class="boxTA"></textarea>
										</dd>
									</dl>
								</div>

								<div class="bbsCreated_noLine">
									<dl>
										<dt>패스워드</dt>
										<dd>
											<input type="password" name="pwd" size="35" maxlength="7"
												class="boxTF" /> &nbsp;(게시물 수정 및 삭제시 필요!!)
										</dd>
									</dl>
								</div>

							</div>

							<div id="bbsCreated_footer">
								<input type="button" value=" 등록하기 " class="btn2"
									onclick="sendIt();" /> <input type="reset" value=" 다시입력 "
									class="btn2" onclick="document.myForm.subject.focus();" /> <input
									type="button" value="작성취소" class="btn2"
									onclick="javascript:location.href='<%=cp%>/shop/notice/notice.do';" />
							</div>

						</form>

					</div>

				</body>


				<!-- <table class="tb_type1">
	        <colgroup>
	            <col width="80">
	            <col width="*">
	            <col width="100">
	            <col width="90">
	        </colgroup>
	        <thead>
	            <tr class="cus_notice_list">
	                <th>번호</th>
	                <th>제목</th>
	                <th>등록일</th>
	                <th>조회수</th>
	            </tr>
	        </thead>
	        <tbody>
			
                <tr>
                    <td>27</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=36&amp;page=1">[행사안내]탄생 33주년 쇼핑지원금 이벤트</a> </p></td>
                    <td>2021-12-02</td>
                    <td>2108</td>
                </tr>
 			
                <tr>
                    <td>26</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=35&amp;page=1">[파크랜드 쇼핑몰 공지] 서버 안내</a> </p></td>
                    <td>2021-10-13</td>
                    <td>131</td>
                </tr>
 			
                <tr>
                    <td>25</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=34&amp;page=1">[행사안내]10일간, 최대 3만원 추가할인</a> </p></td>
                    <td>2021-04-09</td>
                    <td>357</td>
                </tr>
 			
                <tr>
                    <td>24</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=33&amp;page=1">[배송안내] 2020년 추석연휴간  배송일정 안내</a> </p></td>
                    <td>2020-09-25</td>
                    <td>281</td>
                </tr>
 			
                <tr>
                    <td>23</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=32&amp;page=1">[행사안내] 파크랜드 코로나 극복 경품 이벤트</a> </p></td>
                    <td>2020-04-28</td>
                    <td>1735</td>
                </tr>
 			
                <tr>
                    <td>22</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=30&amp;page=1">** 쇼핑몰 서버 점검 안내 **</a> </p></td>
                    <td>2019-10-24</td>
                    <td>559</td>
                </tr>
 			
                <tr>
                    <td>21</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=29&amp;page=1">[행사안내] 20만원 이상 구매 고객분들께 쿨링백 증정!!</a> </p></td>
                    <td>2019-06-28</td>
                    <td>793</td>
                </tr>
 			
                <tr>
                    <td>20</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=28&amp;page=1">[행사안내] 파크랜드 3관왕 석권 고객 감사 할인</a> </p></td>
                    <td>2019-05-03</td>
                    <td>715</td>
                </tr>
 			
                <tr>
                    <td>19</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=26&amp;page=1">[행사안내] Spring SALE 10% 추가할인</a> </p></td>
                    <td>2019-02-28</td>
                    <td>932</td>
                </tr>
 			
                <tr>
                    <td>18</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=25&amp;page=1">[행사안내] 파크랜드 설맞이 특별 이벤트</a> </p></td>
                    <td>2019-01-25</td>
                    <td>820</td>
                </tr>
 			
                <tr>
                    <td>17</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=24&amp;page=1">[행사안내]18FW 신상품 추가 10% 할인행사</a> </p></td>
                    <td>2018-12-05</td>
                    <td>651</td>
                </tr>
 			
                <tr>
                    <td>16</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=23&amp;page=1">  [행사안내]FW 이월상품 추가할인행사</a> </p></td>
                    <td>2018-11-23</td>
                    <td>1914</td>
                </tr>
 			
                <tr>
                    <td>15</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=22&amp;page=1">[행사안내]겨울 신상품 추가할인행사</a> </p></td>
                    <td>2018-11-23</td>
                    <td>678</td>
                </tr>
 			
                <tr>
                    <td>14</td>
                    <td><p><a href="https://eshop.parkland.co.kr:444/nhome/customer/view.asp?idx=21&amp;page=1">[행사안내] 파크랜드 탄생 30주년 감사 페스티벌 </a> </p></td>
                    <td>2018-11-07</td>
                    <td>1374</td>
                </tr>
 			
            </tbody>
        </table> -->
				<br>
				<!--  <div class="page" style="text-align:center;">
		◀ <strong>[1]</strong> <a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp?board=&amp;page=2">2</a>&nbsp; <a href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp?board=&amp;page=2">▶</a>         
		</div>	 -->
				<!--// 20150428 -->

				<%-- 	<table class="tb_type1"> 에라모르겠다
	        <colgroup>
	            <col width="80">
	            <col width="80">
	            <col width="244">
	            <col width="83">
	            <col width="*">
	        </colgroup>
	        <tr>
	        	<td>문의구분</td>
	        	<td colspan="3">...</td> --%>

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
							src="<%=cp%>/shoppingmall/notice/notice_files/cart.png" alt=""></a>
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
							href="https://eshop.parkland.co.kr:444/nhome/customer/notice.asp#"><img
							src="<%=cp%>/shoppingmall/notice/notice_files/top.png" alt="top"></a>
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
		<script id="wp_tag_script_1645774839235"
			src="<%=cp%>/shoppingmall/notice/notice_files/wpc.php"></script>
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
		src="<%=cp%>/shoppingmall/notice/notice_files/wp_astg_4.0.js.다운로드"></script>
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
			var loc = "https://eshop.parkland.co.kr:444/nhome/customer/notice.asp?";
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
		src="<%=cp%>/shoppingmall/notice/notice_files/wcslog.js.다운로드"></script>
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
		function MM_swapImgRestore() { //v3.0
			var i, x, a = document.MM_sr;
			for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++)
				x.src = x.oSrc;
		}

		function MM_preloadImages() { //v3.0
			var d = document;
			if (d.images) {
				if (!d.MM_p)
					d.MM_p = new Array();
				var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
				for (i = 0; i < a.length; i++)
					if (a[i].indexOf("#") != 0) {
						d.MM_p[j] = new Image;
						d.MM_p[j++].src = a[i];
					}
			}
		}

		function MM_findObj(n, d) { //v4.0
			var p, i, x;
			if (!d)
				d = document;
			if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
				d = parent.frames[n.substring(p + 1)].document;
				n = n.substring(0, p);
			}
			if (!(x = d[n]) && d.all)
				x = d.all[n];
			for (i = 0; !x && i < d.forms.length; i++)
				x = d.forms[i][n];
			for (i = 0; !x && d.layers && i < d.layers.length; i++)
				x = MM_findObj(n, d.layers[i].document);
			if (!x && document.getElementById)
				x = document.getElementById(n);
			return x;
		}

		function MM_swapImage() { //v3.0
			var i, j = 0, x, a = MM_swapImage.arguments;
			document.MM_sr = new Array;
			for (i = 0; i < (a.length - 2); i += 3)
				if ((x = MM_findObj(a[i])) != null) {
					document.MM_sr[j++] = x;
					if (!x.oSrc)
						x.oSrc = x.src;
					x.src = a[i + 2];
				}
		}
	</script>
	<script type="text/JavaScript">
	function explorer( url, width, height )
	{
		window.open( url,"browser","width="+width+",height="+height+",top=10,left=10,scrollbars=yes,status=no");
	}
</script>
</body>
</html>