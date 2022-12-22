package note;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class NoteDAO {
	
	private static NoteDAO instance = new NoteDAO();
	
	public static NoteDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	
	
	public NoteDAO() {
		try {
			init = new InitialContext();
			ds=(DataSource) init.lookup("java:comp/env/jdbc/oracle");
			String version = getVersion();
			System.out.println(version + "접속됨");
		} catch (NamingException e) {
			System.out.println("생성자 예외 : " + e);
		}
		
	}

	private String getVersion() {
		String version = "";
		String sql = "select banner from v$version";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				version = rs.getString("banner");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return version;
	}
	
	public ArrayList<NoteDTO> selectList() {
		ArrayList<NoteDTO> list = new ArrayList<NoteDTO>();
		String sql = "select * from Note order by idx desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				NoteDTO dto = new NoteDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setNoteTitle(rs.getString("noteTitle"));
				dto.setReview(rs.getString("review"));
				dto.setToday(rs.getDate("today"));
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)		rs.close();
				if(pstmt != null)	pstmt.close();
				if(conn != null) 	conn.close();
			} catch (SQLException e) {}
		}
		return list;
	}
	
	public int add(NoteDTO ob) {
	      int row = 0;
	      String sql = "insert into note (member_idx, noteTitle, review, views) "
	            + "values(?, ?, ?, ?)";
	      
	      try {
	         conn = ds.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, ob.getMember_idx());
	         pstmt.setString(2, ob.getNoteTitle());
	         pstmt.setString(3, ob.getReview());
	         pstmt.setInt(4, ob.getViews());
	         row = pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            if(rs != null) rs.close();
	            if(pstmt != null) pstmt.close();
	            if(conn != null) conn.close();
	         } catch(Exception e) {}
	      }
	      return row;
	   }
	
//	public NoteDTO selectOne(int idx) {
//		NoteDTO ob = null;
//		String sql = "select * from note where idx = " + idx;
//		
//		try {
//			conn = ds.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			rs = pstmt.executeQuery();
//			
//			while(rs.next()) {
//				ob = new NoteDTO();
//				ob.setIdx(rs.getInt(1));
//				ob.setNoteTitle(rs.getString(2));
//				ob.setReview(rs.getString(3));
//				ob.setToday(rs.getDate(4));
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if(rs != null) 		rs.close();
//				if(pstmt != null) 	pstmt.close();
//				if(conn != null) 	conn.close();
//			} catch(Exception e) {}
//		}
//		return ob;
//	}
	
	public HashMap<String, Object> selectOne(int idx) {
		HashMap<String, Object> map = null;
		String sql = "select" + 
			    " M.memberId, N.noteTitle, N.today, N.review" +
			    " from Note N" +
			    " join Member M" +
			        " on N.member_idx = M.idx" +
			        " where N.idx=" +idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				map = new HashMap<String, Object>();
				map.put("memberId", rs.getString("memberId"));
				map.put("noteTitle", rs.getString("noteTitle"));
				map.put("today", rs.getDate("today"));
				map.put("review", rs.getString("review"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) 		rs.close();
				if(pstmt != null) 	pstmt.close();
				if(conn != null) 	conn.close();
			} catch(Exception e) {}
		}
		return map;
	}
	
	public int update(NoteDTO ob) {
		int row = 0;
		String sql = "update note set noteTitle=?, review=? where idx=" + ob.getIdx();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getNoteTitle());
			pstmt.setString(2, ob.getReview());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) 		rs.close();
				if(pstmt != null) 	pstmt.close();
				if(conn != null) 	conn.close();
			} catch(Exception e) {}
		}
		return row;
	}
	
	public int delete(int idx) {
		int row = 0;
		String sql = "delete from note where idx=" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) 		rs.close();
				if(pstmt != null) 	pstmt.close();
				if(conn != null) 	conn.close();
			} catch(Exception e) {}
		}
		return row;
	}
	public ArrayList<HashMap<String, Object>> selectNotice() {
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		String sql = "select" + 
					    " N.idx, M.memberId, N.noteTitle, N.review, N.today, N.views" +
					    " from Note N" +
					    " join Member M" +
					        " on N.member_idx = M.idx" +
					        " order by idx desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("idx", rs.getInt("idx"));
				map.put("memberId", rs.getString("memberId"));
				map.put("noteTitle", rs.getString("noteTitle"));
				map.put("review", rs.getString("review"));
				map.put("today", rs.getDate("today"));
				map.put("views", rs.getString("views"));
				list.add(map);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) 		rs.close();
				if(pstmt != null) 	pstmt.close();
				if(conn != null) 	conn.close();
			} catch(Exception e) {}
		}
		return list;
	}
	
	public void viewsCount(int idx) {
		String sql = "update note set views=views+1 where idx=" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) 		rs.close();
				if(pstmt != null) 	pstmt.close();
				if(conn != null) 	conn.close();
			} catch(Exception e) {}
		}
	}

}












