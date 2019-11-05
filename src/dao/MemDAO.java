package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dto.MemDTO;

public class MemDAO {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private MemDAO() { 
		// TODO Auto-generated constructor stub
	}
	
	private static MemDAO dao = new MemDAO();
	
	public static MemDAO getInstance() {
		return dao;
	}
	
	private Connection init() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.OracleDriver");
		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String user = "hr";
		String password = "a1234";
		return DriverManager.getConnection(url, user, password);
	}// end init()
	
	// 2.연결종료
	private void exit() throws SQLException {
		if (rs != null)
			rs.close();
		if (stmt != null)
			stmt.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}// end exit()
	

	//중복체크
	public int idCheck(String user_id) {
		int cnt = 0;
		try {
			conn = init();
			String SQL = "select count(*) member where user_id=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}
	
	//회원가입
	public void register(MemDTO dto) {
			try {
				conn=init();
				String SQL = "INSERT INTO member VALUES(?, ?, ?, ?, ?, ?, ?)";
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, dto.getuser_id());
				pstmt.setString(2, dto.getuser_pw());
				pstmt.setString(3, dto.getuser_pw2());
				pstmt.setString(4, dto.getuser_name());
				pstmt.setString(5, dto.getuser_birth());
				pstmt.setString(6, dto.getuser_email());
				pstmt.setString(7, dto.getuser_phone());
				
				pstmt.executeUpdate();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					exit();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
	}
}//end class
