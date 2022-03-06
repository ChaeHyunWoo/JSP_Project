package com.shoppingmall.brand;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shoppingmall.product.ProductDAO;
import com.shoppingmall.product.ProductDTO;
import com.util.DBConn;

public class BrandServlet extends HttpServlet {

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

		String uri = req.getRequestURI();

		String url;

		if (uri.indexOf("brandSave.do") != -1) {

			url = "/shoppingmall/brandSave/brandSave.jsp";
			forward(req, resp, url);

		} else if (uri.indexOf("brandSave_ok.do") != -1) {

			int maxNum = dao.getMaxNum("brand");

			ProductDTO dto = new ProductDTO();

			dto.setBrandNum(maxNum + 1);
			dto.setBrandName(req.getParameter("brandName"));

			dao.insertBrand(dto);

			url = cp + "/shop/brand/brandSave.do";
			resp.sendRedirect(url);

		}

	}

}
