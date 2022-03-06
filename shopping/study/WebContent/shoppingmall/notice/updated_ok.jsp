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
					
				if(request.getMethod().equalsIgnoreCase("GET")){  //리퀘스트로넘어온 포스트데이터가 대소문자를 가리지않고 넘어오느냐
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}else{
				searchKey = "subject";
				searchValue = "";
			}
	//검색----------------------
		
	//검색------------------------------------------------
			String param = "";
			if(!searchValue.equals("")){
				
				param = "&searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
	//검색------------------------------------------------	
	
			
%>

<jsp:useBean id="dto" class="com.shoppingmall.notice.NoticeDTO" scope="page"/>
<jsp:setProperty property="*" name="dto"/>


<%
	String pageNum = request.getParameter("pageNum");

	Connection conn = DBConn.getConnection();
	NoticeDAO dao = new NoticeDAO(conn);
	
	dao.updateData(dto);
	
	DBConn.close();
	
	response.sendRedirect("list.jsp?pageNum=" + pageNum + param);


%>
