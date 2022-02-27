<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String userName = request.getParameter("userName");
	String userBirth = request.getParameter("userBirth");
	
	//session ex1에서 넘어온 데이터를 받아서 session에 올린다
	//session.setAttribute("userName", userName);
	//session.setAttribute("userBirth", userBirth);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- form 안에 있는것이 넘어간다. -->
<form action="ex3.jsp" method="post">

<!-- input type를 hidden으로 쓰면 우리 눈에는 데이터 값이 안보이지만 (숨겨져있다,) 
데이터가 넘어가서 ex3으로 넘어간다. 보고싶으면 hidden을 text로 바꾸면 보인다.
 -->
아이디: <input type="text" name="userId" size="10"/><br/>
패스워드: <input type="text" name="userPwd" size="10"/><br/>

<input type="text" name="userName" value= <%=userName %>>
<input type="text" name="userBirth" value=<%=userBirth %>>

<input type="submit" value="가입"/>
</form>

</body>
</html>