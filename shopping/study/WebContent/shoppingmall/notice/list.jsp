<%@page import="com.shoppingmall.notice.NoticeDTO"%>
<%@page import="com.shoppingmall.notice.NoticeDAO"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.util.MyUtil"%>
<%@page import="java.util.List"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	
	Connection conn = DBConn.getConnection();
	NoticeDAO dao = new NoticeDAO(conn);
	
	MyUtil myUtil = new MyUtil();
	
	//넘어온 페이지 번호(myUtil...에서 get방식으로 article,updated,deleted)
	String pageNum = request.getParameter("pageNum");
	
	int currentPage = 1;
	
	if(pageNum!=null){
		currentPage = Integer.parseInt(pageNum); //여기에는 변수명을 쓰는거라 따옴표를 쓰면 안된다
		
	}
	
	//검색----------------------
	String searchKey =request.getParameter("searchKey");
	String searchValue =request.getParameter("searchValue");
	
	if(searchValue!=null){
		
		if(request.getMethod().equalsIgnoreCase("GET")){  //사용자가 보낸 코딩 리퀘스트로넘어온 포스트데이터가 대소문자를 가리지않고 넘어오느냐
			searchValue = URLDecoder.decode(searchValue, "UTF-8"); 
		}
	}else{
		searchKey = "subject";
		searchValue = "";
	}
	
	
	//검색----------------------
	
	
	//전체데이터 갯수 구하기 
	int dataCount = dao.getDataCount(searchKey,searchValue);
	
	//하나의 페이지에 표시할 데이터 갯수
	int numPerPage = 3;
	
	//전체 페이지 갯수
	int totalPage = myUtil.getPageCount(numPerPage, dataCount);
	
	//데이터를 삭제해서 페이지가 줄었을때 페이지 줄이는 코딩이다 반드시사용해야함 
	if(currentPage > totalPage){
		currentPage = totalPage;
	}
	
	//가져올 데이터의 시작과 끝 
	int start = (currentPage -1)*numPerPage+1;
	int end = currentPage*numPerPage;
	
	List<NoticeDTO> lists = dao.getLists(start, end,searchKey,searchValue);
	
	//검색------------------------------------------------
	String param = "";
	if(!searchValue.equals("")){
		
		param = "?searchKey=" + searchKey;
		param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
	}
	//검색------------------------------------------------
	
	
	
	//페이징 처리
	String listUrl = "list.jsp" + param;
	
	String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
	
	//글보기 주소 
	String articleUrl = cp + "/shoppingmall/notice/article.jsp";
	
	if(param.equals("")){
		articleUrl += "?pageNum=" + currentPage;  //page넘하나만 들어감   //검색을 안했다면
	}else{
		articleUrl += param + "&pageNum=" + currentPage;  //서치키 서치벨류 pn 들어감  //검색을 했다면
	}
	

	DBConn.close();
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게 시 판</title>

<link rel="stylesheet" type="text/css" href="<%=cp%>/shoppingmall/notice/notice_files/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/shoppingmall/notice/notice_files/css/list.css"/>

<script type="text/javascript">

	function sendIt() {
		var f = document.searchForm;
		
		f.action = "<%=cp%>/shoppingmall/notice/list.jsp";
		f.submit();
	}

	


</script>


</head>
<body>

<div id="bbsList">

	<div id="bbsList_title">
		게 시 판
	</div>
	<div id="bbsList_header">
		<div id="leftHeader">
		<form action="" method="post" name="searchForm">
			<select name="searchKey" class="selectField">
				<option value="subject">제목</option>
				<option value="name">작성자</option>
				<option value="content">내용</option>	
			</select>
			<input type="text" name="searchValue" class="textField"/>
			<input type="button" value=" 검 색 " class="btn2" onclick="sendIt();"/>
		</form>
		</div>
		<div id="rightHeader">
			<input type="button" value=" 글올리기 " class="btn2" 
			onclick="javascript:location.href='<%=cp%>/shoppingmall/notice/created.jsp';"/>
		</div>
	</div>
	<div id="bbsList_list">
		<div id="title">
			<dl>
				<dt class="num">번호</dt>
				<dt class="subject">제목</dt>
				<dt class="name">작성자</dt>
				<dt class="created">작성일</dt>
				<dt class="hitCount">조회수</dt>
			</dl>
		</div>
		<div id="lists">
		<%for(NoticeDTO dto : lists) { %>
			<dl>
				<dd class="num"><%=dto.getNum() %></dd>
				<dd class="subject">
				<a href="<%=articleUrl %>&num=<%=dto.getNum()%>"> 
				<%=dto.getSubject() %></a>
				</dd>
				<dd class="name"><%=dto.getName() %></dd>
				<dd class="created"><%=dto.getCreated() %></dd>
				<dd class="hitCount"><%=dto.getHitCount() %></dd>
			</dl>
			<%} %>
		</div>
		<div id="footer">
			<%=pageIndexList %> 
		</div>

	</div>
	
</div>






</body>
</html>