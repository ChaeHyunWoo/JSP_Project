<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	session.removeAttribute("userId"); //suzi라는 데이터만 삭제된다.
	session.invalidate();// suzi라는 변수가 삭제된다.
	
	response.sendRedirect("login.jsp");
	//Redirect를 쓰면 여기서 멈추고 하단 코딩을 안쓰고 login.jsp로 간다. 그래서 하단 소스를 다 지워도 된다.
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그아웃</title>
</head>
<body>

</body>
</html>