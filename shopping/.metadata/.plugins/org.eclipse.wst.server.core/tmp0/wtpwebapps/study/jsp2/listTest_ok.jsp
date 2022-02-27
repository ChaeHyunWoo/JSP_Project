
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String msg = request.getParameter("msg");
	String[] rightItem = request.getParameterValues("rightItem");
	
	
	msg = msg.replaceAll("\n", "<br/>");
	
	String str = "";
	if(rightItem != null) {
		for(String temp : rightItem) {
			
			str += temp + " ";
		}
	}


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
받는사람: <%=str %><br/>
메세지: <%=msg %><br/>
</body>
</html>