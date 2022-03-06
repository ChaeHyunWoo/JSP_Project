package com.shoppingmall.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NoticeDAO {

private Connection conn = null;
	
	public NoticeDAO(Connection conn) {
		this.conn = conn; 
	
	}

	public int getMaxNum() {
		
		int maxNum = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
try {
			
			sql = "select nvl(max(num),0) from shop";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				maxNum = rs.getInt(1);
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return maxNum;
	}
	
	
	//입력
	public int insertData(NoticeDTO dto) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "insert into shop (num,name,pwd,email,subject, ";
			sql+= "content,ipAddr,hitCount,created) ";
			sql+= "values (?,?,?,?,?,?,?,0,sysdate)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getSubject());
			pstmt.setString(6, dto.getContent());
			pstmt.setString(7, dto.getIpAddr());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	//전체데이터 갯수구하기
	public int getDataCount(String searchkey, String searchValue) {
		
		int totalCount =  0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			
			sql = "select nvl(count(*),0) from shop ";
			sql+= "where " + searchkey + " like ?"; //서치키는 3개중에 하나 무조건 들어가있디 서브젝트 네임 컨텐트중 변수명 그대로 쓰면 들어간다 물음표를 값을 쓸수도 안쓸도 있기때문에 표시하는 것 
			
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue);
			
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				totalCount = rs.getInt(1);  //파생컬럼
				
			}
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return totalCount;
		
	}
	
	
	
	//전체데이터
	public List<NoticeDTO> getLists(int start, int end, String searchKey, String searchValue){  //rownum의 시작값과 끝값
		
		List<NoticeDTO> lists = new ArrayList<NoticeDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			
			
			searchValue = "%" + searchValue + "%";
			
			sql = "select * from (";
			sql+= "select rownum rnum, data.* from (";
			sql+= "select num,name,subject,hitCount,"; 
			sql+= "to_char(created, 'YYYY-MM-DD') created ";
			sql+= "from shop where " + searchKey + " like ? ";
			sql+= "order by num desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				NoticeDTO dto = new NoticeDTO();
				
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setSubject(rs.getString("subject"));
				dto.setHitCount(rs.getInt("hitCount"));
				dto.setCreated(rs.getString("created"));
				
				lists.add(dto);
				
			}
			rs.close();
			pstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;
	}
	
	//num으로 조회한 한개의 데이터
		public NoticeDTO getReadData(int num){ 
			
			NoticeDTO dto = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;
			
			try {
				
				
				sql= "select num,name,pwd,email,subject,content,"; 
				sql+= "ipAddr,hitCount,created ";
				sql+= "from shop where num=?";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, num);
				
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					
					 dto = new NoticeDTO();
					
					dto.setNum(rs.getInt("num"));
					dto.setName(rs.getString("name"));
					dto.setPwd(rs.getString("pwd"));
					dto.setEmail(rs.getString("email"));
					dto.setContent(rs.getString("content"));
					dto.setIpAddr(rs.getString("ipAddr"));
					dto.setSubject(rs.getString("subject"));
					dto.setHitCount(rs.getInt("hitCount"));
					dto.setCreated(rs.getString("created"));
					
				}
				rs.close();
				pstmt.close();
				
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return dto;
		}
		//조회수 증가
		public int updateHitCount(int num) {
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql;
			
			try {
				
				sql = "update shop set hitCount=hitCount+1 where num=?";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, num);
				
				result = pstmt.executeUpdate();
				
				pstmt.close();
				
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return result;
		}
		 
		//수정 
		public int updateData(NoticeDTO dto) {
			
			int result = 0;
			
			PreparedStatement pstmt = null;
			String sql;
			
			try {
				sql = "update shop set name=?,pwd=?,email=?,subject=?,";
				sql+= "content=? where num=?";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, dto.getName());
				pstmt.setString(2, dto.getPwd());
				pstmt.setString(3, dto.getEmail());
				pstmt.setString(4, dto.getSubject());
				pstmt.setString(5, dto.getContent());
				pstmt.setInt(6, dto.getNum());
				
				result = pstmt.executeUpdate();
				
				pstmt.close();
	
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return result;
		}
		//삭제
		public int deleteData(int num) {
			
			int result = 0;
			
			PreparedStatement pstmt = null;
			
			String sql;
			
			try {
				
				sql = "delete shop where num=?";
				
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