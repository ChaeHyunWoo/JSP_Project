<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	//위치, 경로, 사이즈 파일을 보낼때 알아두어야함 Context가 나오면 글로벌 모든 폴더와 파일에서 사용가능
	String root = pageContext.getServletContext().getRealPath("/");
	
	String path = root + "pds" + File.separator + "saveData"; //파일의 위치를 정하고.
	
	//String path = "c:\\pds\\saveData";
	
	File f = new File(path);
	if(!f.exists()){ //f 의 경로가 존재하지 않으면
		f.mkdirs(); //경로의 파일을 만들어라
	}
	
	String encType = "UTF-8";
	int maxFileSize = 10*1024*1024; //10메가바이트.
	
	try{
		
		//파일 업로드
		MultipartRequest mr =
			new MultipartRequest(request,path,maxFileSize,encType,
					new DefaultFileRenamePolicy()); //파일 업로드. 파일은 리퀘스트에 담겨서옴./경로/맥스사이즈
					
		
		//DB에 저장하기위해 파일 정보 추출
		
		out.print("제목: " + mr.getParameter("subject")+"<br/>"); //파일의 정보는 위의 mr에 들어가있다.
		out.print("서버에 저장된 파일 이름: " + 
			mr.getFilesystemName("upload") + "<br/>");
		out.print("업로드한 파일명: " +
			mr.getOriginalFileName("upload") + "<br/>");
		out.print("파일 타입: " + mr.getContentType("upload") + "<br/>");
		
		File file = mr.getFile("upload");
		out.print("파일 크키: " + file.length() + "<br/>");
		
		
	}catch(Exception e){
		
	}
		
%>