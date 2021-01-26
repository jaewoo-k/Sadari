package house.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import house.model.vo.HostInfo;
import house.model.vo.HostPay;
import house.model.vo.HouseReport;

public class HouseDao {
	
	private Properties prop = new Properties();
	
	public HouseDao() {
		
		String fileName = HouseDao.class.getResource("/sql/house/house-query.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	public int insertInfo(Connection conn, HostInfo info) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertHouse");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, info.getShTitle());
			pstmt.setString(2, info.getShType());
			pstmt.setString(3, info.getShStr());
			pstmt.setString(4, info.getShArea());
			pstmt.setString(5, info.getShFloor());
			pstmt.setString(6, info.getShIntro());
			pstmt.setString(7, info.getShPers());
			pstmt.setString(8, info.getShComs());
			pstmt.setString(9, info.getShSs());
			pstmt.setString(10, info.getShAddress());
			pstmt.setString(11, info.getShLa());
			pstmt.setString(12, info.getShLo());
			pstmt.setString(13, info.getShBank());
			pstmt.setString(14, info.getShMart());
			pstmt.setString(15, info.getShParmacy());
			pstmt.setString(16, info.getShSubway());
			pstmt.setString(17, info.getShCafe());
			pstmt.setString(18, info.getShStore());

//			pstmt.setString(10, info.getShBank());
//			pstmt.setString(11, info.getShMart());
//			pstmt.setString(12, info.getShParmacy());
//			pstmt.setString(13, info.getShSubway());
//			pstmt.setString(14, info.getShCafe());
//			pstmt.setString(15, info.getShStore());
			
			result = pstmt.executeUpdate();
			System.out.println("daosql : " + result);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	// 임대인 결제 insert
	public int insertHstpay(Connection conn, HostPay hpay) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertHstpay");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, hpay.getShItem());
			pstmt.setString(2, hpay.getShPrice());
			pstmt.setString(3, hpay.getHstNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	//하우스 신고
	public int insertHouseReport(Connection conn, HouseReport r) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertHouseReport");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, r.getrReason());
			pstmt.setString(2, r.getrContent());
			pstmt.setString(3, r.getShNo());
			pstmt.setString(4, r.getUsNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
