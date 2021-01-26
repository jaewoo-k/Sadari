package house.model.service;

import java.sql.Connection;

import house.model.dao.HouseDao;
import house.model.vo.HostInfo;
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
	

}
