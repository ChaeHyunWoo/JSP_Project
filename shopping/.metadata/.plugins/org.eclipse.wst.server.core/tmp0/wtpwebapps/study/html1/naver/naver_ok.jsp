<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	
	String id = request.getParameter("id");
	String pwd1 = request.getParameter("pwd1");
	String pwd2 = request.getParameter("pwd2");
	String name = request.getParameter("name");
	String birth1 = request.getParameter("birth1");
	String birth2 = request.getParameter("birth2");
	String birth3 = request.getParameter("birth3");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String choice = request.getParameter("choice");
	String tel = request.getParameter("tel");
	String phone = request.getParameter("phone");



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

아이디: <%=id %><br/>
비밀번호: <%=pwd1 %><br/>
비밀번호 재확인: <%=pwd2 %><br/>
이름: <%=name %><br/>
생년월일: <%=birth1 %>년<%=birth2 %> <%=birth3 %>일<br/>
성별: <%=gender %><br/>
이메일: <%=email %><br/>
국적: <%=choice %><br/>
전화번호: <%=tel %><br/>
인증번호: <%=phone %><br/>

</body>
</html>