package house.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import house.model.dao.HouseDao;
import house.model.vo.HostInfo;
import house.model.vo.HostPhoto;
import house.model.vo.HostRoom;
import house.model.vo.HouseReport;

import static common.JDBCTemplate.*;

public class HouseService {

	// 매물 등록하기
	public int insertInfo(HostInfo info, ArrayList<HostPhoto> photoList) {
		Connection conn = getConnection();
		
		HouseDao hd = new HouseDao();
		
		int resultInfo = hd.insertInfo(conn, info);
		int resultPhoto = hd.insertInfo(conn, photoList);
		
		if(resultInfo > 0 && resultPhoto == photoList.size()) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return resultInfo;
	}
	
	// 매물 등록하기
	public int insertInfo(HostInfo info, ArrayList<HostPhoto> photoList, ArrayList<HostRoom> roomList) {
		Connection conn = getConnection();
		
		HouseDao hd = new HouseDao();
		
		int resultInfo = hd.insertInfo(conn, info);
		int resultPhoto = hd.insertInfo(conn, photoList);
		int resultRoom = hd.insertInfoRoom(conn, roomList);
		
		if(resultInfo > 0 && resultPhoto == photoList.size()) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return resultInfo;
	}

	// 신고하기 
	public int insertReport(HouseReport r) {
		Connection conn = getConnection();
		
		int result = new HouseDao().insertReport(conn, r);
		
		if(result > 0) {
			commit(conn);
		} else {
			close(conn);
		}
		
		return result;
	}



}
