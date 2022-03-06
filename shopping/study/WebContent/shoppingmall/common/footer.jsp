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
	<!-- footer_wrap -->
	<div class="footer_wrap">
		<!-- footer_menu -->
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
</body>
</html>