package SadariControl;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariCommand.SadariCommand;
import SadariCommand.SadariCommandAdminProject;
import SadariCommand.SadariCommandAdminProjectGumSu;
import SadariCommand.SadariCommandAdminProjectInfo;
import SadariCommand.SadariCommandGetCountValue;
import SadariCommand.SadariCommandInsertCheck;
import SadariCommand.SadariCommandInsertMember;
import SadariCommand.SadariCommandInsertProject;
import SadariCommand.SadariCommandLoginCheck;
import SadariCommand.SadariCommandNull;
import SadariCommand.SadariCommandPasswordLook;
import SadariCommand.SadariCommandPayment;
import SadariModel.SadariException;

/**
 * Servlet implementation class GuestControl
 */
public class SadariAdminControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/";
	private String  error = "error.jsp";
	

    public SadariAdminControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();

		commandMap.put("ad-mypage",	new SadariCommandAdminProject("managerTest.jsp"));
		commandMap.put("pj-info",	new SadariCommandAdminProjectInfo("managerTestProject.jsp"));
		commandMap.put("pj-gumsu",	new SadariCommandAdminProjectGumSu("managerTest.jsp"));
//		commandMap.put("payment",	new SadariCommandPayment("managerPay.jsp"));
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String cmdKey	= request.getParameter("cmd");
		if( cmdKey == null ){
			
			cmdKey = "main-page";
		}

		
		SadariCommand cmd = null;

		try{
			
			if( commandMap.containsKey( cmdKey ) ){
				cmd = (SadariCommand)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new SadariException("지정할 명령어가 존재하지 않음");
			}

			nextPage = cmd.execute( request,response );

		}catch( SadariException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}

		if(nextPage != null) {
			RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
			reqDp.forward( request, response );
		}
		
	}

}
