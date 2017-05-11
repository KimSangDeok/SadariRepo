package SadariCommand;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;
import SadariModel.SadariRec;
import Sadarisession.SadariRepository;


public class SadariCommandPayment implements SadariCommand{

	private String next;
	
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 10;	// 한페이지당 레코드 수
	
	public SadariCommandPayment(String next) {
		
		this.next = next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws SadariException {
		
//		int pageNum=1;
//		if(request.getParameter("pageVal") != null) pageNum = Integer.parseInt(request.getParameter("pageVal"));
////		
////		
//		int endRow = pageNum * countPerPage;
//		int firstRow = endRow - (countPerPage -1);
//		SadariRepository repo = SadariRepository.getInstance();
//		List <SadariRec> mList = repo.selectList(firstRow,endRow);
//		
//		totalRecCount = repo.getTotalCount();
//		pageTotalCount = totalRecCount / countPerPage;
//		if(totalRecCount%countPerPage >0) pageTotalCount++;
//		
//		request.setAttribute("mList", mList);
//		request.setAttribute("pageNum", pageNum );
//		request.setAttribute("pageTotalCount", pageTotalCount );
		return next;
	}
	
	
		
}
