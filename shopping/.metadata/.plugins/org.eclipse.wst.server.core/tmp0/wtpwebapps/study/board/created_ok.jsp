<%@page import="com.board.BoardDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<jsp:useBean id="dto" class="com.board.BoardDTO" scope="page"/>
<jsp:setProperty property="*" name="dto"/>

<%
	Connection conn =DBConn.getConnection();
	BoardDAO dao = new BoardDAO(conn);
	
	//DAO의 num최대값 구하는걸로 구하기
	int maxNum = dao.getMaxNum();
	
	dto.setNum(maxNum + 1); //최대값 +1하면서 새로 들어가는 데이터의 넘버가 된다.(ex게시판 번호)
	dto.setIpAddr(request.getRemoteAddr()); //클라이언트ip를 받아내서 dto에 넣는다.
	
	dao.insertData(dto);
	
	DBConn.close();
	
	
	//애는 insert시켰으니까 클라이언트한테 명령을 줘야한다,
	response.sendRedirect("list.jsp"); //list.jsp로 넘어가깅


%>