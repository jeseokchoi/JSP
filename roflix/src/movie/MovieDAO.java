package movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MovieDAO {
	
	private static MovieDAO instance = new MovieDAO();
	
	public static MovieDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	
	
	public MovieDAO() {
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
	
	public ArrayList<MovieDTO> selectList(int idx) {
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql = "select * from Movie" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MovieDTO dto = new MovieDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setMvTitle(rs.getString("mvTitle"));
				dto.setDirector(rs.getString("director"));
				dto.setActors(rs.getString("actors"));
				dto.setOpenDate(rs.getDate("openDate"));
				dto.setStory(rs.getString("story"));
				dto.setPoster(rs.getString("poster"));
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
	
	public int insert(MovieDTO dto) {
		int row = 0;
		String sql = "insert into movie "
				+ "(mvTitle, director, actors, openDate, story, poster) values (?, ?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getMvTitle());
			pstmt.setString(2, dto.getDirector());
			pstmt.setString(3, dto.getActors());
			pstmt.setDate(4, dto.getOpenDate());
			pstmt.setString(5, dto.getStory());
			pstmt.setString(6, dto.getPoster());
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
	
	public MovieDTO selectOne(int idx) {
		MovieDTO ob = null;
		String sql = "select * from Movie1 where idx = " + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ob = new MovieDTO();
				ob.setIdx(rs.getInt(1));
				ob.setMvTitle(rs.getString(2));
				ob.setDirector(rs.getString(3));
				ob.setActors(rs.getString(4));
				ob.setOpenDate(rs.getDate(5));
				ob.setStory(rs.getString(6));
				ob.setPoster(rs.getString(7));
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
		return ob;
	}
	
	public MovieDTO selectOne2(int idx) {
		MovieDTO ob = null;
		String sql = "select * from Movie2 where idx = " + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ob = new MovieDTO();
				ob.setIdx(rs.getInt(1));
				ob.setMvTitle(rs.getString(2));
				ob.setDirector(rs.getString(3));
				ob.setActors(rs.getString(4));
				ob.setOpenDate(rs.getDate(5));
				ob.setStory(rs.getString(6));
				ob.setPoster(rs.getString(7));
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
		return ob;
	}
	
	public MovieDTO selectOne3(int idx) {
		MovieDTO ob = null;
		String sql = "select * from Movie3 where idx = " + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ob = new MovieDTO();
				ob.setIdx(rs.getInt(1));
				ob.setMvTitle(rs.getString(2));
				ob.setDirector(rs.getString(3));
				ob.setActors(rs.getString(4));
				ob.setOpenDate(rs.getDate(5));
				ob.setStory(rs.getString(6));
				ob.setPoster(rs.getString(7));
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
		return ob;
	}

}
