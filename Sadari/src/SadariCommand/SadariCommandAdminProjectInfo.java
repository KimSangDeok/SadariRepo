package SadariCommand;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import Sadarisession.InsertProjectRepository;

public class SadariCommandAdminProjectInfo implements SadariCommand{

	private String next="";
	
	public SadariCommandAdminProjectInfo(String next) {

		this.next=next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {

		HashMap pjInFoMap = InsertProjectRepository.getInstance().selectProjectByPjNo(Integer.parseInt(request.getParameter("pjNo")));
		request.setAttribute("pjInFoMap", pjInFoMap);
		return next;
	}

}
