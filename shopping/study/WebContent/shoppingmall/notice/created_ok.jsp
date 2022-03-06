
<%@page import="com.shoppingmall.notice.NoticeDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<jsp:useBean id="dto" class="com.shoppingmall.notice.NoticeDTO" scope="page"/>
<jsp:setProperty property="*" name="dto"/>

<%

	Connection conn = DBConn.getConnection();
	NoticeDAO dao = new NoticeDAO(conn);

	int maxNum = dao.getMaxNum();
	
	dto.setNum(maxNum + 1);
	dto.setIpAddr(request.getRemoteAddr());
	
	dao.insertData(dto);
	
	DBConn.close();
	
	response.sendRedirect("notice.do");
%>