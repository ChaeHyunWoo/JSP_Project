<%@ page contentType="text/html; charset=UTF-8"%>

<% 
	int a=10,b=5,c;
	c=a+b;





%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

합: <%=a %>+<%=b %>=<%=c %><br/>

<!-- 내장객체를 사용해서 출력 -->
<%
	out.print("합: " + a + "+" + b + "=" + c + "<br/>");

	String str = String.format("합: %d+%d=%d<br/>", a,b,c);
	out.print(str);


%>



</body>
</html>