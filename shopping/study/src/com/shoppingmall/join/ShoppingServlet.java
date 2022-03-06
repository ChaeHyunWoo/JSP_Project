package com.shoppingmall.join;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoppingmall.category.CategoryDAO;
import com.shoppingmall.join.CustomInfo;
import com.shoppingmall.product.ProductDTO;
import com.util.DBConn;

public class ShoppingServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);
	}
	
	protected void forward(HttpServletRequest req, HttpServletResponse resp, String url) throws ServletException, IOException {
		
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		//DB����
		Connection conn = DBConn.getConnection();
		JoinDAO dao = new JoinDAO(conn);
		//CategoryDAO dao1 = new CategoryDAO(conn);
		CategoryDAO dao2 = new CategoryDAO(conn); 
		
		String cp = req.getContextPath();
		String uri = req.getRequestURI();
		
		
		String url;//��������ų ������ ������ url
		
		
		
		
		//ȸ������ ������
		if(uri.indexOf("join.do")!= -1) {
			
			// �������� �����ּҸ� ��� ��
			String listUrl = cp + "/shop/category/category.do";
			req.setAttribute("listUrl", listUrl);
			
			List<ProductDTO> brandLists = dao2.getBrandLists();
			//List<ProductDTO> brandLists = dao.getBrandLists();			
			req.setAttribute("brandLists", brandLists);
			
			// ������ ����� shoppingmall�� ã�ư�
			url = "/shoppingmall/join/join.jsp";
			forward(req, resp, url);
			
			
			
			
		}else if(uri.indexOf("join_ok.do")!= -1) {
			
			JoinDTO dto = new JoinDTO();
			
			//form  post������� �Ѿ���ϱ�
			dto.setId(req.getParameter("id"));
			dto.setName(req.getParameter("name"));
			dto.setPwd(req.getParameter("pwd"));
			dto.setEmail1(req.getParameter("email1"));
			dto.setEmail2(req.getParameter("email2"));
			dto.setRoadFullAddr(req.getParameter("roadFullAddr"));
			dto.setHp1(req.getParameter("hp1"));
			dto.setHp2(req.getParameter("hp2"));
			dto.setHp3(req.getParameter("hp3"));
			dto.setBirth_tf(req.getParameter("birth_tf"));
			dto.setBirth_year(req.getParameter("birth_year"));
			dto.setBirth_month(req.getParameter("birth_month"));
			dto.setBirth_day(req.getParameter("birth_day"));
			dto.setService_email(req.getParameter("service_email"));
			dto.setService_sms(req.getParameter("service_sms"));
			dto.setService_dm(req.getParameter("service_dm"));
			dto.setService_tm(req.getParameter("service_tm"));
			
			dao.insertData(dto);
			
			url = cp + "/shop/join/login.do";
			resp.sendRedirect(url);
			
			
		}else if(uri.indexOf("login.do")!= -1) {
			
			//�α��� �� ������ ������
			String listUrl = cp + "/shop/category/category.do";
			req.setAttribute("listUrl", listUrl);

			List<ProductDTO> brandLists = 
					dao2.getBrandLists();			
			req.setAttribute("brandLists", brandLists);
			
			url = "/shoppingmall/login/login.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("login_ok.do")!= -1) {
			
			String id = req.getParameter("id");
			String pwd = req.getParameter("pwd");
			
			System.out.println(id);
		
			JoinDTO dto = dao.getReadData(id);
			
			
			//dto==null �� ��� ���̵� ����
			//���ǿ� �ִ�  pwd��  DB�� pwd�� ��ġ���� �ʴ� ���
			if(dto==null || (!dto.getPwd().equals(pwd))) {
				
				req.setAttribute("message", "���̵� �Ǵ� �н����带 ��Ȯ�� �Է��ϼ���!");
				url = "/shoppingmall/login/login.jsp";
				
				forward(req, resp, url);
				
				return;//�α��� ���� �� ���̻��� �ҽ��ڵ尡 ������� �ʵ��� return�ۼ�
			}
			if(id.equals("hwcotton")) {
				
				url = "/shoppingmall/productSave/productSave.jsp";
				
				forward(req, resp, url);
				
				return;//�α��� ���� �� ���̻��� �ҽ��ڵ尡 ������� �ʵ��� return�ۼ�
			}
			
				
			//�������� ���Ǹ���� ���
			HttpSession session = req.getSession();
			
			//customInfo�� ���� ���̴� ��ü ����
			CustomInfo info = new CustomInfo();
			
			info.setUserId(dto.getId());
			info.setUserName(dto.getName());
			
			//���ǿ� �α��� ���� ����
			session.setAttribute("customInfo", info);

			//���������� ����ȭ������ ����
			url = cp + "/shop/main/main.do";
			//������ �����Ű�� �����̷�Ʈ �ؾ� �Ѵ�,
			resp.sendRedirect(url);
				
			
			
			
			
		}else if(uri.indexOf("logout.do")!= -1) {
			
			HttpSession session = req.getSession();
			
			session.removeAttribute("customInfo"); //���ǿ� �ִ� ������ ����
			session.invalidate();//���ǿ� �ִ� ������ ����
			
			url = cp + "/shop/main/main.do";
			resp.sendRedirect(url);
		
			
		}else if(uri.indexOf("update.do")!= -1) {
			
			String listUrl = cp + "/shop/category/category.do";
			req.setAttribute("listUrl", listUrl);

			List<ProductDTO> brandLists = 
					dao2.getBrandLists();			
			req.setAttribute("brandLists", brandLists);
			
			
			HttpSession session = req.getSession();
			CustomInfo info = (CustomInfo)session.getAttribute("customInfo");
			
			JoinDTO dto = dao.getReadData(info.getUserId());
			req.setAttribute("dto", dto);
			//ȸ���������� ������ ������
			
			url = "/shoppingmall/join/update.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("update_ok.do")!=-1) {
			
			HttpSession session = req.getSession();
			CustomInfo info = (CustomInfo)session.getAttribute("customInfo");
			
			
			JoinDTO dto = new JoinDTO();
			
			dto.setId(info.getUserId());
			//dto.setId(req.getParameter("id"));
			//dto.setName(req.getParameter("name"));
			dto.setPwd(req.getParameter("pwd"));
			dto.setEmail1(req.getParameter("email1"));
			dto.setEmail2(req.getParameter("email2"));
			dto.setRoadFullAddr(req.getParameter("roadFullAddr"));
			dto.setHp1(req.getParameter("hp1"));
			dto.setHp2(req.getParameter("hp2"));
			dto.setHp3(req.getParameter("hp3"));
			dto.setBirth_tf(req.getParameter("birth_tf"));
			dto.setBirth_year(req.getParameter("birth_year"));
			dto.setBirth_month(req.getParameter("birth_month"));
			dto.setBirth_day(req.getParameter("birth_day"));
			dto.setService_email(req.getParameter("service_email"));
			dto.setService_sms(req.getParameter("service_sms"));
			dto.setService_dm(req.getParameter("service_dm"));
			dto.setService_tm(req.getParameter("service_tm"));
			
			
			dao.updateDate(dto);
		
			url = cp + "/shop/main/main.do";
			resp.sendRedirect(url);
			
		
		//���̵� �ߺ�Ȯ��
		}else if(uri.indexOf("idcheck.do")!=-1) {
			
			url = "/shoppingmall/join/idcheck.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("idcheck_ok.do")!=-1) {
			
			String id = req.getParameter("id");
			
			System.out.println(id);
			
			JoinDTO dto = dao.getReadData(id);
			
			
			
			if(dto==null || dto.equals(id)) {
				
				req.setAttribute("message", "�̹̻������ ���̵��Դϴ�");
				
				url = "/shoppingmall/join/idcheck.jsp";
				forward(req, resp, url);
				return;
				
			}else {
				
				req.setAttribute("message2", "��밡���� ���̵��Դϴ�.");
				

				url = "/shoppingmall/join/idcheck.jsp";
				forward(req, resp, url);
				return;
			}
			
		}else if(uri.indexOf("jusoPopup.do")!=-1) {
			
			
			url = "/shoppingmall/join/jusoPopup.jsp";
			forward(req, resp, url);
			}
		}
			
}
		
	
