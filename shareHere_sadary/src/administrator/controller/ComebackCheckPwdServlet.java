package administrator.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import administrator.model.service.ADM_MemberService;
import administrator.model.vo.Admin;
import administrator.model.vo.Outmember;

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
		String admPwd =loginAdm.getAdm_pwd();
		
		ArrayList<Outmember> list = new ADM_MemberService().selectOutList();
		//ArrayList<Outmember> list = (ArrayList<Outmember>) request.getAttribute("list");
	
		String[] twoList = request.getParameterValues("twoList");
		
		String twoList2 = "";
		
		if(twoList != null) 
			twoList2 = String.join(", ", twoList);
		
		System.out.println("로그인 되어있는 admin :" + admPwd);
		System.out.println("checkPwd 서블렛에서 다시 outmemList로 보내는 list :" + list);
		System.out.println("checkPwd 서블렛으로 넘어온 twoList : " + twoList2);
		
		request.setAttribute("twoList2", twoList2);
		request.setAttribute("admPwd", admPwd);
		request.setAttribute("list", list);
		
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
