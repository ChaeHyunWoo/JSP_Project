<%@page import="com.guest.GuestDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

%>

<jsp:useBean id="dto" class="com.guest.GuestDTO" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>


<!-- DB연결해주기 -->
<%
	Connection conn = DBConn.getConnection();
	GuestDAO dao = new GuestDAO(conn);
	
	int maxNum = dao.getMaxNum(); //최대값 구하기
	
	dto.setNum(maxNum + 1); //dto의 setNum에 maxNum+1의 값을 넣는다
	dto.setIpAddr(request.getRemoteAddr()); //request로 받은 걸 넣는다
	
	int result = dao.insertData(dto);
	
	DBConn.close();
	
	//response.sendRedirect(cp + "/guest/guest.jsp"); 이렇게 써도 된다. 
	response.sendRedirect("guest.jsp");

%>