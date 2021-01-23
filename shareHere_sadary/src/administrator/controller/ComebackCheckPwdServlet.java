package administrator.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import administrator.model.vo.Admin;

/**
 * Servlet implementation class ComebackCheckPwdServlet
 */
@WebServlet("/comeback/checkpwd")
public class ComebackCheckPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComebackCheckPwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Admin loginAdm = (Admin)session.getAttribute("loginAdmin");
		System.out.println(loginAdm);
;		String admPwd =loginAdm.getAdm_pwd();
		
		System.out.println("로그인 되어있는 admin :" + admPwd);
		request.setAttribute("admPwd", admPwd);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/admin/admin_outmemList.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
