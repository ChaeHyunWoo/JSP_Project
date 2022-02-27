<%@ page contentType="text/html; charset=UTF-8"%>

<%
	
	request.setCharacterEncoding("UTF-8"); //request안에 어떤 데이터가 있든 바꿔라(post방식 한글깨짐해결방법)
											//하단에 데이터를 넣기 전에 바꿔줘야한다.
	String s1 = request.getParameter("su1");
	String s2 = request.getParameter("su2");
	String name = request.getParameter("name");
	
	int sum=0;
	
	int su1 = Integer.parseInt(s1);
	int su2 = Integer.parseInt(s2);
	
	sum = su1 + su2;
	

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
결과: <%=su1 %>+<%=su2 %>=<%=sum %><br/>
이름: <%=name %><br/>
</body>
</html>