<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String msg = (String)request.getAttribute("msg"); //다운캐스팅을 해줘야 한다.
	//request는 java에서 관리한다. 받을 때 getAttribute메서드를 사용해야하고
	//가장 큰 객체인 Object로 전달하므로 downcast 해줘야함

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

리다이렉트 또는 포워드한 페이지<br/>
이름:<%=name %><br/>
msg:<%=msg %>

</body>
</html>