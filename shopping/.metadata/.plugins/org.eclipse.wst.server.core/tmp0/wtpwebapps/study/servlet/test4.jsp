<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="" method="post">

수1: <input type="text" name="su1"/><br/>
수2: <input type="text" name="su2"/><br/>
<input type="submit" value="결과"/><br/>

</form>

su1: ${param.su1 }<br/>
su2: ${param.su2 }<br/>

결과: ${param.su1 + param.su2 }<br/>

${param.su1 }은 ${param.su1 % 2 == 0 ? "짝수" : "홀수" }

</body>
</html>