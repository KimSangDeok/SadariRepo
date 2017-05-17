package SadariCommand;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.ClientRec;
import SadariModel.SadariException;
import Sadarisession.ClientUpdateRepository;
import Sadarisession.MemberInsertCheckRepository;
import Sadarisession.MemberInsertRepository;

public class SadariCommandClientUpdate implements SadariCommand{
	private String next;

	public SadariCommandClientUpdate( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response ) throws SadariException{
		
		ClientRec rec = new ClientRec();
		
		rec.setCtId(request.getParameter("userId"));
		rec.setCtName(request.getParameter("ctName"));
		rec.setCtTel("010"+request.getParameter("cell_phone_number_middle")+request.getParameter("cell_phone_number_end"));
		rec.setCtIntroduce(request.getParameter("company_intro"));
		
		int result = ClientUpdateRepository.getInstance().update(rec);
		
		HashMap clientInfo = ClientUpdateRepository.getInstance().select(rec);
		request.setAttribute("clientInfo", clientInfo);
		
		
		return next;
	}

}