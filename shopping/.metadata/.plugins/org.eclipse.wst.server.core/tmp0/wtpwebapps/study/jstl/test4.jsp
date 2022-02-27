<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="url" value="gugudan.jsp"/>
<c:import url="${url }" var="uu">
	<c:param name="dan" value="7"/>
</c:import>

<c:out value="${uu }" escapeXml="false"/>


<c:set var="url" value="https://www.daum.net"/>
<c:import url="${url }" var="u"/>
<c:out value="${u }" escapeXml="false"/>



</body>
</html>