package SadariCommand;

import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;

import SadariModel.SadariException;
import SadariModel.SadariRec;
import Sadarisession.SadariRepository;


public class SadariCommandWriteArticle implements SadariCommand{
	
	private String next;
	
	public SadariCommandWriteArticle(String next) {
		
		this.next = next;
	}
	@Override
	public String execute(HttpServletRequest request) throws SadariException {
		
		try{
			
			SadariRepository repo = SadariRepository.getInstance();
			
			SadariRec rec = new SadariRec();
////			rec.setWriterName(request.getParameter("writerName"));
////			rec.setTitle(request.getParameter("title"));
////			rec.setContent( request.getParameter("content"));
////			rec.setPassword( request.getParameter("password"));
//			
//			// 그룹번호(group_id) 지정
//			int groupId = repo.getGroupId();
//			rec.setGroupId(groupId);
//			
//			// 순서번호(sequence_no) 지정
//			DecimalFormat dformat = new DecimalFormat("0000000000");
//			rec.setSequenceNo( dformat.format(groupId) + "999999");
//			
//			int articel_id = repo.insert(rec);
//			SadariRec writeRec = repo.selectById(articel_id);
//			request.setAttribute("rec", writeRec );
//			request.setAttribute("pageNum", 1 );
			
		}catch( SadariException ex ){
			throw new SadariException("BoardCommandWriteArticle < 입력시 > " + ex.toString() ); 
		}
		
		return next;
	}
	
//	private static BoardCommandWriteArticle instance;
//	public static BoardCommandWriteArticle getInstance()  throws BoardException{
//		if( instance == null )
//		{
//			instance = new BoardCommandWriteArticle();
//		}
//		return instance;
//	}
//	
//	public BoardRec write( BoardRec rec ) throws BoardException{
//		
//		BoardDao dao = BoardDao.getInstance();
//
//		// 그룹번호(group_id) 지정
//		int groupId = dao.getGroupId();
//		rec.setGroupId(groupId);
//		
//		// 순서번호(sequence_no) 지정
//		DecimalFormat dformat = new DecimalFormat("0000000000");
//		rec.setSequenceNo( dformat.format(groupId) + "999999");
//		
//		// DB에 insert
//		rec.setArticleId(dao.insert(rec));
//			
//		return rec;
//		
//	}
}
