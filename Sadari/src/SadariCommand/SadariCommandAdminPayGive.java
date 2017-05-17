package SadariCommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;

public class SadariCommandAdminPayGive implements SadariCommand{

	private String next="";
	
	public SadariCommandAdminPayGive(String next) {
		
		this.next=next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {
		
		request.setAttribute("pageName", request.getParameter("pageName"));
		return next;
	}

}
