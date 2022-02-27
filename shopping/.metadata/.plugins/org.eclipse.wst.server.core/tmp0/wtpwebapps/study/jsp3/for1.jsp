<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	//request.setCharacterEncoding("UTF-8");

	String eng = "test";
	String han = "테스트";
	
	String kor = URLEncoder.encode(han, "UTF-8");
	

%>

<jsp:forward page="for2.jsp">
	<jsp:param value="<%=eng %>" name="eng"/>
	<jsp:param value="<%=kor %>" name="kor"/>
</jsp:forward>

<!-- 밑의 코딩은 실행이 안되서 지워도 된다. -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>