package SadariCommand;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.InsertProjectRepository;

public class SadariCommandAdminProjectGumSu implements SadariCommand{

	private String next="";
	
	public SadariCommandAdminProjectGumSu(String next) {

		this.next=next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {

		int pjNo = Integer.parseInt(request.getParameter("pjNo"));
		String yn = request.getParameter("yn");
		InsertProjectRepository.getInstance().updateGumSu(pjNo,yn);

		
		List<HashMap> pList = InsertProjectRepository.getInstance().selectProjectList();
		List<HashMap> sList = InsertProjectRepository.getInstance().selectSProjectList();
		
		request.setAttribute("pList", pList);
		request.setAttribute("sList", sList);
		
		return next;
	}

}
