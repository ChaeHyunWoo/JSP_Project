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
							src="<%=cp%>/shoppingmall/main/main_files/icon_newwin.png" alt=""></a></li>
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
					alt="블로그"></a> <a href="https://www.instagram.com/parklandholic"
				target="_blank"><img
					src="<%=cp%>/shoppingmall/category/category_files/t_insta.png"
					alt="블로그"></a></li>
		</ul>
	</div>
	<!-- // dvTopmeu -->
</body>
</html>