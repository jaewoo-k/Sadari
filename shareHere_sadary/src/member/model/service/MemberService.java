package member.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import administrator.model.vo.Admin;
import administrator.model.vo.Usermember;
import member.model.dao.MemberDao;
import member.model.vo.Host;
import member.model.vo.User;
public class MemberService {

	 // 로그인 (아직 일반)
	public User loginMember(User u) {
		Connection conn = getConnection();
		
		User loginUser = new MemberDao().loginMember(conn, u);
		
		close(conn);
		return loginUser;
	}
	// 로그인 호스트(오버 로딩?라이딩?)
	public Host loginMember(Host h) {
		Connection conn = getConnection();
		System.out.println("h 서비스값 : " + h);
		
		Host loginHost = new MemberDao().loginMember(conn, h);
		System.out.println("loginHost 서비스값 : " + loginHost);
		close(conn);
		return loginHost;
	}
	
	public int insertMember(User u) {
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, u);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public int insertHMember(Host h) {
		Connection conn = getConnection();
		
		int result = new MemberDao().insertHMember(conn, h);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/* 관리자 로그인 메소드 */
	
	public Admin loginMember(Admin adm) {
		Connection conn = getConnection();
		
		
		Admin loginAdmin = new MemberDao().loginMember(conn, adm);
		//System.out.println("dao에서 받은 loginAdmin 값 : " + loginAdmin);
		
		close(conn);
		return loginAdmin;
	}


}
