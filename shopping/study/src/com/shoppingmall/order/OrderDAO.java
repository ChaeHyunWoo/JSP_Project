package com.shoppingmall.order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shoppingmall.join.JoinDTO;
import com.shoppingmall.product.ProductDTO;

public class OrderDAO {
	Connection conn = null;

	public OrderDAO(Connection conn) {

		this.conn = conn;
	}

	public ProductDTO getProduct(String num) {

		ProductDTO dto = new ProductDTO();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select * from product where num=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, Integer.parseInt(num));

			rs = pstmt.executeQuery();

			while (rs.next()) {

				dto.setNum(rs.getInt("num"));
				dto.setSubject(rs.getString("subject"));
				dto.setBrandNum(rs.getInt("brandNum"));
				dto.setBrandName(rs.getString("brandName"));
				dto.setTypeNum(rs.getInt("typeNum"));
				dto.setTypeName(rs.getString("typeName"));
				dto.setPrice(rs.getInt("price"));
				dto.setSaveFileName(rs.getString("saveFileName"));
				dto.setDetailImageFileName(rs.getString("detailImageFileName"));

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return dto;
	}

	public JoinDTO getReadData(String id) {
		
		JoinDTO dto = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		
		try {
			//id�� select �ؿ´�.
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
	
	public int getMaxNum(String str) {

		int maxNum = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select nvl(max(num),0) from " + str;

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				maxNum = rs.getInt(1);
			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return maxNum;
	}	
	
	public int insertData(OrderDTO dto) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "insert into shopOrder (";
			sql += "num,";
			sql += "userId,";
			sql += "productNum,";
			sql += "sm_memo,";
			sql += "sm_name,";
			sql += "sm_hphone1,";
			sql += "sm_hphone2,";
			sql += "sm_hphone3,";
			sql += "sm_email,";
			sql += "sm_addr,";
			sql += "sd_name,";
			sql += "sd_hphone1,";
			sql += "sd_hphone2,";
			sql += "sd_hphone3,";
			sql += "sd_email,";
			sql += "sd_addr,";
			sql += "sm_payway,";
			sql += "cnt";
			sql += ") values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getUserId());
			pstmt.setInt(3, dto.getProductNum());
			pstmt.setString(4, dto.getSm_memo());
			pstmt.setString(5, dto.getSm_name());
			pstmt.setString(6, dto.getSm_hphone1());
			pstmt.setString(7, dto.getSm_hphone2());
			pstmt.setString(8, dto.getSm_hphone3());
			pstmt.setString(9, dto.getSm_email());
			pstmt.setString(10, dto.getSm_addr());
			pstmt.setString(11, dto.getSd_name());
			pstmt.setString(12, dto.getSd_hphone1());
			pstmt.setString(13, dto.getSd_hphone2());
			pstmt.setString(14, dto.getSd_hphone3());
			pstmt.setString(15, dto.getSd_email());
			pstmt.setString(16, dto.getSd_addr());
			pstmt.setString(17, dto.getSm_payway());
			pstmt.setInt(18, dto.getCnt());
			
			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}	
	
	public List<ProductDTO> getBrandLists(){
		
		List<ProductDTO> lists = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select * from brand ";			
			sql+= "order by brandName";
					
			pstmt = conn.prepareStatement(sql);		
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ProductDTO dto = new ProductDTO();
				
				dto.setBrandNum(rs.getInt("num"));
				dto.setBrandName(rs.getString("brandName"));
				
				lists.add(dto);
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;
	}		
	
	
	
}
