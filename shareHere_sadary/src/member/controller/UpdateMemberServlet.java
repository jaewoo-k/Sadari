package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.User;

/**
 * Servlet implementation class UpdateMemberServlet
 */
@WebServlet("/member/update")
public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMemberServlet() {
        super();
         // TODO Auto-generated constructor stub
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 한글 값 인코딩
				request.setCharacterEncoding("UTF-8");
				
				// 2. 회원정보 수정에 필요한 값 추출
//				아이디
//				이름
//				비밀번호
//				이메일
//				휴대전화
				String userId = ((User)request.getSession().getAttribute("loginUser")).getUserId();
				String userName = request.getParameter("us_name");
				String userPwd = request.getParameter("us_pwd");
				String userEmail = request.getParameter("us_email");
				String userPhone = request.getParameter("us_phone");
				System.out.println("userPhone값 : " + userPhone);
				User u = new User(userId, userName, userPwd, userEmail, userPhone);
				 System.out.println("수정하고자 하는 정보 : " + u);
				
				User updateMember = new MemberService().updateMember(u);
				System.out.println("최종 User 값 : " + updateMember);
				
				
				if(updateMember != null) {
					request.getSession().setAttribute("msg", "회원 정보 수정이 완료되었습니다.");
					request.getSession().setAttribute("loginUser", updateMember);
					response.sendRedirect(request.getContextPath());
				}else {
					// 수정 실패시 에러 페이지로 forward
					request.setAttribute("msg", "회원 정보 수정에 실패했습니다.");
					request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response); 
				}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
