package house.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import house.model.service.HouseService;
import house.model.vo.HostInfo;

/**
 * Servlet implementation class hst_InfoServlet
 */
@WebServlet("/hst/info")
public class hst_InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hst_InfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		
		String shTitle = request.getParameter("hName");
		String shType = request.getParameter("hType");
		String shStr = request.getParameter("hStructure");
		String shArea = request.getParameter("hArea");
		String shFloor = request.getParameter("hFloor");
		
		String shIntro = request.getParameter("hIntro");
		String[] shPersArr = request.getParameterValues("hPers");
		String[] shCommonArr = request.getParameterValues("hCommon");
		String[] shServiceArr = request.getParameterValues("hService");
		String[] shAddressArr = request.getParameterValues("hAddress");
		String shLa = request.getParameter("la");
		String shLo = request.getParameter("lo");
		String[] shBankArr = request.getParameterValues("hBank");
		String[] shMartArr = request.getParameterValues("hMart");
		String[] shPhaArr = request.getParameterValues("hPha");
		String[] shSubwayArr = request.getParameterValues("hSubway");
		String[] shCafeArr = request.getParameterValues("hCafe");
		String[] shConArr = request.getParameterValues("hCon");
		
		
		String shPers = "";
		String shComs = "";
		String shSs = "";
		String shAddress = "";
		String shBank = "";
		String shMart = "";
		String shParmacy = "";
		String shSubway = "";
		String shCafe = "";
		String shStore = "";
		
		if(shPersArr != null) 
			shPers = String.join(",", shPersArr);
		if(shCommonArr != null)
			shComs = String.join(",", shCommonArr);
		if(shServiceArr != null)
			shSs = String.join(",", shServiceArr);
		if(shAddressArr != null)
			shAddress = String.join(",", shAddressArr);
		if(shBankArr != null)
			shBank = String.join(",", shBankArr);
		if(shMartArr != null)
			shMart = String.join(",", shMartArr);
		if(shPhaArr != null)
			shParmacy = String.join(",", shPhaArr);
		if(shSubwayArr != null)
			shSubway = String.join(",", shSubwayArr);
		if(shCafeArr != null)
			shCafe = String.join(",", shCafeArr);
		if(shConArr != null)
			shStore = String.join(",", shConArr);
		
		HostInfo info = new HostInfo(shTitle, shType, shStr, shArea, shFloor, shIntro,
				shPers, shComs, shSs, shAddress, shLa, shLo, shBank,
				shMart, shParmacy, shSubway, shCafe, shStore);
//		HostInfo info = new HostInfo(shTitle, shType, shStr, shArea, shFloor, shIntro,
//				shPers, shComs, shSs, shBank,
//				shMart, shParmacy, shSubway, shCafe, shStore);
		System.out.println("잘 넘어오는지 확인 : " + info);
		
		int result = new HouseService().insertInfo(info);
		
		
		if(result > 0) {
			request.getSession().setAttribute("msg", "매물이 등록되었습니다.");
			response.sendRedirect(request.getContextPath() + "/views/House/host/hst_confirm.jsp");
		}else {
			request.setAttribute("msg", "HOUSE 매물 등록에 실패하였습니다.");
			request.getRequestDispatcher("/views/common/errorPageHost.jsp").forward(request, response);
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
