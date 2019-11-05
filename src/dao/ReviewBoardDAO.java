package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dto.ReviewBoardDTO;
import dto.ReviewPageDTO;

public class ReviewBoardDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;
	
	private static ReviewBoardDAO dao = new ReviewBoardDAO();
	
	public static ReviewBoardDAO getInstance() {
		return dao;
	}
	
	private Connection init() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.OracleDriver");
		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String username = "khgym";
		String password = "a1234";
		return DriverManager.getConnection(url, username, password);
	}
	
	private void exit() throws SQLException {
		if (rs != null)
			rs.close();
		if (stmt != null)
			stmt.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
	
	// 게시글 총 갯수 출력
	public int totalcount() {
		int count = 0;
		
		try {
			conn = init();
			String sql = "SELECT COUNT(*) FROM review";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				// 1번째 컬럼 값 받아서 출력
				count = rs.getInt(1);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}
	
	// 게시글 출력
	
	public List<ReviewBoardDTO> printList(ReviewPageDTO pdto) {
		List<ReviewBoardDTO> aList = new ArrayList<ReviewBoardDTO>();
		
		try {
			conn=init();
			String sql = "SELECT b.* FROM (SELECT rownum rm, a.* " + 
					"FROM (SELECT * FROM review ORDER by ref DESC, re_step)a)b " + 
					"WHERE rm >= ? and rm <= ?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pdto.getStartRow());
			pstmt.setInt(2, pdto.getEndRow());
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ReviewBoardDTO dto = new ReviewBoardDTO();
				aList.add(dto);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		return aList;		
	}
	
	
}
