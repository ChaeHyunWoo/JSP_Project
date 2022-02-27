<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	//사용자의 컴퓨터에 쿠키를 저장
	//name이라는 변수에 suzi를 저장
	Cookie c1 = new Cookie("name", "suzi");
	Cookie c2 = new Cookie("age", "27");
	//쿠키도 한글을 저장할 때는 인코딩-디코딩 해줘야한다.
	Cookie c3 = new Cookie("addr", URLEncoder.encode("서울", "UTF-8")); 
	
	
	
	//클라이언트한테 보내야 하니 response로 보내야 한다.
	response.addCookie(c1);
	response.addCookie(c2);
	response.addCookie(c3);
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="test2.jsp">쿠키</a>

</body>
</html>