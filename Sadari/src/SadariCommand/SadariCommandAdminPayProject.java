package SadariCommand;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.InsertProjectRepository;

public class SadariCommandAdminPayProject implements SadariCommand{

	private String next="";
	
	public SadariCommandAdminPayProject(String next) {
		
		this.next=next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {
		
		List<HashMap> pList = InsertProjectRepository.getInstance().selectPayMentList();
		
		request.setAttribute("pList", pList);
		request.setAttribute("pageName", request.getParameter("pageName"));
		return next;
	}

}
