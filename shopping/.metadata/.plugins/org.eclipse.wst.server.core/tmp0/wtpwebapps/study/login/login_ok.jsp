<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	
	if(userId.equals("suzi") && userPwd.equals("123")) {
		
		session.setAttribute("userId", userId);
		
		//클라이언트한테 주는거니까 response
		response.sendRedirect("login.jsp");
		//위느 조건 id:suzi / pw:123이 맞으면
		//Redirect는 여기서 경로를 끊는다.그래서 하단 코딩이 실행x 그래서 하단 body에 있는 텍스트 안나옴
	}	
	
	


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 또는 패스워드 오류</title>
</head>
<body>

아이디 또는 패스워드 오류~~~<br/>
<a href="login.jsp">돌아가기</a>

</body>
</html>