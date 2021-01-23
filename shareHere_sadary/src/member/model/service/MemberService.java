package member.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import member.model.dao.MemberDao;
import member.model.vo.Admin;
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
		close(conn);
		return loginHost;
	}
	
	// 관리자 로그인용 
		public Admin loginMember(Admin a) {
			Connection conn = getConnection();
			
			Admin loginAdmin = new MemberDao().loginMember(conn, a);
			
			close(conn);
			return loginAdmin;
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
	// 유저 회원정보수정 (수정중
	public User updateMember(User u) {
		Connection conn = getConnection();
		User updateMember = null;
		
		int result = new MemberDao().updateMember(conn, u);
		System.out.println("서비스 updateMember (결과) " + result);
		
		if(result > 0) {
			updateMember = new MemberDao().selectmember(conn, u.getUserId());
			System.out.println("업데이트 성공 시 updateMember : " + updateMember);
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return updateMember;
	}
	public Host updateMember(Host h) {
		Connection conn = getConnection();
		Host updateMember = null;
		
		int result = new MemberDao().updateMember(conn, h);
		System.out.println("서비스 updateMember (결과) " + result);
		
		if(result > 0) {
			updateMember = new MemberDao().selectHmember(conn, h.getHst_id());
			System.out.println("업데이트 성공 시 updateMember : " + updateMember);
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return updateMember;
	}
	// id 중복체크
	public int idCheck(String userId) {
		Connection conn = getConnection();
		int result = new MemberDao().idCheck(conn, userId);
		close(conn);
		
		return result;
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
