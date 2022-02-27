<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	Cookie c = new Cookie("productName1",URLEncoder.encode("냉장고", "UTF-8"));
	
	c.setMaxAge(10);
	
	response.addCookie(c);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>잘얼어 냉장고</h1>

<img alt="냉장고" src="./image/냉장고.jpg"><br/>

<a href="shop.jsp">돌아가기</a>

</body>
</html>