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
<title>파일 올리기</title>
</head>
<body>

<form action="<%=cp%>/file/write_ok.do" method="post" enctype="multipart/form-data">

제목: <input type="text" name="subject"/><br/>
파일: <input type="file" name="upload"/><br/>
<input type="submit" value="전송"/>
</form>

<input type="button" value=" 리스트 " 
	onclick="javascript:location.href='<%=cp%>/file/list.do';"/>



</body>
</html>