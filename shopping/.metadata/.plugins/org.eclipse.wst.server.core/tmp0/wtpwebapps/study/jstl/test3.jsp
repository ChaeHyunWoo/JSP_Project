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
수 : <input type="text" name="su"/><br/>
<input type="submit" value="결과"/><br/>
</form>

<br/>

<c:if test="${!empty param.su }">

	<c:choose>
		<c:when test="${param.su%3==0 && param.su%4==0 }">
			${param.su } : 3과 4의 배수<br/>
		</c:when>
	
		<c:when test="${param.su%3==0 }">
			${param.su } : 3의 배수<br/>
		</c:when>
		
		<c:when test="${param.su%4==0 }">
			${param.su } : 4의 배수<br/>
		</c:when>
		
		<c:otherwise>
			${param.su } : 3과 4의 배수가 아님<br/>
		</c:otherwise>
	
	</c:choose>

</c:if>

</body>
</html>