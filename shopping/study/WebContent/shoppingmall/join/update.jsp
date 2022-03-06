<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("UTF-8");

String cp = request.getContextPath(); //cp는 ContextPath의 약자
%>
<!DOCTYPE html>
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>헬로네이처</title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=1300">
	<meta name="facebook-domain-verification" content="ljsthv428khej1ow7p3b9ffy8q67i5">
    <meta name="facebook-domain-verification" content="nmgreo7cfvx7q1b1fb03sslnypf0q1">
	<link rel="stylesheet" type="text/css" href="<%=cp %>/shoppingmall/join/modifyUserInfo_files/reset.css" media="all">
	<link rel="stylesheet" type="text/css" href="<%=cp %>/shoppingmall/join/modifyUserInfo_files/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="<%=cp %>/shoppingmall/join/modifyUserInfo_files/owl.carousel.min.css">
	<!-- main slider css -->
	<!--link rel="stylesheet" type="text/css" href="/nhome/css/owl.theme.default.min.css"-->
	<!-- main slider css -->
	<script type="text/javascript" async="" src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/analytics.js.다운로드"></script><script async="" src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/analytics.js.다운로드"></script><script src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/AceCounter_AW.js.다운로드"></script><script type="text/javascript" async="" src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/js"></script><script type="text/javascript" async="" src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/analytics.js.다운로드"></script><script src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/462724525419327" async=""></script><script async="" src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/fbevents.js.다운로드"></script><script src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/jquery-1.11.3.min.js.다운로드"></script>
	<script type="text/javascript" src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/owl.carousel.js.다운로드"></script><!-- main slider js -->
	<script src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/default.js.다운로드" type="text/javascript" charset="euc-kr"></script>
	<script src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/common.js.다운로드" type="text/javascript" charset="euc-kr"></script>

	<link rel="stylesheet" type="text/css" href="<%=cp %>/shoppingmall/join/modifyUserInfo_files/odesign.css">
	<script src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/global.js.다운로드" type="text/javascript" charset="euc-kr"></script>

	<!-- Global site tag (gtag.js) - Google Analytics ipcom 190820 -->
	<script async="" src="./modifyUserInfo_files/js(1)"></script>
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
<body class="body">

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
			<div class="mlogo">
				<a href="<%=cp%>/shop/main/main.do"><img
					src="<%=cp%>/shoppingmall/main/main_files/logo2.JPG"
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
				<h2>1644-0582</h2>
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
		    <!-- // navi -->

			<!-- contents -->
	    	<div class="contents">
	      		<!-- top menu -->
	      		<div id="dvTopmeu" class="t_util">
			      <ul>
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
							<%-- <li><a href="<%=cp%>/shop/join/update.do">내정보수정</a></li> --%>
						</c:otherwise>
					</c:choose>
			       <li><a href="<%=cp%>/shop/product/productSave.do">HELLO Nature</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp">장바구니(<span class="fbold maincolor" id="gTopCartCount">0</span>)</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/customer/faq.asp">고객센터</a></li>
			        <li><a href="https://eshop.parkland.co.kr:444/nhome/sitemap/sitemap.asp">Sitemap</a></li>
					<!--li><a href="http://www.ftc.go.kr/www/bizCommView.do?key=232&apv_perm_no=2006335008030200590&pageUnit=10&searchCnd=wrkr_no&searchKrwd=6218105081&pageIndex=1">사업자정보확인</a-->
					<li>service@parkland.co.kr</li>
			        <li class="sns">
			        	<a href="https://www.facebook.com/SuitHolic" target="_blank"><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/t_fbook.png" alt="페이스북"></a>
			        	<a href="http://blog.naver.com/parklanding" target="_blank"><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/t_blog.png" alt="블로그"></a>
			        	<a href="https://www.instagram.com/parklandholic" target="_blank"><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/t_insta.png" alt="블로그"></a>
			        	<!--<a href="http://parklanding.tistory.com/" target="_blank"><img src="/nhome/img/t_tistory.png" alt="티스토리" /></a>
			        	<a href="javascript:addFavorite();"><img src="/nhome/img/t_bookmark.png" alt="facebook" /></a>-->
			        </li>
			      </ul>
	      		</div>
	      		<!-- // top menu -->

	      		<!--  content_area -->
	      		<div class="content_area">
	      		
<!-- 아이디 검증 함수 -->
<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	      		
<script type="text/javascript">

	function registerCheckFunction() {
		
		var id = $('id').val();
		$.ajax({
			type : 'POST',
			url : './UserRegisterCheckServlet',
			data : {id : id},
			sucess: function(result) {
				if(result == 1) {
					$('#checkMessage').html('사용할 수 있는 아이디입니다.');
					$('#checkType').attr('class', 'modal-content pannel-success');
				}
				else {
					$('#checkMessage').html('사용할 수 없는 아이디입니다.');
					$('#checkType').attr('class', 'modal-content pannel-warning');
				}
				$('checkModal').modal("show");
			}
		})
		
	}

</script> -->

<script type="text/javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. 
// (＂팝업 API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";
function goPopup(){
//경로는 시스템에 맞게 수정하여 사용
//호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를
//호출하게 됩니다.
var pop = window.open("jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
//** 2017년 5월 모바일용 팝업 API 기능 추가제공 **/
// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서
// 실제 주소검색 URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
function jusoCallBack(roadFullAddr){
 // 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다.
 document.form.roadFullAddr.value = roadFullAddr;

}
</script>

<!-- 빈칸 검증하기(현우) -->
<script type="text/javascript">

	function update() {
		
		
		var f = document.form;
			
		//비밀번호
		if(!f.pwd.value) {
		
			alert("비밀번호입력!");
			f.pwd.focous();
			return;
		}
		//비밀번호 길이
		if(f.pwd.value.length<6 || f.pwd.value.length>12) {
		
			alert("비밀번호는 6~12자 사이로 입력가능합니다.!");
			f.pwd.focous();
			return;
		}
		
		/* //비밀번호 재확인
		if(!f.pwd2.value) {
		
			alert("비밀번호재확인!");
			f.pwd2.focous();
			return;
		}
		
		//비밀번호가 다를 시
		if(f.pwd.value != f.pwd2.value) {
		
			alert("비밀번호가 다릅니다!");
			f.pwd1.focous();
			return;
		} */
		
		//이메일 입력
		if(!f.email1.value) {
			
			alert("이메일을 입력하세요!");
			f.email.focous();
			return;
		}
		//이메일 입력
		if(!f.email2.value) {
			
			alert("이메일을 입력하세요!");
			f.email.focous();
			return;
		}
		
		//주소
		if(!f.roadFullAddr.value) {
			
			alert("주소를 입력하세요!");
			f.roadFullAddr.focous();
			return;
		}
		
		//휴대전화
		if(!f.hp1.value) {
			
			alert("전화번호 입력!");
			f.hp1.focous();
			return;
		}
		//휴대전화
		if(!f.hp2.value) {
			
			alert("전화번호 입력!");
			f.hp2.focous();
			return;
		}
		//휴대전화
		if(!f.hp3.value) {
			
			alert("전화번호 입력!");
			f.hp3.focous();
			return;
		}
		
		//양력/음력
		if(!f.birth_tf.value) {
			
			alert("양력/음력 체크!");
			document.form.birth_tf.focous();
			return;
		}
		//생년월일
		if(!f.birth_year.value) {
			
			alert("년도 입력!");
			document.form.birth_year.focous();
			return;
		}
		
		if(f.birth_month.value == "월") {
			
			alert("월입력!");
			document.form.birth_month.focous();
			return;
		}
		if(!f.birth_day.value) {
			
			alert("일 입력!");
			document.form.birth_day.focous();
			return;
		}
		//매일서비스
		if(!f.service_email .value) {
			
			alert("메일서비스 체크하세요!");
			document.form.service_email .focous();
			return;
		}
		//sms서비스
		if(!f.service_sms .value) {
			
			alert("SMS서비스 체크하세요!");
			document.form.service_sms .focous();
			return;
		}
		//dm서비스
		if(!f.service_dm .value) {
			
			alert("DM서비스 체크하세요!");
			document.form.service_dm .focous();
			return;
		}
		//tm서비스
		if(!f.service_tm .value) {
			
			alert("TM서비스 체크하세요!!");
			document.form.service_tm .focous();
			return;
		}
		
		
		alert("회원정보 수정 성공!!!!!")
		
		f.action="<%=cp%>/shop/join/update_ok.do";
		f.submit();
		
	}
	
</script>
	
		<!-- 회원가입 -->
		<div class="s_location"><a href="https://eshop.parkland.co.kr:444/"><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/icon_home.png" border="0"></a><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/icon_larr.png" border="0">정보수정</div>
      	<div class="cline"></div>
      	<div class="c_title"><p>내정보수정</p></div>
      	<div class="table_join">
			<form name="form" id="form" method="post">
			<table>
				<colgroup>
					<col width="170px">
					<col width="auto">
				</colgroup>
				<tbody>
					<tr>
						<th>아이디</th>
						<td>
							${dto.id }
						<!-- <input type="text" name="id" id="id" class="type01"> -->
						</td>	
					</tr>
					<tr>
						<th>성명</th>
						<td>
						${dto.name }
						</td>	
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<input type="password" name="pwd" id="changepw" value="${dto.pwd }" class="type01">
							<font color="red">비밀번호는 6~12자 사이로 입력가능합니다.</font>
						</td>
					</tr>
					<%-- <tr>
						<th>비밀번호 재확인</th>
						<td>
							<input type="password" name="pwd2" id="changepw02" value="${dto. }" class="type01">
						</td>
					</tr> --%>
					<tr>
						<th>이메일</th>
						<td class="txt_color">
						
							<input type="text" name="email1" value="${dto.email1 }" class="type01">
							@
							<input type="text" name="email2" id="email2" value="${dto.email2 }" class="type01">
							<select name="email_domain" id="email_domain" class="type02" onchange="javascript: document.getElementById(&#39;email2&#39;).value=this.value;">
								<option value="" selected="selected">선택</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="" selected="selected">직접입력</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
						<!-- <p><input type="text" name="addr" id="addr" size="40" class="type04"> </p> -->
						<input type="text" id="roadFullAddr" name="roadFullAddr" value="${dto.roadFullAddr }" size="60" />
						<button type="button" class="btn-type post" onClick="goPopup();">주소검색</button>
						</td>	
					</tr>
					
					<tr>
						<th>휴대전화</th>
						<td>
							<input type="text" name="hp1" id="hp1" value="${dto.hp1 }" class="type02">
							-
							<input type="text" name="hp2" id="hp2" value="${dto.hp2 }" class="type02">
							-
							<input type="text" name="hp3" id="hp3" value="${dto.hp3 }" class="type02">
							
							<!-- <a href="https://eshop.parkland.co.kr:444/nhome/user/modifyuserinfo.asp#" onclick="javascript:$(&#39;#niceIpinPop&#39;).show();" class="btn-type post">인증하기</a>
							 <span class="sub_txt">* 휴대전화 번호 변경시 인증하기 버튼을 클릭하세요</span> -->
						</td>
					</tr>
					<!-- <tr style="display:none;">
						<th>직업</th>
						<td>
							<select name="job_code" class="type03">
								<option value="ZZ" selected="">선택안함</option>
								<option value="01">회사원</option>
								<option value="07">자영업</option>
								<option value="33">공무원</option>
								<option value="31">주부</option>
								<option value="30">학생</option>
								<option value="32">기타</option>
							</select>
						</td>
					</tr> -->
					
					<tr>
						<th>생년월일</th>
						<td class="txt_color">
							<input type="radio" name="birth_tf" value="양력" id="bir_check01"><label for="bir_check01">양력</label> 
							<input type="radio" name="birth_tf" value="음력" id="bir_check02"><label for="bir_check02">음력</label>
							<select name="birth_year" id="birth_year" class="type01">
							<option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997" selected="">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option>
							</select>
							년
							<select name="birth_month" id="birth_month" class="type01">
							<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
							</select>
							월
							<select name="birth_day" id="birth_day" class="type01">
							<option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27" selected="">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
							</select>
							일
						</td>
					</tr>
					
					<!-- <tr>
						<th>결혼기념일</th>
						<td class="txt_color">
							<input type="radio" name="marri_tf" value="T" id="bir_check03"><label for="bir_check03">기혼</label> 
							<input type="radio" name="marri_tf" value="F" id="bir_check04"><label for="bir_check04">미혼</label> 
							<select name="marri_year" id="marri_year" class="type01">
							<option value="">선택</option><option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option>
							</select>
							년
							<select name="marri_month" id="marri_month" class="type01">
							<option value="">선택</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
							</select>
							월
							<select name="marri_day" id="marri_day" class="type01">
							<option value="">선택</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
							</select>
							일
						</td>
					</tr> -->
					
					<tr>
						<th>메일서비스</th>
						<td>
							<input type="radio" name="service_email" value="수신" id="mail_check"> <label for="mail_check">수신</label>  
							<input type="radio" name="service_email" value="거부" id="mail_check02"> <label for="mail_check02">거부</label> 

							<span class="sub_txt">(이벤트 행사 및 각종 정보를 이메일로 받아보실 수 있습니다.)</span>
						</td>
					</tr>
					<tr>
						<th>SMS서비스</th>
						<td>
							<input type="radio" name="service_sms" value="수신" id="sms_check"> <label for="sms_check">수신</label>  
							<input type="radio" name="service_sms" value="거부" id="sms_check02"> <label for="sms_check02">거부</label> 
							<span class="sub_txt">(이벤트 행사 및 각종 정보를 SMS로 안내해 드립니다.)</span>
						</td>
					</tr>
					<tr>
						<th>DM서비스</th>
						<td>										
							<input type="radio" name="service_dm" value="수신" id="dm_check"> <label for="dm_check">수신</label>  
							<input type="radio" name="service_dm" value="거부" id="dm_check02"> <label for="dm_check02">거부</label> 
							<span class="sub_txt">(이벤트 및 할인쿠폰 등을 우편으로 발송해 드립니다.)</span>
						</td>
					</tr>
					<tr>
						<th>TM서비스</th>
						<td>
							<input type="radio" name="service_tm" value="수신" id="tm_check"> <label for="tm_check">수신</label>  
							<input type="radio" name="service_tm" value="거부" id="tm_check02"> <label for="tm_check02">거부</label> 
							<span class="sub_txt"></span>
						</td>
					</tr>
					<tr>
						<th>멤버스카드발급</th>
						<td>
							발급
						</td>
					</tr>
				</tbody>
			</table>
			</form>
		</div>

     	<div class="btn_center mt30">
     	
     		<!-- <a href="javascript:fnSubmit();" class="btn-type btn5 blue mr5">확인</a> -->
     		
     		<a href="javascript:update();" class="btn-type btn5 blue mr5">확인</a>
     		<!-- <input type="button" class="btn-type btn5 blue mr5" onclick="update();"> -->
     		<a href="javascript:history.back();" class="btn-type btn5 dgray mr5">취소</a>
     		
		<!-- 	<a href="https://members.parkland.co.kr/" target="_blank" class="btn-type btn5 blue mr5">회원탈퇴</a> -->
     	</div>
     	
     	<div class="info_edit2_wrap">
           <div class="mileage_cont">
            <ul>
     			<li>
	               
	                <div class="mileage_bt_content">
	                	<div><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/mileage_img01.png" alt=""></div>
	                <div>
	                <div class="tel_font">080. 531. 7513 ~ 4 </div>
	                <div class="sub_txt_type01"> 기타 문의사항은 고객상담실 또는 가까운 매장에 방문하시면 보다 상세히 안내해 드리겠습니다. </div>
					</div>
					</div>
				</li>
			</ul>
			</div>
		</div>
      	<!-- // 정보수정 --> 
		<!-- 본인확인 인증 s -->
		<style>
			.title_type01{background:url('http://members.parkland.co.kr/images/sub/left_line.png') center left no-repeat; font-size:19px; color:#1e1e1e; padding-left:10px; height:17px; margin-bottom:14px;}
			.title_type02{font-size: 17px;color: #21286d;font-weight: 600;height: 17px;margin-bottom: 10px;}
			.sub_txt_type01{font-size:13px; color:#7e7e7e;}
			
			.join01_in{border:1px solid #dfdfdf; margin-top:23px;}
			.join01_in:after{content:''; display:block; clear:both;}
			.join01_in > ul > li{float:left; width:50%; margin-top:30px; text-align:center;}
			.join01_in > ul > li > dl{border-left:1px solid #dfdfdf; padding-left:30px;}
			.join01_in > ul > li > dl dt:first-child{height:48px;}
			.join01_in > ul > li > dl dt{font-size:18px; color:#21286d; height:18px; margin-bottom:19px;}
			.join01_in > ul > li > dl dd{font-size:13px; color:#7e7e7e; height:14px; margin-bottom:19px; height:35px;}
			.join01_in > ul > li:first-child > dl{border-left:0;}
			
			.btn_type03{margin-top:10px;}
			.btn_type03 a{  display: inline-block;width: 107px;padding: 5px 0; font-size: 13px;color: #fff; text-align: center; background-color:#21286d; -webkit-border-radius: 5px;
			-moz-border-radius: 5px; border-radius: 5px;}
			.btn_type03 a:hover{color:#fff;}
			.btn_type03 a.bgcC{background-color:#898989;}
		</style>
		<div id="niceIpinPop" style="display:none;padding:20px;position:absolute;left:10px;top:600px;width:840px;height:310px;border:3px solid #7b7c7f;background-color:#FFF;z-index:100;">
			<div class="title_type01">본인확인
				<div style="position:relative;float:right;margin-top:-10px;margin-right:-10px;width:20px;height:21px;">
				<img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/login_popClose.png" style="cursor:pointer" onclick="javascript:$(&#39;#niceIpinPop&#39;).hide();">
				</div>
			</div>
			<div class="sub_txt_type01">핸드폰실명인증 또는 아이핀인증을 선택해주세요.</div>
			<div class="join01_in">
				<ul>
					<li>



	<title>NICE&#65533;좎슜&#65533;됯&#65533;&#65533;뺣낫 - CheckPlus &#65533;덉떖蹂몄씤&#65533;몄쬆 &#65533;뚯뒪&#65533;&#65533;</title>

	<script language="javascript">
	window.name ="Parent_window";

	function fnPopup2(){
		window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
		document.form_chk.target = "popupChk";
		document.form_chk.submit();
	}
	</script>

<!-- body class="body" onload="fnPopup();" -->

	<!-- <br>&#65533;낆껜&#65533;뺣낫 &#65533;뷀샇&#65533;&#65533; &#65533;곗씠&#65533;&#65533; : [AgAFRzQwMjBFOXY2NkNRi5s0wJDUCT85h92dKq+NRbi6grNwxlIkojFLNVcRuf7HVLDKCn5dXf87Hqi6hM9W9nx42k0vbIvkIlLmQMlh4sVQCLOtItVyb3lssnlGh7HYF/vQRz9GZrmYNuSjD65MVPyfP3EkDdkoULEgS2ovk6186+nMQpWlW3RGABUH82zGuE5xWZMWaAJBD+rvY2C5bqmbZf+xhEHO42HOph/KI1MA9IfofLKSNK1Khslpx/LoSYbNyMYCQqymb9peVuoUFW4zQjQNl1p0HGtqsuEMJiRHxt3Y+gwrML0nSzQMi5TKU/rRu45ys7KNdiF7R7EDGGGmx5vtifxZS9Wd0ILsZen0dTM+997ZqDKr42/QJYdy3yHj9sq8BoCPHtq4Bv8Khv3ikXr6amiuUJvsBwo1iU1WT+ylkfOKWQ4MEk8rMbopL2I5dX22oCtKEEHHsdYXLJQE4VVQpTh3S0uzQoPkb2ecgmEHV+OtQ2nGg/atP1qCfFq7+Z/Ew8V7D7xJz2XOC9z75ekzjMMptbryDcWKl96n2/mPmW2xqw==]<br><br> -->

	<!-- 蹂몄씤&#65533;몄쬆 &#65533;쒕퉬&#65533;&#65533; &#65533;앹뾽&#65533;&#65533; &#65533;몄텧&#65533;섍린 &#65533;꾪빐&#65533;쒕뒗 &#65533;ㅼ쓬怨&#65533; 媛숈&#65533; form&#65533;&#65533; &#65533;꾩슂&#65533;⑸땲&#65533;&#65533;. -->
	<form name="form_chk" method="post">
		<input type="hidden" name="m" value="checkplusSerivce">						<!-- &#65533;꾩닔 &#65533;곗씠&#65533;&#65533;濡&#65533;, &#65533;꾨씫&#65533;섏떆硫&#65533; &#65533;덈맗&#65533;덈떎. -->
		<input type="hidden" name="EncodeData" value="AgAFRzQwMjBFOXY2NkNRi5s0wJDUCT85h92dKq+NRbi6grNwxlIkojFLNVcRuf7HVLDKCn5dXf87Hqi6hM9W9nx42k0vbIvkIlLmQMlh4sVQCLOtItVyb3lssnlGh7HYF/vQRz9GZrmYNuSjD65MVPyfP3EkDdkoULEgS2ovk6186+nMQpWlW3RGABUH82zGuE5xWZMWaAJBD+rvY2C5bqmbZf+xhEHO42HOph/KI1MA9IfofLKSNK1Khslpx/LoSYbNyMYCQqymb9peVuoUFW4zQjQNl1p0HGtqsuEMJiRHxt3Y+gwrML0nSzQMi5TKU/rRu45ys7KNdiF7R7EDGGGmx5vtifxZS9Wd0ILsZen0dTM+997ZqDKr42/QJYdy3yHj9sq8BoCPHtq4Bv8Khv3ikXr6amiuUJvsBwo1iU1WT+ylkfOKWQ4MEk8rMbopL2I5dX22oCtKEEHHsdYXLJQE4VVQpTh3S0uzQoPkb2ecgmEHV+OtQ2nGg/atP1qCfFq7+Z/Ew8V7D7xJz2XOC9z75ekzjMMptbryDcWKl96n2/mPmW2xqw==">		<!-- &#65533;꾩뿉&#65533;&#65533; &#65533;낆껜&#65533;뺣낫瑜&#65533; &#65533;뷀샇&#65533;&#65533; &#65533;&#65533; &#65533;곗씠&#65533;&#65533;&#65533;낅땲&#65533;&#65533;. -->

	    <!-- &#65533;낆껜&#65533;먯꽌 &#65533;묐떟諛쏄린 &#65533;먰븯&#65533;&#65533; &#65533;곗씠&#65533;&#65533;瑜&#65533; &#65533;ㅼ젙&#65533;섍린 &#65533;꾪빐 &#65533;ъ슜&#65533;&#65533; &#65533;&#65533; &#65533;덉쑝硫&#65533;, &#65533;몄쬆寃곌낵 &#65533;묐떟&#65533;&#65533; &#65533;대떦 媛믪쓣 洹몃&#65533;濡&#65533; &#65533;≪떊&#65533;⑸땲&#65533;&#65533;.
	    	   &#65533;대떦 &#65533;뚮씪誘명꽣&#65533;&#65533; 異붽&#65533;&#65533;섏떎 &#65533;&#65533; &#65533;놁뒿&#65533;덈떎. -->
		<input type="hidden" name="param_r1" value="edit_ansim">
		<input type="hidden" name="param_r2" value="">
		<input type="hidden" name="param_r3" value="">

		<!-- <a href="javascript:fnPopup();"> CheckPlus &#65533;덉떖蹂몄씤&#65533;몄쬆 Click</a> -->
	</form>


						<dl>
							<dt><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/join_icon01.png" alt=""></dt>
							<dt>휴대폰</dt>
							<dd>휴대폰으로 본인인증하기 </dd>
							<dd>
								<div class="btn_type03">
									<a href="javascript:fnAnsimSubmit();">인증하기</a>
								</div>
							</dd>
						</dl>
					</li>
					<li>



	<title>NICE&#65533;좎슜&#65533;됯&#65533;&#65533;뺣낫 媛&#65533;&#65533;곸＜誘쇰쾲&#65533;&#65533; &#65533;쒕퉬&#65533;&#65533;</title>
	
	<script language="javascript">
	window.name ="Parent_window";
	
	function fnPopup(){
		window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_ipin.target = "popupIPIN2";
		document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
		document.form_ipin.submit();
	}
	</script>




<form name="form_ipin" method="post">
	<input type="hidden" name="m" value="pubmain">					
    <input type="hidden" name="enc_data" value="AgEEQzY5Mk7U2zrbuMdh6F9ahi9pahaWtX0cDJ6fkgPTI0QLWsA3ox81bFICEWhava2B6INKlolBxBrIgy3VirgGxJTQG3hb3W3fyCrKyjzreMDcYFFRGs1mrhAODOgZvyT56fB1ysyo2lx9EmPyRvEgjdhiBNxQsSBLai+TrXzr6cxClaVb1EtGZJmlPFu5esh44i50NkweR8ntr62AI5bMIULSexRwfuCqiIS2wBU8fu+pFG5lOiED2EgMiANc7zP/o4agpQPN3C1LlyUBSlWlOXpSU5cSOBSFC3c2SURlMmGNd4zoAzLXP5XSqphJokdRNFktzaGL9LOG0Y1uAlw0ZcjUy94=">	<!-- &#65533;꾩뿉&#65533;&#65533; &#65533;낆껜&#65533;뺣낫瑜&#65533; &#65533;뷀샇&#65533;&#65533; &#65533;&#65533; &#65533;곗씠&#65533;&#65533;&#65533;낅땲&#65533;&#65533;. -->
    
    <input type="hidden" name="param_r1" value="edit_ipin">
    <input type="hidden" name="param_r2" value="">
    <input type="hidden" name="param_r3" value="">
    
</form>



<form name="vnoform" method="post">
	<input type="hidden" name="enc_data">								
	
    <input type="hidden" name="param_r1" value="edit_ipin">
    <input type="hidden" name="param_r2" value="">
    <input type="hidden" name="param_r3" value="">
</form>



						<dl>
							<dt><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/join_icon02.png" alt=""></dt>
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
			        		법인명 (상호) : 주식회사 헬로비너스 <span class="bar">I</span> 사업자등록번호 :
						261-81-23567 <a
							href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&amp;apv_perm_no="
							target="_blank" class="link">사업자정보 확인</a> <br> 통신판매업 : 제
						2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준 <br>
						주소 : 서울특별시 강남 ITWELL <span class="bar">I</span> 대표이사
						: 이윤재 <br> 입점문의 : <a
							href="https://docs.google.com/forms/d/e/1FAIpQLScLB7YkGJwNRzpGpp0gbR1i4C1_uvTEFj43SFfJ_XEadTn3gQ/viewform?usp=sf_link"
							target="_blank" class="link">입점문의하기</a> <span class="bar">I</span>
						마케팅제휴 : <a href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
						<br> 채용문의 : <a href="mailto:recruit@kurlycorp.com"
							class="link">recruit@kurlycorp.com</a> <br> 팩스: 070 - 1234 -
						1234 <span class="bar">I</span> 이메일 : <a
							href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a>
						<br> 대량주문 문의 : <a href="mailto:kurlygift@kurlycorp.com"
							class="link">kurlygift@kurlycorp.com</a> <br>
			      		</div>
			      		<div class="f_right">
			        		<ul>
								<li class="fimg"><img src="<%=cp %>/shoppingmall/login/login_files/inipay.png" alt=""></li>
					          	<li>
						            <p>헬로네이쳐는 (주)이니시스의 구매안전 에스크로서비스를 제공합니다.</p>
			            			<p>
									<a
										href="<%=cp%>/shop/main/main.do"><img
										src="<%=cp%>/shoppingmall/category/category_files/inipay_btn.png"
										alt=""></a>
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
						<div class="q_cart"><a href="https://eshop.parkland.co.kr:444/nhome/cart/cart.asp"><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/cart.png" alt=""></a>
			       		 	<p>(<span id="gRightCartCount">0</span>)</p>
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
			    	<div class="righttop"><a href="https://eshop.parkland.co.kr:444/nhome/user/modifyuserinfo.asp#"><img src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/top.png" alt="top"></a></div>
			  	</div>
			  	<!-- // quick -->
			</div>
			<!-- //rnavi -->
	  	</div>
	  	<!-- // container -->

	</div>
	<!-- //WRAP -->



			<!-- WIDERPLANET  SCRIPT START 2021.12.1 -->
		<div id="wp_tg_cts" style="display:none;"><script id="wp_tag_script_1645844515273" src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/wpc.php"></script></div>
		<script type="text/javascript">
		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push(
		(function() {
			return {
				wp_hcuid:"hwcotton",   /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
						*주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
				ti:"53076",	/*광고주 코드 */
				ty:"Home",	/*트래킹태그 타입 */
				device:"web"	/*디바이스 종류  (web 또는  mobile)*/

			};
		}));
		</script>
		<script type="text/javascript" async="" src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/wp_astg_4.0.js.다운로드"></script>
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


	<script type="text/javascript" src="<%=cp %>/shoppingmall/join/modifyUserInfo_files/wcslog.js.다운로드"></script>
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

</body></html>