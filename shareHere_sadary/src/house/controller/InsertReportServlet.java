package house.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import house.model.service.HouseService;
import house.model.vo.HostInfo;
import house.model.vo.HouseReport;
import member.model.vo.Host;
import member.model.vo.User;

/**
 * Servlet implementation class InsertReportServlet
 */
@WebServlet("/insert/report")
public class InsertReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReportServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 값 인코딩 처리
		request.setCharacterEncoding("UTF-8");
		
		// request에 담겨 있는 값을 꺼내서 변수에 저장 및 객체 생성
		String rreason = request.getParameter("rreason");
		String rcontent = request.getParameter("rcontent");
		String shNo = request.getParameter("shNo");
		
		// 테이블의 usNo는 일반유저의 us_no의 개념이므로
		// 일반 유저로부터 us_no 도출
		String usNo = ((User)request.getSession().getAttribute("loginUser")).getUserNo();
		
		// 테이블의 shNo는 신고한 하우스의 shNo의 개념이므로
		// 신고한하우스로부터 shNo 도출
		//String shNo = ((HostInfo)request.getSession().getAttribute("hstInfo")).getShNo();
		
		
		HouseReport r = new HouseReport(rreason, rcontent, shNo, usNo);
		// 출력값 넘어오는지 확인
		System.out.println("값 넘어오는지 확인 : " + r);
		
		
		int result = new HouseService().insertHouseReport(r);
		
		// 받은 결과에 따라 성공 / 실패 페이지 내보내기
				if(result > 0) {
					//신고 완료시 인덱스 페이지로 이동
					request.getSession().setAttribute("msg", "신고내역이 접수되었습니다.");
					response.sendRedirect(request.getContextPath() + "/views/common/main.jsp");
				} else {
					request.setAttribute("msg", "신고에 실패하였습니다.");
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
