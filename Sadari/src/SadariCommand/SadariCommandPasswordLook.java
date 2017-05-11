package SadariCommand;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.LoginRepository;

public class SadariCommandPasswordLook implements SadariCommand{

	private String next;
	
	public SadariCommandPasswordLook(String next) {
		
		this.next=next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {

		String userId = request.getParameter("userId");
		String userTel = request.getParameter("userTel");
		
		String pw = LoginRepository.getInstance().lookPassword(userId,userTel);
		try {
			response.getWriter().print(pw);
		} catch (IOException e) {
			throw new SadariException();
		}
		
		return null;
	}

}
