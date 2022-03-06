package com.shoppingmall.product;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.shoppingmall.category.CategoryPage;
import com.util.DBConn;
import com.util.FileManager;
import com.util.MyUtil;

public class ProductServlet extends HttpServlet {

	/**
	 * 
	 */
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
		ProductDAO dao = new ProductDAO(conn);

		MyUtil myUtil = new MyUtil();
		CategoryPage categoryPage = new CategoryPage();
		
		String uri = req.getRequestURI();

		String url;

		// ���� ���� ���
		String root = getServletContext().getRealPath("/");
		String path = root + "pds" + File.separator + "saveFile";

		File f = new File(path);

		if (!f.exists()) {
			f.mkdirs();
		}
		
		if (uri.indexOf("productSave.do") != -1) {

			String pageNum = req.getParameter("pageNum");

			int currentPage = 1;

			if (pageNum != null)
				currentPage = Integer.parseInt(pageNum);

			int dataCount = dao.getDataCount();

			int numPerPage = 4;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if (currentPage > totalPage)
				currentPage = totalPage;

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;

			req.setAttribute("dataCount", dataCount);
			req.setAttribute("pageNum", currentPage);
			req.setAttribute("totalPage", totalPage);
			
			List<ProductDTO> lists = dao.getLists(start, end);			
			req.setAttribute("lists", lists);
			
			String deletePath = cp + "/shop/product/delete.do";
			req.setAttribute("deletePath", deletePath);
			
			String downloadPath = cp + "/shop/product/download.do";
			req.setAttribute("downloadPath", downloadPath);
			
			String imagePath = cp + "/pds/saveFile";
			req.setAttribute("imagePath", imagePath);
			
			String listUrl = cp + "/shop/product/productSave.do";
			String sort = "new";			
			String pageIndexList = categoryPage.pageIndexList(currentPage, totalPage, listUrl, sort);			
			req.setAttribute("pageIndexList", pageIndexList);
			
			listUrl = cp + "/shop/category/category.do";
			req.setAttribute("listUrl", listUrl);					
			
			String articleUrl = cp + "/shop/product/productSave.do?pageNum=" + currentPage;			
			req.setAttribute("articleUrl", articleUrl);
			
			List<ProductDTO> brandlists = dao.getBrandLists();			
			req.setAttribute("brandlists", brandlists);			
			req.setAttribute("brandlists2", brandlists);				
			
			List<ProductDTO> typelists = dao.getTypeLists();			
			req.setAttribute("typelists", typelists);				
			
			url = "/shoppingmall/product/productSave.jsp";
			forward(req, resp, url);

		} else if (uri.indexOf("productSave_ok.do") != -1) {

			// ���� ���ε�
			String encType = "UTF-8";
			int maxSize = 10 * 1024 * 1024;

			MultipartRequest mr = new MultipartRequest(req, path, maxSize, encType, new DefaultFileRenamePolicy());

			// ���� ���� DB�� ����
			if (mr.getFile("upload") != null) {

				ProductDTO dto = new ProductDTO();

				int maxNum = dao.getMaxNum("product");

				dto.setNum(maxNum + 1);
				dto.setSubject(mr.getParameter("subject"));
				dto.setBrandNum(Integer.parseInt(mr.getParameter("brandNum")));
				dto.setBrandName(dao.getBrandName(dto).getBrandName());				
				dto.setTypeNum(Integer.parseInt(mr.getParameter("typeNum")));
				dto.setTypeName(dao.getTypeName(dto).getTypeName());
				dto.setPrice(Integer.parseInt(mr.getParameter("price")));
				dto.setSaveFileName(mr.getFilesystemName("upload"));
				dto.setDetailImageFileName(mr.getFilesystemName("detailImage"));

				dao.insertData(dto);

			}

			url = cp + "/shop/product/productSave.do";
			resp.sendRedirect(url);

		} else if (uri.indexOf("productDelete.do") != -1) {

			int num = Integer.parseInt(req.getParameter("num"));
			String pageNum = req.getParameter("pageNum");

			ProductDTO dto = dao.getReadData(num);

			// ���� ����
			FileManager.doFileDelete(dto.getSaveFileName(), path);
			FileManager.doFileDelete(dto.getDetailImageFileName(), path);
			
			// DB ����
			dao.deleteData("product",num);

			String param = "pageNum=" + pageNum;

			url = cp + "/shop/product/productSave.do?" + param;
			resp.sendRedirect(url);

		} else if (uri.indexOf("brandSave.do") != -1) {

			int dataCount = dao.getDataCount();

			req.setAttribute("dataCount", dataCount);

			List<ProductDTO> lists = dao.getBrandLists();			
			req.setAttribute("lists", lists);
			
			String articleUrl = cp + "/shop/product/brandSave.do";			
			req.setAttribute("articleUrl", articleUrl);			
			
			String listUrl = cp + "/shop/category/category.do";
			req.setAttribute("listUrl", listUrl);				
			
			List<ProductDTO> brandlists = dao.getBrandLists();			
			req.setAttribute("brandlists", brandlists);				
			
			url = "/shoppingmall/product/brandSave.jsp";
			forward(req, resp, url);

		} else if (uri.indexOf("brandSave_ok.do") != -1) {

			int maxNum = dao.getMaxNum("brand");

			ProductDTO dto = new ProductDTO();

			dto.setBrandNum(maxNum + 1);
			dto.setBrandName(req.getParameter("brandName"));

			dao.insertBrand(dto);

			url = cp + "/shop/product/brandSave.do";
			resp.sendRedirect(url);

		} else if (uri.indexOf("brandDelete.do") != -1) {

			int num = Integer.parseInt(req.getParameter("num"));

			dao.deleteData("brand",num);

			url = cp + "/shop/product/brandSave.do";
			resp.sendRedirect(url);			
			
		} else if (uri.indexOf("typeSave.do") != -1) {

			int dataCount = dao.getDataCount();

			req.setAttribute("dataCount", dataCount);

			List<ProductDTO> lists = dao.getTypeLists();			
			req.setAttribute("lists", lists);
			
			String articleUrl = cp + "/shop/product/typeSave.do";			
			req.setAttribute("articleUrl", articleUrl);				
			
			String listUrl = cp + "/shop/category/category.do";
			req.setAttribute("listUrl", listUrl);				
			
			List<ProductDTO> brandlists = dao.getBrandLists();			
			req.setAttribute("brandlists", brandlists);				
			
			url = "/shoppingmall/product/typeSave.jsp";
			forward(req, resp, url);			
			
		} else if (uri.indexOf("typeSave_ok.do") != -1) {

			int maxNum = dao.getMaxNum("type");

			ProductDTO dto = new ProductDTO();

			dto.setTypeNum(maxNum + 1);
			dto.setTypeName(req.getParameter("typeName"));

			dao.insertType(dto);
			
			url = cp + "/shop/product/typeSave.do";
			resp.sendRedirect(url);	
			
		} else if (uri.indexOf("typeDelete.do") != -1) {

			int num = Integer.parseInt(req.getParameter("num"));

			dao.deleteData("type",num);

			url = cp + "/shop/product/typeSave.do";
			resp.sendRedirect(url);			
			
		}

	}

}
