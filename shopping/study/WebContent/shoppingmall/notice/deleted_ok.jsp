<%@page import="com.shoppingmall.notice.NoticeDAO"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	//검색----------------------
	String searchKey =request.getParameter("searchKey");
	String searchValue =request.getParameter("searchValue");
		
	if(searchValue!=null){
			
		if(request.getMethod().equalsIgnoreCase("GET")){  
			searchValue = URLDecoder.decode(searchValue, "UTF-8");
		}
	}else{
		searchKey = "subject";
		searchValue = "";
	}
	//검색----------------------
	
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
	
	
	Connection conn = DBConn.getConnection();
	NoticeDAO dao = new NoticeDAO(conn);
	
	dao.deleteData(num);
	
	//검색------------------------------------------------
	String param = "";
	if(!searchValue.equals("")){
		
	param = "&searchKey=" + searchKey;
	param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
	}

	
	DBConn.close();
	
	response.sendRedirect("shop/notice/notice.do?pageNum=" + pageNum);
	//response.sendRedirect("list.jsp?pageNum=" + pageNum);
	
	
%>
