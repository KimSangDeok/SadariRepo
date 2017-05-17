package SadariCommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.PartnerInsertRec;
import SadariModel.SadariException;
import Sadarisession.PartnerInfoInsertRepository;

public class CommandPartnerInfoInsert implements SadariCommand{
	private String next;
	
	public CommandPartnerInfoInsert(String next) {
		
		this.next=next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {
		
		String personphone = request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
		String bissphone = request.getParameter("bissphone1")+"-"+request.getParameter("bissphone2")+"-"+request.getParameter("bissphone3");
		String birth = request.getParameter("birth1")+"/"+request.getParameter("birth2")+"/"+request.getParameter("birth3");
		String established = request.getParameter("Established1")+"/"+request.getParameter("Established2")+"/"+request.getParameter("Established3");
		
		PartnerInsertRec rec = new PartnerInsertRec();
//		rec.setUserSessId(request.getSession());
		rec.setUserId((String)request.getSession().getAttribute("id"));
		
		rec.setForm_of_business(request.getParameter("form_of_business"));
		//개인부분
		rec.setFull_name1(request.getParameter("full_name1"));
		rec.setPersonphone(personphone);	
		rec.setGender(request.getParameter("gender"));
		rec.setBirth(birth);
		
		//법인부분
		rec.setFull_name2(request.getParameter("full_name2"));
		rec.setCompany(request.getParameter("Company"));
		rec.setManager(request.getParameter("manager"));
		rec.setBissphone(bissphone);
		rec.setEstablished(established);
		rec.setSi(request.getParameter("si"));
		rec.setGu(request.getParameter("gu"));
		
		int result = PartnerInfoInsertRepository.getInstance().insertPartner(rec);
		request.setAttribute("result", result);
				
		return next;
	}
}
