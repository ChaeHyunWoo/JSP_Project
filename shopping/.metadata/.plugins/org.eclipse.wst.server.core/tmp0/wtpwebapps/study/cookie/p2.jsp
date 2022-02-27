<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	
	Cookie c = new Cookie("productName2",URLEncoder.encode("세탁기", "UTF-8"));
	
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

<h1>깨끗해 세탁기</h1>

<img alt="세탁기" src="./image/세탁기.jpg"><br/>

<a href="shop.jsp">돌아가기</a>

</body>
</html>