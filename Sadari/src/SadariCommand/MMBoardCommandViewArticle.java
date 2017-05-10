package SadariCommand;

import javax.servlet.http.HttpServletRequest;

import SadariModel.SadariException;
import SadariModel.SadariRec;
import Sadarisession.SadariRepository;

public class MMBoardCommandViewArticle implements SadariCommand{

	private String next;
	
	public MMBoardCommandViewArticle(String _next) {
		
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws SadariException {
		
		int pageNum = 1;
		int articleId = Integer.parseInt(request.getParameter("articleId"));
		SadariRec rec = SadariRepository.getInstance().selectById(articleId);
		if(request.getParameter("pageVal") != null) pageNum = Integer.parseInt(request.getParameter("pageVal"));
		request.setAttribute("rec", rec);
		request.setAttribute("pageNum", pageNum);
		return next;
	}
}

