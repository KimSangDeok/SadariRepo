package SadariControl;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariCommand.SadariCommand;
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
//		commandMap.put("view-page",	new MMBoardCommandViewArticle("BoardView.jsp"));
//		commandMap.put("write-form",	  new MMBoardCommandNull("BoardInputForm.jsp"));
//		commandMap.put("write-do",	  new MMBoardCommandWriteArticle("BoardView.jsp"));
//		commandMap.put("delete-form", new BoardCommandNull("BoardDeleteForm.jsp"));
//		commandMap.put("delete-do", new BoardCommandDeleteArticle("BoardDelete.jsp"));
//		commandMap.put("modify-form", new BoardCommandNull("BoardModifyForm.jsp"));
//		commandMap.put("modify-do", new BoardCommandModify("BoardModify.jsp"));
//		commandMap.put("reply-form", new BoardCommandNull("BoardReplyForm.jsp"));
//		commandMap.put("reply-do", new BoardCommandReply("BoardReply.jsp"));
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

			nextPage = cmd.execute( request );

		}catch( SadariException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}

}
