package house.model.service;

import java.sql.Connection;

import house.model.dao.HouseDao;
import house.model.vo.HostInfo;
import house.model.vo.HostPay;
import house.model.vo.HouseReport;

import static common.JDBCTemplate.*;

public class HouseService {

	
	public int insertInfo(HostInfo info) {
		Connection conn = getConnection();
		
		int result = new HouseDao().insertInfo(conn, info);
		
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	// 임대인 결제 insert
	public int insertHstpay(HostPay hpay) {
		Connection conn = getConnection();
		
		int result = new HouseDao().insertHstpay(conn, hpay);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	// 하우스 신고 insert
	public int insertHouseReport(HouseReport r) {
		Connection conn = getConnection();
		
		int result = new HouseDao().insertHouseReport(conn, r);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	

}
