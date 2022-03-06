 package com.shoppingmall.notice;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBConn;
import com.util.MyUtil;

public class NoticeServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	protected void forward(HttpServletRequest req, HttpServletResponse resp, String url) throws ServletException, IOException {
		
		RequestDispatcher rd = 
				req.getRequestDispatcher(url);
		
		rd.forward(req, resp); 
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//req.setCharacterEncoding("UTF-8");
		
		
		
		Connection conn = DBConn.getConnection();
		NoticeDAO dao = new NoticeDAO(conn);
		
		MyUtil myUtil = new MyUtil();
		
		String cp = req.getContextPath(); //->/study
		String uri = req.getRequestURI(); //->/study/sboard/created.do
		
		String url; //모든클래스에서 필요한 객체들 
		
		//--------------------------------------------
		 if(uri.indexOf("notice.do")!=-1) {	
			 System.out.println(cp);
			 System.out.println(uri);
			String pageNum = req.getParameter("pageNum");
			
			int currentPage = 1;
			System.out.println(pageNum);
			if(pageNum!=null)
				currentPage = Integer.parseInt(pageNum);
			
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
			
			if(searchValue==null) {
				
				searchKey = "subject";
				searchValue = "";
			}else{
				if(req.getMethod().equalsIgnoreCase("GET")) {
					searchValue = URLDecoder.decode(searchValue,"UTF-8");
				}
			
			}
			
			int dataCount = dao.getDataCount(searchKey, searchValue);
			
			int numPerPage = 10;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
			
			if(currentPage>totalPage)
				currentPage = totalPage;
			
			int start = (currentPage-1)*numPerPage+1;
			int end = currentPage*numPerPage;
			
			
			List<NoticeDTO> lists =
					dao.getLists(start, end, searchKey, searchValue);
			
			String param = "";
			if(searchValue!=null&&!searchValue.equals("")) {
				param = "searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
			
			String listUrl = cp + "/shop/notice/notice.do";
			
			if(!param.equals("")) {
				listUrl += "?" + param;
			}
			String pageIndexList = 
					myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			String articleUrl = cp + "/shop/notice/article.do?pageNum=" + currentPage;
			
			if(!param.equals(""))  {
				articleUrl += "&" + param;
			}
			
			//포워딩 페이지 데이터 넘기기 
			req.setAttribute("lists", lists);
			req.setAttribute("articleUrl", articleUrl);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			
			
			url = "/shoppingmall/notice/notice.jsp";
			forward(req, resp, url);
			//-----------------------------
			
		 }else if(uri.indexOf("created.do")!=-1) {
			 
				
				url = "/shoppingmall/notice/created.jsp";
				forward(req, resp, url);
			 
			//-----------------------------
		 }else if(uri.indexOf("created_ok.do")!=-1) {
			 
			 NoticeDTO dto = new NoticeDTO();
			 
			 int maxNum = dao.getMaxNum();
				
			dto.setNum(maxNum + 1);
			dto.setSubject(req.getParameter("subject"));
			dto.setName(req.getParameter("name"));
			dto.setEmail(req.getParameter("email"));
			dto.setPwd(req.getParameter("pwd"));
			dto.setContent(req.getParameter("content"));
			dto.setIpAddr(req.getRemoteAddr());
				
				dao.insertData(dto);
				
				url = cp + "/shop/notice/notice.do";
			    resp.sendRedirect(url);
		
		 }else if(uri.indexOf("article.do")!=-1) {	
				
				int num = Integer.parseInt(req.getParameter("num"));
				String pageNum = req.getParameter("pageNum");
				
				String searchKey = req.getParameter("searchKey");
				String searchValue = req.getParameter("searchValue");
				
				if(searchValue!=null) {
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
				//조회수
				dao.updateHitCount(num);
				
				NoticeDTO dto = dao.getReadData(num);
				
				if(dto==null) {
					url = cp + "/shop/notice/notice.do";
					resp.sendRedirect(url);
				}
				//라인수
				int lineSu = dto.getContent().split("\n").length;
				
				dto.setContent(dto.getContent().replaceAll("\n", "<br/>"));
				
				String param = "pageNum=" + pageNum;
				if(searchValue!=null&&!searchValue.equals("")) {
					
					param += "&searchKey=" + searchKey;
					param += "&searchValue=" +
							URLEncoder.encode(searchValue, "UTF-8");
					
				}
				
				req.setAttribute("dto", dto);
				req.setAttribute("params", param);
				req.setAttribute("lineSu", lineSu);
				req.setAttribute("pageNum", pageNum);
				
				url = "/shoppingmall/notice/article.jsp";
				forward(req, resp, url); 
				
		 }else if(uri.indexOf("updated.do")!=-1) {
				
				int num = Integer.parseInt(req.getParameter("num"));
				String pageNum = req.getParameter("pageNum");
				
				String searchKey = req.getParameter("searchKey");
				String searchValue = req.getParameter("searchValue");
				
				if(searchValue!=null) {
					searchValue =
							URLDecoder.decode(searchValue, "UTF-8");  
					
				}
				
				NoticeDTO dto = dao.getReadData(num);
				
				
				if(dto==null) {
					url = cp + "shop/notice/notice.do";
					resp.sendRedirect(url);
				}
				
				String param = "pageNum=" + pageNum;
				
				if(searchValue!=null&&!searchValue.equals("")) {
					param += "&searchKey=" + searchKey;
					param += "&searchValue=" + 	
							URLEncoder.encode(searchValue, "UTF-8");
					
				}
				
				req.setAttribute("dto", dto);
				req.setAttribute("pageNum", pageNum);
				req.setAttribute("params", param);
				req.setAttribute("searchKey", searchKey);
				req.setAttribute("searchValue", searchValue);
				
				url = "/shoppingmall/notice/updated.jsp";
				forward(req, resp, url);
			    
		 }else if(uri.indexOf("updated_ok.do")!=-1) {
				
				String pageNum = req.getParameter("pageNum");
				
				String searchKey = req.getParameter("searchKey");
				String searchValue = req.getParameter("searchValue");
				
				
				NoticeDTO dto = new NoticeDTO();
				
				dto.setNum(Integer.parseInt(req.getParameter("num")));
				dto.setSubject(req.getParameter("subject"));
				dto.setName(req.getParameter("name"));
				dto.setEmail(req.getParameter("email"));
				dto.setPwd(req.getParameter("pwd"));
				dto.setContent(req.getParameter("content"));
				
				
				dao.updateData(dto);
				
				String param = "pageNum=" + pageNum;
				
				if(searchValue!=null&&!searchValue.equals("")) {
					param += "&searchKey=" + searchKey;
					param += "&searchValue=" + 
					URLEncoder.encode(searchValue, "UTF-8");
					
				}
				url = cp + "/shop/notice/notice.do?" + param;
				resp.sendRedirect(url);
			
		 }else if(uri.indexOf("deleted_ok.do")!=-1) {
				
				int num = Integer.parseInt(req.getParameter("num"));
				String pageNum = req.getParameter("pageNum");
				
				String searchKey = req.getParameter("searchKey");
				String searchValue = req.getParameter("searchValue");
				
				dao.deleteData(num);
				
				String param = "pageNum=" + pageNum;
				
				if(searchValue!=null&&!searchValue.equals("")) {
					param += "&searchKey=" + searchKey;
					param += "&searchValue=" + 
					URLEncoder.encode(searchValue, "UTF-8");
					
				}
				url = cp + "/shop/notice/notice.do?" + param;
				
				resp.sendRedirect(url);
		}
		
	}

}
