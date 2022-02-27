<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<br/>

<c:if test="${!empty param.su1 }">
	<c:set var="result" value="1"/>
	<c:forEach var="i" begin="1" end="${param.su2 }" step="1">
		<c:set var="result" value="${result * param.su1 }"></c:set>
			${param.su1 } ^ ${i } = ${result }<br/>
	</c:forEach>


</c:if>

</body>
</html>