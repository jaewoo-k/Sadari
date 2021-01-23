package administrator.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import administrator.model.vo.Sharehouse;
import administrator.model.vo.Usermember;

public class ADM_SharehouseDao {
	
	private Properties prop = new Properties();
	
	public ADM_SharehouseDao() {
		String fileName = ADM_SharehouseDao.class.getResource("/sql/administrator/admin_query.xml").getPath();
	
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}

	// 1. 매물 리스트 출력 메소드
	public ArrayList<Sharehouse> selectHouseList(Connection conn) {
		ArrayList<Sharehouse> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectSharehouseList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Sharehouse(rset.getString("SH_NO"),
										rset.getString("SH_TITLE"),
										rset.getDate("SH_DATE"),
										rset.getString("PAY_NO"),
										rset.getString("SH_PERIOD"),
										rset.getString("HST_NO")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;

	}

}
