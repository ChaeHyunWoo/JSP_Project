<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = session.getId();
	int sTime = session.getMaxInactiveInterval(); //기본 디폴트는 30분이라 하단 소스에서 시간을 수정해준다.
	
	//session.setMaxInactiveInterval(10*60); //디폴트 유지시간 : 10분을 줄거면 10 *60
	//디폴트 시간동안 아무것도 안하면 session이 죽어버려서 로그아웃 된다.

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정관리 화면</title>
</head>
<body>

<h1>일정관리 화면</h1>

세션ID: <%=id %><br/>
세션 유효시간: <%=sTime %> 초<br/>


</body>
</html>