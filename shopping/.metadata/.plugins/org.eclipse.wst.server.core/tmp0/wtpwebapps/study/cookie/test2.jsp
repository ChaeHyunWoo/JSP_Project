<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	
	//쿠키는 여러개를 만들 수 있기 때문에 1개만들더라도 배열로 받아야 한다.
	Cookie [] c = request.getCookies();//서버로부터 받는요청은 request
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	if(c!=null){
		
		//쿠키값 읽어내기
		for(Cookie ck : c){
			
			out.print("쿠키 이름 : ");
			out.print(ck.getName());
			out.print(", 쿠키의 값 : ");
			String str = ck.getValue();
			
			//addr이면 한글은 디코딩으로 받는다.
			if(ck.getName().equals("addr")){
				str = URLDecoder.decode(str, "UTF-8");
			}
			
			out.print(str + "<br/>");
		}
	}


%>


</body>
</html>