package member.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Admin;
import member.model.vo.Host;
import member.model.vo.User;

public class MemberDao {
	private Properties prop = new Properties();
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	// 로그인(현재까진 일반)
	public User loginMember(Connection conn, User u) {
		User loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getUserId());
			pstmt.setString(2, u.getUserPwd());
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				loginUser = new User(rset.getString("US_NO"),
									 rset.getString("US_ID"),
									 rset.getString("US_PWD"),
									 rset.getString("US_NAME"),
									 rset.getDate("US_BIRTH"),
									 rset.getString("US_GENDER"),
									 rset.getString("US_EMAIL"),
									 rset.getString("US_PHONE"),
									 rset.getString("US_ACT"),
									 rset.getDate("US_STOP"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return loginUser;
	}

	// 로그인(호스트)
	public Host loginMember(Connection conn, Host h) {
		Host loginHost = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginHMember");
		try  {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, h.getHst_id());
			pstmt.setString(2, h.getHst_pwd());
			
			rset = pstmt.executeQuery();
			
			
			if(rset.next()) {
				loginHost = new Host(rset.getString("HST_NO"),
									 rset.getString("HST_ID"),
									 rset.getString("HST_PWD"),
									 rset.getString("HST_NAME"),
									 rset.getDate("HST_BIRTH"),
									 rset.getString("HST_GENDER"),
									 rset.getString("HST_EMAIL"),
									 rset.getString("HST_PHONE"),
									 rset.getString("HST_BSNO"),
									 rset.getString("HST_BSNAME"),
									 rset.getString("HST_ACT"),
									 rset.getDate("HST_STOP"));
//				System.out.println("loginHost if문값 : " + loginHost);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
//		System.out.println("loginHost dao최종값 : " + loginHost);
		return loginHost;
	}
	// 로그인(관리자)
	public Admin loginMember(Connection conn, Admin a) {
		Admin loginAdmin = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginAMember");
		try  {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, a.getAdm_id());
			pstmt.setString(2, a.getAdm_pwd());
			
			rset = pstmt.executeQuery();
			
			
			if(rset.next()) {
				loginAdmin = new Admin(rset.getInt("adm_num"),
									  rset.getString("adm_id"),
									  rset.getString("adm_pwd"),
									  rset.getString("adm_depart"));
				System.out.println("loginAdmin if문값 : " + loginAdmin);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
//		System.out.println("loginHost dao최종값 : " + loginHost);
		return loginAdmin;
	}
	
	// 회원가입 user dao
	public int insertMember(Connection conn, User u) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, u.getUserId());
			pstmt.setString(2, u.getUserPwd());
			pstmt.setString(3, u.getUserName());
			pstmt.setDate(4, u.getUserBirth());
			pstmt.setString(5, u.getUserGender());
			pstmt.setString(6, u.getUserEmail());
			pstmt.setString(7, u.getUserPhone());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	// userId로 회원 한명 조회용 dao
	public int insertHMember(Connection conn, Host h) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertHMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, h.getHst_id());
			pstmt.setString(2, h.getHst_pwd());
			pstmt.setString(3, h.getHst_name());
			pstmt.setDate(4, h.getHst_birth());
			pstmt.setString(5, h.getHst_gender());
			pstmt.setString(6, h.getHst_email());
			pstmt.setString(7, h.getHst_phone());
			pstmt.setString(8, h.getHst_bsno());
			pstmt.setString(9, h.getHst_bsname());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	// 회원 정보 수정용 dao
	public int updateMember(Connection conn, User u) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, u.getUserName());
			pstmt.setString(2, u.getUserPwd());
			pstmt.setString(3, u.getUserEmail());
			pstmt.setString(4, u.getUserPhone());
			pstmt.setString(5, u.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public int updateMember(Connection conn, Host h) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateHMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, h.getHst_name());
			pstmt.setString(2, h.getHst_pwd());
			pstmt.setString(3, h.getHst_email());
			pstmt.setString(4, h.getHst_phone());
			pstmt.setString(5, h.getHst_id());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	// 회원 1명 조회용 dao
	public User selectmember(Connection conn, String userId) {
		User updateUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			// 아이디 넣음
			pstmt.setString(1, userId);
			
			// 결과값 저장
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				updateUser = new User(rset.getString("US_NO"),
										 rset.getString("US_ID"),
										 rset.getString("US_PWD"),
										 rset.getString("US_NAME"),
										 rset.getDate("US_BIRTH"),
										 rset.getString("US_GENDER"),
										 rset.getString("US_EMAIL"),
										 rset.getString("US_PHONE"),
										 rset.getString("US_ACT"),
										 rset.getDate("US_STOP"));
			}
				
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
//		System.out.println("Dao 에서 select 한 updateUser 결과 : " + updateUser);
		return updateUser;
	}
	
	public Host selectHmember(Connection conn, String hst_id) {
		Host updateUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectHMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, hst_id);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				updateUser = new Host(rset.getString("HST_NO"),
								      rset.getString("HST_ID"),
								      rset.getString("HST_PWD"),
									  rset.getString("HST_NAME"),
									  rset.getDate("HST_BIRTH"),
									  rset.getString("HST_GENDER"),
									  rset.getString("HST_EMAIL"),
									  rset.getString("HST_PHONE"),
									  rset.getString("HST_BSNO"),
									  rset.getString("HST_BSNAME"),
									  rset.getString("HST_ACT"),
									  rset.getDate("HST_STOP"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
//		System.out.println("Dao 에서 select 한 updateUser 결과 : " + updateUser);
		return updateUser;
	}
	
	

}
