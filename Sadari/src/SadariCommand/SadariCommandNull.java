package SadariCommand;

import javax.servlet.http.HttpServletRequest;

import SadariModel.SadariException;

public class SadariCommandNull implements SadariCommand{
	private String next;

	public SadariCommandNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws SadariException{
		return next;
	}

}
