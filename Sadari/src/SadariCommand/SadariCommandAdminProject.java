package SadariCommand;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.InsertProjectRepository;

public class SadariCommandAdminProject implements SadariCommand{

	private String next="";
	
	public SadariCommandAdminProject(String next) {

		this.next=next;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {

		List<HashMap> pList = InsertProjectRepository.getInstance().selectProjectList();
		List<HashMap> sList = InsertProjectRepository.getInstance().selectSProjectList();
		
		request.setAttribute("pList", pList);
		request.setAttribute("sList", sList);
		
		request.setAttribute("pageName", request.getParameter("pageName"));
		
		return next;
	}

}
