package house.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import house.model.service.HouseService;
import house.model.vo.HostPay;
import member.model.vo.Host;


/**
 * Servlet implementation class InsertHstpayServlet
 */
@WebServlet("/insert/hstpay")
public class InsertHstpayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertHstpayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 값 인코딩 처리
		request.setCharacterEncoding("UTF-8");
		
		// request에 담겨 있는 값을 꺼내서 변수에 저장 및 객체 생성 (결제항목, 결제금액, 임대인회원번호)
		
		// 결제항목 불러오기
		String shitem = request.getParameter("name");
		//System.out.println("결제항목 : " + shitem);
		
		// 결제금액 불러오기
		String shprice = request.getParameter("amount");
		//System.out.println("결제금액 : " + shprice);
		
		// 테이블의 hstNo는 임대인유저의 hst_no의 개념이므로
		// 임대인 유저로부터 hst_no 도출
		String hstNo = ((Host)request.getSession().getAttribute("loginHost")).getHst_no();
		
		
		HostPay hpay = new HostPay(shitem, shprice, hstNo );
		
		System.out.println("잘 넘어오는지 확인 : " + hpay);
		
		// 비즈니스 로직을 수행할 서비스 메소드 호출하고 결과 값 받기
		int result = new HouseService().insertHstpay(hpay);
		
		// 받은 결과에 따라 성공 / 실패 페이지 내보내기
		if(result > 0) {
			//결제 완료 시 메세지 띄우고 매물 등록 페이지로 이동
			// request.getSession().setAttribute("msg", "결제가 완료되었습니다.매물을 등록해 주세요!");
			 response.sendRedirect(request.getContextPath() + "/views/House/host/hst_info.jsp");
			//request.getRequestDispatcher("/views/House/host_hst_info.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "결제에 실패하였습니다.");
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
