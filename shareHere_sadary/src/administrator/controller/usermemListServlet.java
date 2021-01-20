package administrator.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import administrator.model.service.ADM_MemberService;
import administrator.model.vo.Hostmember;
import member.model.service.MemberService;
import administrator.model.vo.Usermember;

/**
 * Servlet implementation class usermemListServlet
 */
@WebServlet("/usermem/list")
public class usermemListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usermemListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("서블릿 연결.");
		
		ArrayList<Usermember> list = new ADM_MemberService().selectUserList();
		//System.out.println("list : " + list);
		
		request.setAttribute("list", list);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/admin/adm_usermemList.jsp");
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
