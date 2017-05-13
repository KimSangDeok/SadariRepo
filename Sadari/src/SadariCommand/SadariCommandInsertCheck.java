package SadariCommand;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.MemberInsertCheckRepository;

public class SadariCommandInsertCheck implements SadariCommand{
	private String next;

	public SadariCommandInsertCheck( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response ) throws SadariException{
		
		
		String userId = request.getParameter("userId");
	    String id = MemberInsertCheckRepository.getInstance().insertCheck(userId);

	    try {
			response.getWriter().print(id);
		} catch (IOException e) {
			throw new SadariException();
		}
	    
		return null;
	}

}