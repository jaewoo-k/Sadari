package house.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import house.model.vo.HostInfo;
import house.model.vo.HostPhoto;
import house.model.vo.HostRoom;
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

	// InsertInfo
	public int insertInfo(Connection conn, HostInfo info) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertInfo");
		
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
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	// HostInsert Photo
	public int insertInfo(Connection conn, ArrayList<HostPhoto> photoList) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPhoto");
		
		for(int i = 0; i < photoList.size(); i++) {
			try {
				pstmt = conn.prepareStatement(sql);
				
				HostPhoto hp = photoList.get(i);
				pstmt.setString(1, hp.getShIname());
				pstmt.setString(2, hp.getShIpath());
				pstmt.setString(3, hp.getShItype());
				pstmt.setString(4, hp.getShChName());
				
				result += pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
		}
		
		return result;
	}
	

	public int insertInfoRoom(Connection conn, ArrayList<HostRoom> roomList) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertRoom");
		
		for(int i = 0; i < roomList.size(); i++) {
			try {
				pstmt = conn.prepareStatement(sql);
				
				HostRoom hr = roomList.get(i);
				pstmt.setString(1, hr.getShRImg());
				pstmt.setString(2, hr.getShRtype());
				pstmt.setString(3, hr.getShGender());
				pstmt.setString(4, hr.getShRarea());
				pstmt.setString(5, hr.getShDeposit());
				pstmt.setString(6, hr.getShAdmcost());
				pstmt.setString(7, hr.getShMonthly());
				pstmt.setDate(8, hr.getShRdate());
				pstmt.setInt(9, hr.getShCapacity());
				pstmt.setString(10, hr.getShRname());
				pstmt.setString(11, hr.getShRImgPath());
				pstmt.setString(12, hr.getShRImgCh());
				
				result += pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
		}
		
		return result;
	}


	// 신고하기 
	public int insertReport(Connection conn, HouseReport r) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReport");
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, r.getShReason());
			pstmt.setString(2, r.getShContent());
		
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}


}
