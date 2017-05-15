package SadariCommand;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.LoginRepository;

public class SadariCommandLoginCheck implements SadariCommand{
	private String next;

	public SadariCommandLoginCheck( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response ) throws SadariException{
		
		
		String userId = request.getParameter("userId");
	    String userPw = request.getParameter("userPw");
	    
	    HashMap loginResult = LoginRepository.getInstance().loginCheck(userId,userPw);
	    String id = ((String) loginResult.get("id")).trim();
	    String type= ((String) loginResult.get("type")).trim();
	    
//	    loginFaile
	    if(!(id.trim()).equals("loginFaile")){
	    	
//	    	HttpSession se = ;
	    	request.getSession().setAttribute("id", id);
	    	request.getSession().setAttribute("type", type);
	    }
	    
	    try {
			response.getWriter().print(type);
		} catch (IOException e) {
			throw new SadariException();
		}
	    
		return null;
	}

}
