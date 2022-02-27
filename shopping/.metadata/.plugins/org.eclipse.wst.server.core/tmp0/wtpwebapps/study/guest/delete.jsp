<%@page import="com.guest.GuestDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	
	int num=Integer.parseInt(request.getParameter("num"));
	
	Connection conn=DBConn.getConnection();
	GuestDAO dao = new GuestDAO(conn);
	
	dao.deleteData(num);
	
	DBConn.close();
	
	response.sendRedirect("guest.jsp"); 
	
%>
