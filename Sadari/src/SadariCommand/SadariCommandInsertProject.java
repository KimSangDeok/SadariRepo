package SadariCommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.ProjectRec;
import SadariModel.SadariException;
import Sadarisession.InsertProjectRepository;

public class SadariCommandInsertProject implements SadariCommand {

	private String next="";
	
	public SadariCommandInsertProject(String next) {
		
		this.next=next;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {
		
		ProjectRec rec = new ProjectRec();
		
		rec.setPjTitle(request.getParameter("projectTitle"));
		rec.setPjCategory(request.getParameter("subjob"));
		rec.setPjDeadline(request.getParameter("deadline"));
		rec.setPjPrice(request.getParameter("projectCost"));
		rec.setPjSt_dt(request.getParameter("foreStart"));
		rec.setPjTerm(request.getParameter("projectGigan"));
		
		rec.setPjPlan(request.getParameter("r2"));
		rec.setPjContent(request.getParameter("comtest"));
		rec.setPjSkills(request.getParameter("skill"));
//		rec.setPjFile(request.getParameter(""));
		rec.setPjMeeting(request.getParameter("meeting"));
		rec.setPjLoc(request.getParameter("selOne"));
		rec.setPjSubloc(request.getParameter("selTwo"));
		
		System.out.println("1>"+request.getParameter("comtest"));
//		String job = request.getParameter("job");
//		String subjob = ;
//		String projectTitle = ;
//		String projectGigan = ;
//		String projectCost = ;
//		String r2 = request.getParameter("r2");
//		String comment = request.getParameter("comment");
//		String skill = request.getParameter("skill");
//		String deadline = ;
//		String meeting = request.getParameter("meeting");
//		String selOne = request.getParameter("selOne");
//		String selTwo = request.getParameter("selTwo");
//		String foreStart = ;
		
		
		
		int result = InsertProjectRepository.getInstance().insert(rec);
		System.out.println("dd");
		request.setAttribute("result", result);
	
		return next;
	}

}
