package administrator.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import administrator.model.dao.ADM_SharehouseDao;
import administrator.model.vo.Sharehouse;

public class ADM_SharehouseService {

	// 1. 매물 리스트 출력 메소드
	public ArrayList<Sharehouse> selectHouseList() {
		Connection conn = getConnection();
		ArrayList<Sharehouse> list = new ADM_SharehouseDao().selectHouseList(conn);
		
		close(conn);
		return list;
	}
	
}
