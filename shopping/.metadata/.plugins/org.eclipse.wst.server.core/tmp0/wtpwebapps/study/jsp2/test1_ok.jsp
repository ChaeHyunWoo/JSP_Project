<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	
	request.setAttribute("msg", "방가방가..."); //건너갈때 짐을 가져가라고 준다.(이건 포워드에서 쓴다.)
	//request라는 객체한테 값을 살짝 추가할 때(방가방가를 msg에 넣어서 보냄)
	
	
	//리다이랙트 명령어
	response.sendRedirect("test1_s.jsp"); //여기서 경로를 끊어줘서 하단 소스가 실행 안된다.
	//이 줄 뜻은 애 무조건 실행해!(test1_s.jsp를 리로딩해) 여기서 test1_s.jsp 파일로 넘어감

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

이름:<%=name %>

</body>
</html>