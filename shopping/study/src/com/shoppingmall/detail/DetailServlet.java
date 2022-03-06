package com.shoppingmall.detail;

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
import com.util.MyUtil;

public class DetailServlet extends HttpServlet {

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
		DetailDAO dao = new DetailDAO(conn);

		DetailPage detailPage = new DetailPage();

		String uri = req.getRequestURI();

		String url;

		// ���� ���� ���
		String root = getServletContext().getRealPath("/");
		String path = root + "pds" + File.separator + "saveFile";

		File f = new File(path);

		if (!f.exists()) {
			f.mkdirs();
		}

		if (uri.indexOf("detail.do") != -1) {
			
			String num = req.getParameter("num");

			ProductDTO dto = dao.getImage(Integer.parseInt(num));
			req.setAttribute("dto", dto);
			
			List<ProductDTO> lists = dao.getRecommendLists(dto.getTypeNum());
			req.setAttribute("lists", lists);

			String imagePath = cp + "/pds/saveFile";
			req.setAttribute("imagePath", imagePath);

			String orderUrl = cp + "/shop/order/order.do";
			req.setAttribute("orderUrl", orderUrl);

			url = "/shoppingmall/detail/detail.jsp";
			forward(req, resp, url);

		}

	}

}
