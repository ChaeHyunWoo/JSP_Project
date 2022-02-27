<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	//test3.jsp에서 데이터가 넘어온다.
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String [] major = request.getParameterValues("major"); //이렇게만 하면 해시코드가 나와서 풀어줘야함
	String agree = request.getParameter("agree");
	String memo = request.getParameter("memo");
	
	memo = memo.replaceAll("\n", "<br/>");
	
	
	//해시코드 풀어주기
	String str = "";
	
	if(major != null) {
		
		for(String temp : major) {
			str += temp + " ";
		} 
	}// str에 전공을 넣어줬으니 <%여기부분에 str를 적어준다.





%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

이름: <%=name %><br/>
아이디: <%=id %><br/>
비밀번호: <%=pwd %><br/>
성별: <%=gender %><br/>
전화번호: <%=tel1 %>-<%=tel2 %>-<%=tel3 %><br/>
전공: <%=str %><br/>
동의여부: <%=agree %><br/>
메모:<%=memo %><br/>



</body>
</html>