package com.shoppingmall;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.join.CustomInfo;
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
			
			System.out.println(id);
			System.out.println(pwd);
			System.out.println(dto);
			
			//dto==null �� ��� ���̵� ����
			//���ǿ� �ִ�  pwd��  DB�� pwd�� ��ġ���� �ʴ� ���
			if(dto==null || (!dto.getPwd().equals(pwd))) {
				
				req.setAttribute("message", "���̵� �Ǵ� �н����带 ��Ȯ�� �Է��ϼ���!");
				url = "/shoppingmall/login/login.jsp";
				
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
			url = cp + "/shop/main.do";
			//������ �����Ű�� �����̷�Ʈ �ؾ� �Ѵ�,
			resp.sendRedirect(url);
				
		}else if(uri.indexOf("main.do")!= -1) {
			
			//�α��� �� ������ ������
			
			url = "/shoppingmall/main/main.jsp";
			forward(req, resp, url);
			
			
		}else if(uri.indexOf("logout.do")!= -1) {
			
			HttpSession session = req.getSession();
			
			session.removeAttribute("customInfo"); //���ǿ� �ִ� ������ ����
			session.invalidate();//���ǿ� �ִ� ������ ����
			
			url = cp + "/shop/main.do";
			resp.sendRedirect(url);
		
		}
		
	}
			
}
		
	
