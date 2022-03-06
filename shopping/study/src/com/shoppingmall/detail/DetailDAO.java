package com.shoppingmall.detail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shoppingmall.product.ProductDTO;

public class DetailDAO {
	Connection conn = null;

	public DetailDAO(Connection conn) {

		this.conn = conn;
	}

	public int getDataCount() {

		int totalCount = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select nvl(count(*),0) from product";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				totalCount = rs.getInt(1);
			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return totalCount;
	}

	public List<ProductDTO> getRecommendLists(int typeNum) {

		List<ProductDTO> lists = new ArrayList<>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select ";
			sql += "num,";
			sql += "subject,";
			sql += "brandNum,";
			sql += "brandName,";
			sql += "typeNum,";
			sql += "typeName,";
			sql += "price,";
			sql += "saveFileName,";
			sql += "detailImageFileName ";
			sql += "from product where typeNum=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, typeNum);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				ProductDTO dto = new ProductDTO();

				dto.setNum(rs.getInt("num"));
				dto.setSubject(rs.getString("subject"));	
				dto.setBrandNum(rs.getInt("brandNum"));				
				dto.setBrandName(rs.getString("brandName"));
				dto.setTypeNum(rs.getInt("typeNum"));				
				dto.setTypeName(rs.getString("typeName"));
				dto.setPrice(rs.getInt("price"));
				dto.setSaveFileName(rs.getString("saveFileName"));
				dto.setDetailImageFileName(rs.getString("detailImageFileName"));

				lists.add(dto);

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return lists;
	}

	public List<DetailDTO> getLists(int start, int end, String sort) {

		List<DetailDTO> lists = new ArrayList<>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		String sort1 = "";
		String sort2 = "";

		if (sort.equals("low")) {
			sort1 = "price";
			sort2 = "asc";
		} else if (sort.equals("top")) {
			sort1 = "price";
			sort2 = "desc";
		} else {
			sort1 = "num";
			sort2 = "desc";
		}

		try {

			sql = "select * from (";
			sql += "select rownum rnum, data.* from (";
			sql += "select num,brandname,subject,price,saveFileName ";
			sql += "from product ";
			/* sql+= "order by num desc) data) "; */
			sql += "order by " + sort1 + " " + sort2 + ") data) ";
			sql += "where rnum>=? and rnum<=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				DetailDTO dto = new DetailDTO();

				dto.setNum(rs.getInt("num"));
				dto.setBrandname(rs.getString("brandname"));
				dto.setSubject(rs.getString("subject"));
				dto.setPrice(rs.getInt("price"));
				dto.setSaveFileName(rs.getString("saveFileName"));

				lists.add(dto);

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return lists;
	}

	public ProductDTO getImage(int num) {

		ProductDTO dto = new ProductDTO();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select * from product where num=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, num);

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

}
