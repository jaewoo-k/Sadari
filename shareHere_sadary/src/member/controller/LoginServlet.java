package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Host;
import member.model.vo.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/member/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String membertype = request.getParameter("mtype");
//		String user = request.getParameter("u");
//		String host = request.getParameter("h");
		
		System.out.println("request.getParameter(\"userId\") : " + request.getParameter("userId"));
		System.out.println("request.getParameter(\"userPwd\") : " + request.getParameter("userPwd"));
		
		
		
		// user일경우 로그인 로직
		if(membertype.charAt(0) == 'u') {

			User u = new User(userId, userPwd);

			User loginUser = new MemberService().loginMember(u);
			System.out.println("loginUser 값 : " + loginUser);

			if(loginUser != null) {
				request.getSession().setAttribute("loginUser", loginUser);
				response.sendRedirect(request.getContextPath());
			}else {
				request.setAttribute("msg", "로그인에 실패하였습니다.");
				request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
			}
			
			// host 로그인 로직
		}else if(membertype.charAt(0) == 'h'){
			Host h = new Host(userId, userPwd);

			System.out.println("값 넘기기 : " + h);
			Host loginHost = new MemberService().loginMember(h);
			System.out.println("loginHost 최종값 : " + loginHost);

			if(loginHost != null) {
				request.getSession().setAttribute("loginHost", loginHost);
				response.sendRedirect(request.getContextPath());
			}else {
				request.setAttribute("msg", "로그인에 실패하였습니다.");
				request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
			}
		}else {
			request.setAttribute("msg", "로그인에 실패하였습니다.");
			request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
		}
		/*
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
//		String membertype = request.getParameter("mtype");
		String user = request.getParameter("u");
		String host = request.getParameter("h");
		
		System.out.println("request.getParameter(\"userId\") : " + request.getParameter("userId"));
		System.out.println("request.getParameter(\"userPwd\") : " + request.getParameter("userPwd"));
		
		// user일경우 로그인 로직
		if(user != null) {

			User u = new User(userId, userPwd);

			User loginUser = new MemberService().loginMember(u);
			System.out.println("loginUser 값 : " + loginUser);

			if(loginUser != null) {
				request.getSession().setAttribute("loginUser", loginUser);
				response.sendRedirect(request.getContextPath());
			}else {
				request.setAttribute("msg", "로그인에 실패하였습니다.");
				request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
			}
			
			// host 로그인 로직
		}else if(host != null){
			Host h = new Host(userId, userPwd);

			System.out.println("값 넘기기 : " + h);
			Host loginHost = new MemberService().loginMember(h);
			System.out.println("loginHost 최종값 : " + loginHost);

			if(loginHost != null) {
				request.getSession().setAttribute("loginHost", loginHost);
				response.sendRedirect(request.getContextPath());
			}else {
				request.setAttribute("msg", "로그인에 실패하였습니다.");
				request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
			}
		}else {
			request.setAttribute("msg", "로그인에 실패하였습니다.");
			request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
		}
		*/
//		else {
//			alert("회원 유형을 선택해주세요.");
//		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*
		// 로그인 실패, 성공의 경우를 판별
		if(loginUser != null) {
			request.getSession().setAttribute("loginUser", loginUser);
			response.sendRedirect(request.getContextPath());
		}else {
			request.setAttribute("msg", "로그인에 실패하였습니다.");
			request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
		}
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
