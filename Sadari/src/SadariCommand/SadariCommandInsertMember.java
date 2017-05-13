package SadariCommand;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.MemberInsertRec;
import SadariModel.SadariException;
import Sadarisession.MemberInsertRepository;

public class SadariCommandInsertMember implements SadariCommand{
	private String next;

	public SadariCommandInsertMember( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response ) throws SadariException{
		
		MemberInsertRec rec = new MemberInsertRec();
		rec.setKind(request.getParameter("usage"));
		rec.setUserId(request.getParameter("userId"));
		rec.setPassword(request.getParameter("password"));
	    
		int result = MemberInsertRepository.getInstance().insertMember(rec);
		
		request.setAttribute("result", result);
		
		return next;

	}

}