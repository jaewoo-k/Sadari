package house.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import house.model.dao.HouseDao;
import house.model.vo.HostInfo;
import house.model.vo.HostPay;
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
		
		if(resultInfo > 0 && resultPhoto == photoList.size() && resultRoom  == roomList.size()) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return resultInfo;
	}
	
	// 확인 조회
	public ArrayList<HostInfo> selectInfo() {
		Connection conn = getConnection();
		
		ArrayList<HostInfo> infoList = new HouseDao().selectInfo(conn);
		
		close(conn);
		
		return  infoList; 
	}
	
	// 확인 페이지 결제 조회
	public ArrayList<HostPay> selectpay() {
		
		Connection conn = getConnection();
		
		ArrayList<HostPay> payList = new HouseDao().selectPay(conn);
		
		close(conn);
		
		return  payList; 
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
