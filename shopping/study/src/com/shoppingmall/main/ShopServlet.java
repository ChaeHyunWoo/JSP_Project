package com.shoppingmall.main;

import java.io.File;
import java.io.IOException;

import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoppingmall.category.CategoryDAO;

import com.shoppingmall.category.CategoryPage;
import com.shoppingmall.product.ProductDTO;
import com.util.DBConn;


public class ShopServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}

	protected void forward(HttpServletRequest req, HttpServletResponse resp, String url)
			throws ServletException, IOException {

		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);

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

	
		String root = getServletContext().getRealPath("/");
		String path = root + "pds" + File.separator + "saveFile";

		File f = new File(path);

		if (!f.exists()) {
			f.mkdirs();
		}

		if (uri.indexOf("main.do") != -1) {

			String pageNum = req.getParameter("pageNum");
			String sort = req.getParameter("sort");

			String brandNum = req.getParameter("brandNum");	
			
			String typeNum = req.getParameter("typeNum");
		
			
			
			int currentPage = 1;
			String strSort = "new";

			if (pageNum != null)
				currentPage = Integer.parseInt(pageNum);

			if (sort == null)
				sort = strSort;

			int dataCount = dao.getDataCount(brandNum, typeNum);

			int numPerPage = 8;
			int totalPage = categoryPage.getPageCount(numPerPage, dataCount);

			if (currentPage > totalPage)
				currentPage = totalPage;

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;

			
			List<ProductDTO> lists = dao.getLists(start, end, sort, brandNum, typeNum);
			
			List<ProductDTO> brandLists = dao.getBrandLists();
			
			String listUrl = cp + "/shop/category/category.do";

			String pageIndexList = categoryPage.pageIndexList(currentPage, totalPage, listUrl, sort);

			
			String detailUrl = cp + "/shop/detail/detail.do";
			req.setAttribute("detailUrl", detailUrl);		
			
			
			/* pageIndexList = pageIndexList + "&sort=" + sort; */
			String imagePath = cp + "/pds/saveFile";

			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("pageNum", currentPage);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("imagePath", imagePath);
			req.setAttribute("listUrl", listUrl);
			
			req.setAttribute("brandLists", brandLists);
			
			
			url = "/shoppingmall/main/main.jsp";
			forward(req, resp, url);

		}
	}

}
