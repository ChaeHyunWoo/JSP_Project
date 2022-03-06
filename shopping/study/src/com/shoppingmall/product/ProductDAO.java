package com.shoppingmall.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
	Connection conn = null;

	public ProductDAO(Connection conn) {

		this.conn = conn;
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

	public ProductDTO getBrandName(ProductDTO dto) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select ";
			sql += "brandName ";
			sql += "from brand where num=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dto.getBrandNum());

			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto.setBrandName(rs.getString("brandName"));
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return dto;
	}

	public ProductDTO getTypeName(ProductDTO dto) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select ";
			sql += "typeName ";
			sql += "from type where num=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dto.getTypeNum());

			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto.setTypeName(rs.getString("typeName"));
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return dto;
	}	
	
	public int insertData(ProductDTO dto) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "insert into Product (";
			sql += "num,";
			sql += "subject,";
			sql += "brandNum,";
			sql += "brandName,";
			sql += "typeNum,";
			sql += "typeName,";
			sql += "price,";
			sql += "saveFileName,";
			sql += "detailImageFileName";
			sql += ") values (?,?,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getSubject());
			pstmt.setInt(3, dto.getBrandNum());
			pstmt.setString(4, dto.getBrandName());
			pstmt.setInt(5, dto.getTypeNum());
			pstmt.setString(6, dto.getTypeName());
			pstmt.setInt(7, dto.getPrice());
			pstmt.setString(8, dto.getSaveFileName());
			pstmt.setString(9, dto.getDetailImageFileName());
			
			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}

	public int insertBrand(ProductDTO dto) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "insert into brand (";
			sql += "num,";
			sql += "brandName";
			sql += ") values (?,?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dto.getBrandNum());
			pstmt.setString(2, dto.getBrandName());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}

	public int insertType(ProductDTO dto) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "insert into type (";
			sql += "num,";
			sql += "typeName";
			sql += ") values (?,?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dto.getTypeNum());
			pstmt.setString(2, dto.getTypeName());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}

	public int getDataCount() {

		int totalCount = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select nvl(count(*),0) from Product";

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

	public List<ProductDTO> getLists(int start, int end) {

		List<ProductDTO> lists = new ArrayList<>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select * from (";
			sql += "select rownum rnum, data.* from (";
			sql += "select ";
			sql += "num,";
			sql += "subject,";
			sql += "brandNum,";
			sql += "brandName,";
			sql += "typeNum,";
			sql += "typeName,";
			sql += "price,";
			sql += "saveFileName,";
			sql += "detailImageFileName ";
			sql += "from Product ";
			sql += "order by num desc) data) ";
			sql += "where rnum>=? and rnum<=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				ProductDTO dto = new ProductDTO();

				dto.setNum(rs.getInt("num"));
				dto.setSubject(rs.getString("subject"));
				dto.setBrandNum(rs.getInt("brandnum"));
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

	public List<ProductDTO> getBrandLists() {

		List<ProductDTO> lists = new ArrayList<>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select ";
			sql += "num,";
			sql += "brandName ";
			sql += "from brand ";
			sql += "order by brandName asc";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

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

	public List<ProductDTO> getTypeLists() {

		List<ProductDTO> lists = new ArrayList<>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select ";
			sql += "num,";
			sql += "typeName ";
			sql += "from type ";
			sql += "order by typeName asc";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				ProductDTO dto = new ProductDTO();

				dto.setTypeNum(rs.getInt("num"));
				dto.setTypeName(rs.getString("typeName"));

				lists.add(dto);

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return lists;
	}

	public ProductDTO getReadData(int num) {

		ProductDTO dto = null;

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
			sql += "from product where num=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, num);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				dto = new ProductDTO();

				dto.setNum(rs.getInt("num"));
				dto.setSubject(rs.getString("subject"));
				dto.setBrandNum(rs.getInt("brandnum"));
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

	public int deleteData(String table, int num) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "delete " + table + " where num=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, num);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}
	
	

}
