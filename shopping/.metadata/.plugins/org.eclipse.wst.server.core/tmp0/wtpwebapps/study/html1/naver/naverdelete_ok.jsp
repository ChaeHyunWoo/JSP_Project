<%@page import="com.naver.NaverDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();

String id = request.getParameter("id");

Connection conn = DBConn.getConnection();
NaverDAO dao = new NaverDAO(conn);

int result = dao.deleteData(id);

DBConn.close();

response.sendRedirect("naverList.jsp"); //list.jsp로 돌아간다.

%>