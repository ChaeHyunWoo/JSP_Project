package com.shoppingmall.join;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JoinDAO {
	
	private Connection conn;
	
	
	public JoinDAO(Connection conn) {
		this.conn = conn;
	}
	

	//입력
	public int insertData(JoinDTO dto) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		
		try {
			
			sql = "insert into shopmember(id,name,pwd,email1,email2,roadFullAddr,hp1,hp2,hp3,birth_tf,birth_year,birth_month,birth_day,service_email,service_sms,service_dm,service_tm) ";
			sql += "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());
			pstmt.setString(4, dto.getEmail1());
			pstmt.setString(5, dto.getEmail2());
			pstmt.setString(6, dto.getRoadFullAddr());
			pstmt.setString(7, dto.getHp1());
			pstmt.setString(8, dto.getHp2());
			pstmt.setString(9, dto.getHp3());
			pstmt.setString(10, dto.getBirth_tf());
			pstmt.setString(11, dto.getBirth_year());
			pstmt.setString(12, dto.getBirth_month());
			pstmt.setString(13, dto.getBirth_day());
			pstmt.setString(14, dto.getService_email());
			pstmt.setString(15, dto.getService_sms());
			pstmt.setString(16, dto.getService_dm());
			pstmt.setString(17, dto.getService_tm());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	
	/*//아이디 검증
	public int registerCheck(String id) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "select * from shopmember where id=?";
		
		try {
			
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return 0; //이미 존재하는 회원
			}
			else {
				return 1; //가입 가능한 회원
			}
			
		
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; //DB오류
	}*/
	
	
	
	//데이터 읽어오기 - 로그인 할 때
	public JoinDTO getReadData(String id) {
		
		JoinDTO dto = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		
		try {
			//id로 select 해온다.
			sql = "select id,name,pwd,email1,email2,roadFullAddr,hp1,hp2,hp3,birth_tf,birth_year,birth_month,birth_day,service_email,service_sms,service_dm,service_tm ";
			sql+= "from shopmember where id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto = new JoinDTO();
				
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));
				dto.setEmail1(rs.getString("email1"));
				dto.setEmail2(rs.getString("email2"));
				dto.setRoadFullAddr(rs.getString("roadFullAddr"));
				dto.setHp1(rs.getString("hp1"));
				dto.setHp2(rs.getString("hp2"));
				dto.setHp3(rs.getString("hp3"));
				dto.setBirth_tf(rs.getString("birth_tf"));
				dto.setBirth_year(rs.getString("birth_year"));
				dto.setBirth_month(rs.getString("birth_month"));
				dto.setBirth_day(rs.getString("birth_day"));
				dto.setService_email(rs.getString("service_email"));
				dto.setService_sms(rs.getString("service_sms"));
				dto.setService_dm(rs.getString("service_dm"));
				dto.setService_tm(rs.getString("service_tm"));
				
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
		
		
	}
	
	//회원정보 수정
	public int updateDate(JoinDTO dto) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "update shopmember set pwd=?,email1=?,email2=?,roadFullAddr=?,hp1=?,hp2=?,hp3=?,birth_tf=?,birth_year=?,birth_month=?,birth_day=?,service_email=?,service_sms=?,service_dm=?,service_tm=?";
			sql+= " where id=?";
			
			pstmt =conn.prepareStatement(sql);
			//pstmt.setString(1, dto.getName());
			pstmt.setString(1, dto.getPwd());
			pstmt.setString(2, dto.getEmail1());
			pstmt.setString(3, dto.getEmail2());
			pstmt.setString(4, dto.getRoadFullAddr());
			pstmt.setString(5, dto.getHp1());
			pstmt.setString(6, dto.getHp2());
			pstmt.setString(7, dto.getHp3());
			pstmt.setString(8, dto.getBirth_tf());
			pstmt.setString(9, dto.getBirth_year());
			pstmt.setString(10, dto.getBirth_month());
			pstmt.setString(11, dto.getBirth_day());
			pstmt.setString(12, dto.getService_email());
			pstmt.setString(13, dto.getService_sms());
			pstmt.setString(14, dto.getService_dm());
			pstmt.setString(15, dto.getService_tm());
			pstmt.setString(16, dto.getId());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
	
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	
}
