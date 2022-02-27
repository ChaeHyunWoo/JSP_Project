package com.shoppingmall;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		String cp = req.getContextPath();
		String uri = req.getRequestURI();
		
		
		String url;//��������ų ������ ������ url
		
		
		
		
		//ȸ������ ������
		if(uri.indexOf("join.do")!= -1) {
			
			// �������� �����ּҸ� ��� ��
			
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
			dto.setAddr(req.getParameter("addr"));
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
					
			url = cp + "/shop/login.do";
			resp.sendRedirect(url);
			
			
		}else if(uri.indexOf("login.do")!= -1) {
			
			//�α��� �� ������ ������
			
			url = "/shoppingmall/login/login.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("login_ok.do")!= -1) {
			
			String id = req.getParameter("id");
			String pwd = req.getParameter("pwd");
		
			JoinDTO dto = dao.getReadData(id);
			
			System.out.println(dto);
			url = "/shoppingmall/join/join.jsp";
				
			forward(req, resp, url);
				
				
			}
			
		}
		
		}
	