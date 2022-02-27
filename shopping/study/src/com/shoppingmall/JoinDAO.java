package com.shoppingmall;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JoinDAO {
	
	private Connection conn;
	
	
	public JoinDAO(Connection conn) {
		this.conn = conn;
	}
	
	
	//�Է�
	public int insertData(JoinDTO dto) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		
		try {
			
			sql = "insert into shopmember(id,name,pwd,email1,email2,addr,hp1,hp2,hp3,birth_tf,birth_year,birth_month,birth_day,service_email,service_sms,service_dm,service_tm) ";
			sql += "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());
			pstmt.setString(4, dto.getEmail1());
			pstmt.setString(5, dto.getEmail2());
			pstmt.setString(6, dto.getAddr());
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
	
	
	
	
	//������ �о���� - �α��� �� ��
	public JoinDTO getReadData(String id) {
		
		JoinDTO dto = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		
		try {
			//id�� select �ؿ´�.
			sql = "select id,name,pwd,email1,email2,addr,hp1,hp2,hp3,birth_year,birth_month,birth_day";
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
				dto.setAddr(rs.getString("addr"));
				dto.setHp1(rs.getString("hp1"));
				dto.setHp2(rs.getString("hp2"));
				dto.setHp3(rs.getString("hp3"));
				dto.setBirth_year(rs.getString("birth_year"));
				dto.setBirth_month(rs.getString("birth_month"));
				dto.setBirth_day(rs.getString("birth_day"));
				
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
		
		
	}
	
	
}