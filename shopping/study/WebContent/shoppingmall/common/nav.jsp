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
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>