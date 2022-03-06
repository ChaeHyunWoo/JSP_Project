package com.shoppingmall.category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shoppingmall.product.ProductDTO;

public class CategoryDAO {
	Connection conn = null;
	
	public CategoryDAO(Connection conn) {
		
		this.conn = conn;
	}
	
	public int getDataCount(String brandNum, String typeNum) {
		
		int totalCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(count(*),0) from product ";
			
			if(brandNum==null && typeNum!=null) {
				sql += "where typeNum=?";
			} else if(brandNum!=null && typeNum==null) {
				sql += "where brandNum=?";
			} else if(brandNum!=null && typeNum!=null) {
				sql += "where brandNum=? and typeNum=?";
			}
			
			pstmt = conn.prepareStatement(sql);
			
			if(brandNum==null && typeNum!=null) {
				pstmt.setInt(1, Integer.parseInt(typeNum));
			} else if(brandNum!=null && typeNum==null) {
				pstmt.setInt(1, Integer.parseInt(brandNum));
			} else if(brandNum!=null && typeNum!=null) {
				pstmt.setInt(1, Integer.parseInt(brandNum));
				pstmt.setInt(2, Integer.parseInt(typeNum));
			}			
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				totalCount = rs.getInt(1);
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return totalCount;
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
	
	public List<ProductDTO> getTypeLists(){
		
		List<ProductDTO> lists = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select * from type ";			
			sql+= "order by typeName";
					
			pstmt = conn.prepareStatement(sql);		
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
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
	
	public List<ProductDTO> getLists(int start, int end, String sort, String brandNum, String typeNum){
		
		List<ProductDTO> lists = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		String sort1=""; 
		String sort2="";
		
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
			sql+= "select rownum rnum, data.* from (";			
			sql+= "select ";
			sql+= "num,";
			sql+= "subject,";
			sql+= "brandNum,";
			sql+= "brandName,";
			sql+= "typeNum,";
			sql+= "typeName,";
			sql+= "price,";
			sql+= "saveFileName,";
			sql+= "detailImageFileName ";			
			
			if(brandNum==null && typeNum!=null) {
				sql+= "from product where typeNum=? ";
			} else if(brandNum!=null && typeNum==null) {
				sql+= "from product where brandNum=? ";
			} else if(brandNum!=null && typeNum!=null) {
				sql+= "from product where brandNum=? and typeNum=? ";
			} else {
				sql+= "from product ";
			}		

			sql+= "order by " + sort1 + " " + sort2 + ") data) ";
			sql+= "where rnum>=? and rnum<=?";

			pstmt = conn.prepareStatement(sql);

			if(brandNum==null && typeNum!=null) {
				pstmt.setInt(1, Integer.parseInt(typeNum));
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);
			} else if(brandNum!=null && typeNum==null) {
				pstmt.setInt(1, Integer.parseInt(brandNum));
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);
			} else if(brandNum!=null && typeNum!=null) {
				pstmt.setInt(1, Integer.parseInt(brandNum));
				pstmt.setInt(2, Integer.parseInt(typeNum));
				pstmt.setInt(3, start);
				pstmt.setInt(4, end);
			} else {
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);				
			}				
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
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
	
	public ProductDTO getImage(){
		
		ProductDTO dto = new ProductDTO();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {			
			
			sql = "select * from product where num=1";
			
			pstmt = conn.prepareStatement(sql);		
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				dto = new ProductDTO();
				
				dto.setNum(rs.getInt("num"));
				dto.setSubject(rs.getString("subject"));
				dto.setSaveFileName(rs.getString("saveFileName"));
				
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
	}	
	

}
