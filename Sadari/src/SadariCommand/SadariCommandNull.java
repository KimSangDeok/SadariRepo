package SadariCommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;

public class SadariCommandNull implements SadariCommand{
	private String next;

	public SadariCommandNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response ) throws SadariException{
		return next;
	}

}
