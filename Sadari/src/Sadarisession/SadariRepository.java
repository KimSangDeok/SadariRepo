package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariModel.SadariException;
import SadariModel.SadariRec;






public class SadariRepository {
	
	// Single Pattern 
	private static SadariRepository instance;
	
	public static SadariRepository getInstance() throws SadariException
	{
		if( instance == null )
		{
			instance = new SadariRepository();
		}
		return instance;
	}

	
	String namespace = "mybatis.mapper.BoardMapper";
	
	private SqlSessionFactory getSelSessionFactory(){
		String resource = "mybatis-config.xml";
		InputStream inputStream = null;
		try{
			
			inputStream = Resources.getResourceAsStream(resource);
		}catch (Exception e) {
			// TODO: handle exception
		}
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream); 
		return factory;
	}
	
	public List<SadariRec> selectList(int firstRow, int endRow) throws SadariException
	{
		
			SqlSession sqlSess = getSelSessionFactory().openSession();
			
			try{
				
				HashMap map = new HashMap();
				map.put("firstRow", firstRow);
				map.put("endRow", endRow);
				return sqlSess.selectList(namespace+".selectArticle",map);
			}finally {
				sqlSess.close();
			}
		//----------------------------------------------------------------------------------
	}
	
	public int getTotalCount() throws SadariException{
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
//			con	= DriverManager.getConnection( dbUrl, dbUser, dbPass );
//			String sql		= "SELECT count(*) FROM ARTICLE";  
//			ps		= con.prepareStatement( sql );
//			rs = ps.executeQuery();
//			rs.next();		
			return  sqlSess.selectOne(namespace+".selectArticleTotalCount");
			
		}catch( Exception ex ){
			throw new SadariException("게시판 ) DB에 목록 검색시 오류  : " + ex.toString() );	
		}finally {
			sqlSess.close();
		} 
	}
	
	public SadariRec selectById(int articleId) throws SadariException{
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
			return sqlSess.selectOne(namespace+".selectById",articleId);
		}catch( Exception ex ){
			throw new SadariException("게시판 ) DB에 글번호에 의한 레코드 검색시 오류  : " + ex.toString() );
		}finally {
			sqlSess.close();
		} 
	}
	
	
	public int getGroupId() throws SadariException
	{
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			
			return sqlSess.selectOne(namespace+".getGroupId");
		}catch( Exception ex ){
			throw new SadariException("게시판 ) 게시글 입력 전에 그룹번호 얻어올 때  : " + ex.toString() );	
		} finally{
			sqlSess.close();
		}		
	}
	
//	public int insert( MMBoardRec rec ) throws MMBoardException
//	{
//		
//		/************************************************
//		*/
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try{
			
//			con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
//			String sql = "insert into ARTICLE values(SEQ_ARTICLE_ID_ARTICLE.nextval,?,?,sysdate,0,?,?,?,?)";
//			ps = con.prepareStatement(sql);
//			ps.setInt(1, rec.getGroupId());
//			ps.setString(2, rec.getSequenceNo());
//			ps.setString(3, rec.getWriterName());
//			ps.setString(4, rec.getPassword());
//			ps.setString(5, rec.getTitle());
//			ps.setString(6, rec.getContent());
//			ps.executeUpdate();
//			ps.close();
//			
//			String sqlId = "select SEQ_ARTICLE_ID_ARTICLE.currval as articel_id from dual";
//			ps = con.prepareStatement(sqlId);
//			rs = ps.executeQuery();
//			rs.next();
//			return rs.getInt("articel_id");
//		
//		}catch( Exception ex ){
//			throw new MMBoardException("게시판 ) DB에 입력시 오류  : " + ex.toString() );	
//		} finally{
//			sqlSess.close();
//		}
//		
//	}
//	public MMBoardRec selectComentByPK(long commentNo){
//		
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try{
//			
//			HashMap map = new HashMap();
//			map.put("commentNo", commentNo);
//			return sqlSess.selectOne(namespace+".selectComment",map);
//		}finally {
//			sqlSess.close();
//		}
//	}
//	
//	public List<MMBoardRec> selectComment(){
//		
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		
//		try{
//			return sqlSess.selectList(namespace+".selectComment");
//		}finally {
//			sqlSess.close();
//		}
//	}
//	
//	public Integer insertComment(MMBoardRec c){
//		
//		//jdbc : Connection, Mybatis : SqlSession
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try{
//			
//			String  statment = namespace+".insertComment";
//			int result = sqlSess.insert(statment,c);
//			if(result > 0){
//				
//				sqlSess.commit();
//			}else{
//				sqlSess.rollback();
//			}
//		}finally{
//			sqlSess.close();
//		}
//		return 0;
//	}
//	
//	public Integer deleteComment(long commentNo){
//		
//		//jdbc : Connection, Mybatis : SqlSession
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try{
//			
//			String  statment = namespace+".deleteComment";
//			int result = sqlSess.delete(statment,commentNo);
//			if(result > 0){
//				
//				sqlSess.commit();
//			}else{
//				sqlSess.rollback();
//			}
//		}finally{
//			sqlSess.close();
//		}
//		return 0;
//	}
//	
//	
//	public Integer modifyComment(MMBoardRec comment){
//		
//		//jdbc : Connection, Mybatis : SqlSession
//		SqlSession sqlSess = getSelSessionFactory().openSession();
//		try{
//			
//			String  statment = namespace+".modifyComment";
//			int result = sqlSess.update(statment,comment);
//			if(result > 0){
//				
//				sqlSess.commit();
//			}else{
//				sqlSess.rollback();
//			}
//		}finally{
//			sqlSess.close();
//		}
//		return 0;
//	}
	
}
