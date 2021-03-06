package SadariControl;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariCommand.CommandPartnerInfoInsert;
import SadariCommand.SadariCommand;
import SadariCommand.SadariCommandAddressGu;
import SadariCommand.SadariCommandAddressSi;
import SadariCommand.SadariCommandAdminProject;
import SadariCommand.SadariCommandClientUpdate;
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

		//파트너 페이지에서 개인 정보 수정하기눌렀을 때
		commandMap.put("basicinfo", new SadariCommandNull("partnerBasicInfo.jsp"));
		
		//개인정보 수정 페이지에서 파트너 개인정보 입력
		commandMap.put("basicinfo-insert", new CommandPartnerInfoInsert("partnerList.jsp"));
		
		//주소 시,군,구 받아오기

		commandMap.put("address-selectsi", new SadariCommandAddressSi("partnerBasicInfo.jsp"));
		commandMap.put("address-selectgu", new SadariCommandAddressGu("partnerBasicInfo.jsp"));
		
		//파트너 프로필 페이지 넘기기
		commandMap.put("introduce",	  new SadariCommandNull("partnersInstroduce.jsp"));
		commandMap.put("totalview",	  new SadariCommandNull("partnersProfile.jsp"));
		commandMap.put("portrolio",	  new SadariCommandNull("partnerPortfolio.jsp"));
		commandMap.put("skill",	  new SadariCommandNull("partnersInstroduce.jsp"));
		commandMap.put("introduce",	  new SadariCommandNull("partnersInstroduce.jsp"));
	
		//프로젝트 등록후 검수화면에서 파트너목록 버튼 눌러서 파트너목록 페이지 불러오기.
		commandMap.put("show-partnerList", new SadariCommandNull("partnerList.jsp"));
		
		//클라이언트 정보 업데이트
		commandMap.put("client-info", new SadariCommandClientUpdate("clientInfo.jsp"));
		
		//로그인시 관리자 아이디면 관리자 페이지로
		commandMap.put("ad-mypage",	new SadariCommandAdminProject("managerTest.jsp"));
		//관리자 아이디 아니면 
		commandMap.put("pt-mypage", new SadariCommandNull("partnersPage.jsp"));
		commandMap.put("ct-mypage", new SadariCommandNull("partnersPage.jsp"));
		//로그인 폼으로
		commandMap.put("login-form", new SadariCommandNull("loginForm.jsp"));
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
