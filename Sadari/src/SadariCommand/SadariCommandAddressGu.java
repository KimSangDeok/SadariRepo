package SadariCommand;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.AddressRepositoryGu;



public class SadariCommandAddressGu implements SadariCommand{
private String next;
	
	public SadariCommandAddressGu(String next) {
		
		this.next=next;
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {

		String data = request.getParameter("sendData");
		String gu = AddressRepositoryGu.getInstance().address(data);
		
		try {
			response.setContentType("text/html;charset=UTF-8"); //디코더
			response.getWriter().print(gu);			
		} catch (IOException e) {
			throw new SadariException();
		}
		
		return null;
	}
}
