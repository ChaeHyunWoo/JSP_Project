<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="" method="post">

이름:<input type="text" name="name"/><br/>
<input type="submit" value="리다이렉트" onclick="this.form.action='test1_ok.jsp'"/><br/>
<input type="submit" value="포워드" onclick="this.form.action='test1_for.jsp'"/><br/>

</form>


</body>
</html>