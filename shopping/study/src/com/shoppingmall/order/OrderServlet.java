package com.shoppingmall.order;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoppingmall.join.CustomInfo;
import com.shoppingmall.join.JoinDAO;
import com.shoppingmall.join.JoinDTO;
import com.shoppingmall.product.ProductDTO;
import com.util.DBConn;

public class OrderServlet extends HttpServlet{

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
		OrderDAO dao = new OrderDAO(conn);
		
		String uri = req.getRequestURI();
		
		String url;
		
		if(uri.indexOf("order.do")!=-1) {
			
			String num = req.getParameter("num");
			
			ProductDTO dto = dao.getProduct(num);
			
			String imagePath = cp + "/pds/saveFile";
			
			req.setAttribute("dto", dto);
			req.setAttribute("imagePath", imagePath);
			
			HttpSession session = req.getSession();
			CustomInfo info = (CustomInfo)session.getAttribute("customInfo");
			
			JoinDTO memberDto = dao.getReadData(info.getUserId());
			req.setAttribute("memberDto", memberDto);			
			
			String listUrl = cp + "/shop/category/category.do";
			req.setAttribute("listUrl", listUrl);
			
			List<ProductDTO> brandLists = 
					dao.getBrandLists();			
			req.setAttribute("brandLists", brandLists);			
			
			String cnt = req.getParameter("cnt");
			req.setAttribute("cnt", cnt);	
			
			url = "/shoppingmall/order/order.jsp";
			forward(req, resp, url);	
			
		} else if(uri.indexOf("complete.do")!=-1) {

			OrderDTO dto = new OrderDTO();

			int maxNum = dao.getMaxNum("shopOrder");

			dto.setNum(maxNum + 1);
			dto.setUserId(req.getParameter("userId"));
			dto.setProductNum(Integer.parseInt(req.getParameter("productNum")));
			dto.setSm_memo(req.getParameter("sm_memo"));				
			dto.setSm_name(req.getParameter("sm_name"));
			dto.setSm_hphone1(req.getParameter("sm_hphone1"));
			dto.setSm_hphone2(req.getParameter("sm_hphone2"));
			dto.setSm_hphone3(req.getParameter("sm_hphone3"));
			dto.setSm_email(req.getParameter("sm_email"));
			dto.setSm_addr(req.getParameter("sm_addr"));
			dto.setSd_name(req.getParameter("sd_name"));
			dto.setSd_hphone1(req.getParameter("sd_hphone1"));
			dto.setSd_hphone2(req.getParameter("sd_hphone2"));
			dto.setSd_hphone3(req.getParameter("sd_hphone3"));
			dto.setSd_email(req.getParameter("sd_email"));
			dto.setSd_addr(req.getParameter("sd_addr"));
			dto.setSm_payway(req.getParameter("sm_payway"));
			dto.setCnt(Integer.parseInt(req.getParameter("cnt")));
			
			dao.insertData(dto);	
			
			req.setAttribute("dto", dto);
			
			ProductDTO productDto = new ProductDTO();
			
			productDto.setSubject(req.getParameter("subject"));
			productDto.setBrandName(req.getParameter("brandName"));
			productDto.setTypeName(req.getParameter("typeName"));
			productDto.setPrice(Integer.parseInt(req.getParameter("price")));
			productDto.setSaveFileName(req.getParameter("saveFileName"));
			req.setAttribute("productDto", productDto);
			
			String imagePath = cp + "/pds/saveFile";
			req.setAttribute("imagePath", imagePath);			
			
			String listUrl = cp + "/shop/category/category.do";
			req.setAttribute("listUrl", listUrl);
			
			List<ProductDTO> brandLists = 
					dao.getBrandLists();			
			req.setAttribute("brandLists", brandLists);				
			
			url = "/shoppingmall/order/complete.jsp";
			forward(req, resp, url);
		}
	}
	
	
}
