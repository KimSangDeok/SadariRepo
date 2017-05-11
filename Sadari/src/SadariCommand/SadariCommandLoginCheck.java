package SadariCommand;

import java.io.IOException;

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
	    
	    String id = LoginRepository.getInstance().loginCheck(userId,userPw);
	    
	    try {
			response.getWriter().print(id);
		} catch (IOException e) {
			throw new SadariException();
		}
	    
		return null;
	}

}
