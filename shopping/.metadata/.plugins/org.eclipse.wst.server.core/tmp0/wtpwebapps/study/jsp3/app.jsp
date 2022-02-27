<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//Scope 종류 : page, request, session, application이 있다
	//app.jsp에서는 application으로 만들기 - 요즘 거의 안씀 기억만 하기

	int n = 0;
	String count = (String)application.getAttribute("count");
	
	if(count != null) {
		n = Integer.parseInt(count);
	}
	n++;
	
	//여기 set에서 위의 get으로 보낸다.
	application.setAttribute("count", Integer.toString(n));
	
	
	//실제 접속 위치
	String realPath = application.getRealPath("/");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
총 접속자 수: <%=n %><br/>
웹서버 실제 경로: <%=realPath %>
</body>
</html>

