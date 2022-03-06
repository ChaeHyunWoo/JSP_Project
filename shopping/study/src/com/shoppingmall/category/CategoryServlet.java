package com.shoppingmall.category;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoppingmall.product.ProductDTO;
import com.util.DBConn;

public class CategoryServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	protected void forward(HttpServletRequest req, HttpServletResponse resp, String url) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req,resp);
	}		
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String cp = req.getContextPath();
		
		Connection conn = DBConn.getConnection();
		CategoryDAO dao = new CategoryDAO(conn);
		
		CategoryPage categoryPage = new CategoryPage();
		
		String uri = req.getRequestURI();
		
		String url;	
		
		if(uri.indexOf("category.do")!=-1) {
			
			String pageNum = req.getParameter("pageNum");
			req.setAttribute("pageNum", pageNum);			
			
			String brandNum = req.getParameter("brandNum");		
			String typeNum = req.getParameter("typeNum");
			int dataCount = dao.getDataCount(brandNum, typeNum);
			req.setAttribute("dataCount", dataCount);			
			
			int currentPage = 1;
			if(pageNum!=null)
				currentPage = Integer.parseInt(pageNum);
			
			int numPerPage = 8;
			int totalPage = categoryPage.getPageCount(numPerPage, dataCount);
			
			if(currentPage>totalPage)
				currentPage = totalPage;
			
			int start = (currentPage-1)*numPerPage+1;
			int end = currentPage*numPerPage;
			
			String listUrl = cp + "/shop/category/category.do";
			req.setAttribute("listUrl", listUrl);
			
			String sort = req.getParameter("sort");
			String strSort = "new";
			if(sort==null)
				sort = strSort;				
			
			String pageIndexList = 
					categoryPage.pageIndexList(currentPage, totalPage, listUrl, sort);	
			req.setAttribute("pageIndexList", pageIndexList);				
			
			List<ProductDTO> brandLists = 
					dao.getBrandLists();			
			req.setAttribute("brandLists", brandLists);			
			
			List<ProductDTO> typeLists = 
					dao.getTypeLists();			
			req.setAttribute("typeLists", typeLists);				
				
			List<ProductDTO> lists = 
					dao.getLists(start, end, sort, brandNum, typeNum);			
			req.setAttribute("lists", lists);			
			req.setAttribute("listsSize", lists.size());
			
			if(brandNum==null) {
				req.setAttribute("ALL", "ALL");
			}
			
			String imagePath = cp + "/pds/saveFile";
			req.setAttribute("imagePath", imagePath);				
			
			String detailUrl = cp + "/shop/detail/detail.do";
			req.setAttribute("detailUrl", detailUrl);				
			
			url = "/shoppingmall/category/category.jsp";
			forward(req, resp, url);
			
		} else if(uri.indexOf("category_1.do")!=-1) {
			
			ProductDTO dto = dao.getImage();
			
			String imagePath = cp + "/pds/saveFile";
			
			req.setAttribute("dto", dto);
			req.setAttribute("imagePath", imagePath);
			
			url = "/shoppingmall/category/category.jsp";
			forward(req, resp, url);			
			
		}
		
		
		
		
	}

}
