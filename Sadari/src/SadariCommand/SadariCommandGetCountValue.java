package SadariCommand;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.CountRepository;

public class SadariCommandGetCountValue implements SadariCommand {

	private String next;
	
	public SadariCommandGetCountValue( String next ){
	
		this.next = next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {
		
		HashMap count = CountRepository.getInstance().getStatsProject();
		
		request.setAttribute("count", count);
		
		return next;
	}
}