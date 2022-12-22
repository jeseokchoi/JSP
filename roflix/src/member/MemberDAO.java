package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	private MemberDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
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

	public ArrayList<MemberDTO> selectList() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		String sql = "select * from Member";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setMemberName(rs.getString("memberName"));
				dto.setMemberId(rs.getString("memberId"));
				dto.setMemberPw(rs.getString("memberPw"));
				dto.setBirthDate(rs.getString("birthDate"));
				dto.setEmail(rs.getString("email"));
				dto.setJoinDate(rs.getDate("joinDate"));
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)		rs.close();
				if(pstmt != null) 	pstmt.close();
				if(conn != null) 	conn.close();
			} catch (SQLException e) {}
		}
			
		return list;	
	}
	
	public MemberDTO login(MemberDTO user) {
		MemberDTO dto = null;
		String sql = "select * from Member where memberId = "
				+ "'" + user.getMemberId() + "'" +
				"and MemberPw = '" + user.getMemberPw() + "'";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = new MemberDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setMemberName(rs.getString("memberName"));
				dto.setMemberId(rs.getString("memberId"));
				dto.setMemberPw(rs.getString("memberPw"));
				dto.setBirthDate(rs.getString("birthDate"));
				dto.setEmail(rs.getString("email"));
				dto.setJoinDate(rs.getDate("joinDate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)		rs.close();
				if(pstmt != null) 	pstmt.close();
				if(conn != null) 	conn.close();
			} catch (SQLException e) {}
		}
			
		return dto;
	}
	
	public int join(MemberDTO user) {
		int row = 0;
		String sql = "insert into member (memberName, memberId, memberPw, birthDate, email) values(?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getMemberName());
			pstmt.setString(2, user.getMemberId());
			pstmt.setString(3, user.getMemberPw());
			pstmt.setString(4, user.getBirthDate());
			pstmt.setString(5, user.getEmail());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row;
	}
	
	public boolean modify(MemberDTO user) {
		int flag = 0;
		String sql = "Update Member set memberName = ?, "
						+ "memberPw = ?, birthDate = ?, email = ? where memberId = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getMemberName());
			pstmt.setString(2, user.getMemberPw());
			pstmt.setString(3, user.getBirthDate());
			pstmt.setString(4, user.getEmail());
			pstmt.setString(5, user.getMemberId());
			flag = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) 	pstmt.close();
				if(conn != null) 	conn.close();
			}catch (SQLException e) {}
		}
		return (flag > 0) ? true : false;
	}
	
	public int delete(int idx) {
		int row = 0;
		String sql = "delete Member where idx = " + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) 	pstmt.close();
				if(conn != null) 	conn.close();
			}catch (SQLException e) {}
		}
		return row;
	}
	
}

