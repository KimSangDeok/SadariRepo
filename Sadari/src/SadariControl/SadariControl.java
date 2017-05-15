package SadariControl;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariCommand.SadariCommand;
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
public class SadariControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/";
	private String  error = "error.jsp";
	

    public SadariControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();

		commandMap.put("payment",	new SadariCommandPayment("managerPay.jsp"));
		commandMap.put("login-do",	new SadariCommandLoginCheck("loginForm.jsp"));
		commandMap.put("main-page",	  new SadariCommandNull("main.jsp"));
		commandMap.put("pwlook-form",	  new SadariCommandNull("passwordLookForm.jsp"));
		commandMap.put("pwlook-do",	  new SadariCommandPasswordLook("passwordLookForm.jsp"));
		commandMap.put("pj-save", new SadariCommandInsertProject("insertProjectResult.jsp"));
		commandMap.put("list-partner", new SadariCommandNull("partnerList.jsp"));
		commandMap.put("count", new SadariCommandGetCountValue("index.jsp"));
		commandMap.put("reg-project", new SadariCommandNull("projectInsertView.jsp"));
		commandMap.put("search-project", new SadariCommandNull("searchProject.jsp"));
		commandMap.put("check-member", new SadariCommandInsertCheck("memberInsertView.jsp"));
		commandMap.put("insert-member", new SadariCommandInsertMember("loginForm.jsp"));
		
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
