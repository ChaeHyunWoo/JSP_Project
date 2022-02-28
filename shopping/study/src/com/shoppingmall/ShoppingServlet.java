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
		
		//DB연결
		Connection conn = DBConn.getConnection();
		JoinDAO dao = new JoinDAO(conn);
		
		String cp = req.getContextPath();
		String uri = req.getRequestURI();
		
		
		String url;//포워딩시킬 데이터 저장할 url
		
		
		
		
		//회원가입 페이지
		if(uri.indexOf("join.do")!= -1) {
			
			// 포워딩은 실제주소를 써야 함
			
			// 매핑을 해줘야 shoppingmall를 찾아감
			url = "/shoppingmall/join/join.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("join_ok.do")!= -1) {
			
			JoinDTO dto = new JoinDTO();
			
			//form  post방식으로 넘어오니까
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
			
			//로그인 시 포워드 페이지
			
			url = "/shoppingmall/login/login.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("login_ok.do")!= -1) {
			
			String id = req.getParameter("id");
			String pwd = req.getParameter("pwd");
		
			JoinDTO dto = dao.getReadData(id);
			
			System.out.println(id);
			System.out.println(pwd);
			System.out.println(dto);
			
			//dto==null 일 경우 아이디가 없음
			//세션에 있는  pwd가  DB의 pwd와 일치하지 않는 경우
			if(dto==null || (!dto.getPwd().equals(pwd))) {
				
				req.setAttribute("message", "아이디 또는 패스워드를 정확히 입력하세요!");
				url = "/shoppingmall/login/login.jsp";
				
				forward(req, resp, url);
				
				return;//로그인 실패 시 더이상의 소스코드가 실행되지 않도록 return작성
			}
				
			//서블릿에서 세션만드는 방법
			HttpSession session = req.getSession();
			
			//customInfo에 담을 것이니 객체 생성
			CustomInfo info = new CustomInfo();
			
			info.setUserId(dto.getId());
			info.setUserName(dto.getName());
			
			//세션에 로그인 정보 저장
			session.setAttribute("customInfo", info);

			//저장했으니 메인화면으로 가기
			url = cp + "/shop/main.do";
			//세션을 변경시키면 리다이렉트 해야 한다,
			resp.sendRedirect(url);
				
		}else if(uri.indexOf("main.do")!= -1) {
			
			//로그인 시 포워드 페이지
			
			url = "/shoppingmall/main/main.jsp";
			forward(req, resp, url);
			
			
		}else if(uri.indexOf("logout.do")!= -1) {
			
			HttpSession session = req.getSession();
			
			session.removeAttribute("customInfo"); //세션에 있는 변수명 삭제
			session.invalidate();//세션에 있는 데이터 삭제
			
			url = cp + "/shop/main.do";
			resp.sendRedirect(url);
		
		}
		
	}
			
}
		
	
