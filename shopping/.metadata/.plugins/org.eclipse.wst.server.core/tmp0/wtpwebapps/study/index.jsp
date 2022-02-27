<%@page import="com.join.CustomInfo"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	//이건 JSP에서 썻던 방법 우리는 EL로 할 것이다
	//CustomInfo info = (CustomInfo)session.getAttribute("customInfo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP/Servlet 게시판 목록</title>

</head>
<body>

<c:choose>
	<c:when test="${empty sessionScope.customInfo.userId }">
		<b>로그인하면 새로운 세상이 보입니다.</b><br/><br/>
	</c:when>
	<c:otherwise>
		${sessionScope.customInfo.userName }님 방가방가..<br/><br/>
	</c:otherwise>
</c:choose>


<c:choose>
	<c:when test="${empty sessionScope.customInfo.userId }">
	1. 성적처리(JSP)<br/>
	2. 게시판(JSP)<br/>
	3. 방명록(JSP)<br/>
	4. 성적처리(Servlet)<br/>
	</c:when>
	<c:otherwise>
		1. <a href="<%=cp%>/score/list.jsp">성적처리(JSP)</a><br/>
		2. <a href="<%=cp%>/board/list.jsp">게시판(JSP)</a><br/>
		3. <a href="<%=cp%>/guest/guest.jsp">방명록(JSP)</a><br/>
		4. <a href="<%=cp%>/jumsu/list.do">성적처리(Servlet)</a><br/>
	</c:otherwise>
</c:choose>

		5. <a href="<%=cp%>/sboard/list.do">게시판(Servlet)</a><br/>
		<br/><br/>

<c:choose>
	<c:when test="${empty sessionScope.customInfo.userId }">
		<a href="<%=cp %>/join/created.do">회원가입</a><br/>
		<a href="<%=cp %>/join/login.do">로그인</a><br/>
	</c:when>
	<c:otherwise>
		<a href="<%=cp %>/join/updated.do">정보수정</a><br/>
		<a href="<%=cp %>/join/logout.do">로그아웃</a><br/>
	</c:otherwise>
</c:choose>

<%-- ${name } --%>


</body>
</html>