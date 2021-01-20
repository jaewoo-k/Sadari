package administrator.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static common.JDBCTemplate.*;

import administrator.model.vo.Hostmember;
import administrator.model.vo.Outmember;
import administrator.model.vo.Usermember;

public class ADM_MemberDao {
	
	private Properties prop = new Properties();
	
	public ADM_MemberDao() {
		String fileName = ADM_MemberDao.class.getResource("/sql/administrator/admin_query.xml").getPath();
	
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}

	// 1. 일반회원 리스트 조회용 메소드
	public ArrayList<Usermember> selectUserList(Connection conn) {
		ArrayList<Usermember> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectUserList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Usermember(rset.getString("US_NO"),
										rset.getString("US_NAME"),
										rset.getString("US_ID"),
										rset.getDate("US_BIRTH"),
										rset.getString("US_EMAIL")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	// 2. 임대인회원 리스트 조회용 메소드
	public ArrayList<Hostmember> selectHostList(Connection conn) {
		System.out.println("dao로 이동.");
		ArrayList<Hostmember> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectHostList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Hostmember(rset.getString("HST_NO"),
										 	rset.getString("HST_NAME"),
										 	rset.getString("HST_ID"),
										 	rset.getString("HST_BSNO"),
											rset.getString("HST_BSNAME")));
				System.out.println("list 담기 성공");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	// 3. 탈퇴 회원 리스트 출력용 메소드
	/*public ArrayList<Object> selectOutList(Connection conn) {
		ArrayList<Object> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOutList");
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				if(rset.getString("US_ACT") == 'Y' || rset.getNString("US_ACT") == 'B' && rset.getNString("HST_ACT") == 'N') {
					list.add(new Hostmember(rset.getString("HST_NO"),
						 	rset.getString("HST_NAME"),
						 	rset.getString("HST_ID"),
						 	rset.getString("HST_BSNO"),
							rset.getString("HST_BSNAME")));
					
				} else {
					list.add(new Usermember(rset.getString("US_NO"),
						 	rset.getString("US_NAME"),
						 	rset.getString("US_ID"),
						 	rset.getString("US_BSNO"),
							rset.getString("US_BSNAME")));
				}
				
				System.out.println("list 담기 성공");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return null;
	}*/

}
