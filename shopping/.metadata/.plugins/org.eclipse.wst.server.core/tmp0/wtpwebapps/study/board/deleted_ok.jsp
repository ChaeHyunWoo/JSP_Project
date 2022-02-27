<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.board.BoardDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
	
	Connection conn = DBConn.getConnection();
	BoardDAO dao = new BoardDAO(conn);
	
	dao.deleteData(num);
	
	//가지고 들어오는 코딩
	String searchKey = request.getParameter("searchKey");
	String searchValue = request.getParameter("searchValue");
	
	if(searchValue != null) {
			
		if(request.getMethod().equalsIgnoreCase("GET")) {
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
			
	}else {
		searchKey = "subject";
		searchValue = "";
	}
	
	
	//가지고 나가는 코딩
	String param = "";
	//null이 아니면 검색을 한 것이다.
	if(!searchValue.equals("")) {
		
		//이때 주소를 만들어준다
		param = "&searchKey=" + searchKey;
		param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		
	}
	
	
	
	
	DBConn.close();
	
	response.sendRedirect("list.jsp?pageNum=" + pageNum + param);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>