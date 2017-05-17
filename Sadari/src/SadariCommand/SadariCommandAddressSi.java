package SadariCommand;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.AddressRepositorySi;

public class SadariCommandAddressSi implements SadariCommand{
	private String next;
	
	public SadariCommandAddressSi(String next){
		this.next = next;
	}
	

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {
		
		String si = AddressRepositorySi.getInstance().address();
				
		try {
			response.setContentType("text/html;charset=UTF-8"); //디코더
			response.getWriter().print(si);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
