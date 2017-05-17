package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariModel.ProjectRec;
import SadariModel.SadariException;


public class InsertProjectRepository {
	
	// Single Pattern 
	private static InsertProjectRepository instance;
	
	public static InsertProjectRepository getInstance() throws SadariException
	{
		if( instance == null )
		{
			instance = new InsertProjectRepository();
		}
		return instance;
	}

	
	String namespace = "sadari.mapper.ProjectInsertMapper";
	
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
	
	public int insert(ProjectRec rec){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
//			HashMap map = new HashMap();
//			map.put("userId", userId);
//			map.put("userPw", userPw);
			
			int result = sqlSess.insert(namespace+".projectInsert",rec);
			
			if(result==1){
				
				sqlSess.commit();
			}else{
				
				sqlSess.rollback();
			}
			
			return result;
		}finally{
			sqlSess.close();
		}
	}
	
	public List<HashMap> selectProjectList(){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			List<HashMap> hashMap = sqlSess.selectList(namespace+".selectList");
			
//			for(HashMap ee : hashMap){
//				
//				Set set = ee.entrySet();
//				Iterator iterator = set.iterator();
//				System.out.println( ">"+ee.size() );
//				while(iterator.hasNext()){
//					Map.Entry entry = (Map.Entry)iterator.next();
//					String key = (String)entry.getKey();
//					//String value = (String)entry.getValue();
//					System.out.println("hashMap Key : " + key);
//					System.out.println("hashMap Value : " + entry.getValue());
//				}
//			}

			return sqlSess.selectList(namespace+".selectList");
		}finally{
			sqlSess.close();
		}
	}
	
	
	public List<HashMap> selectSProjectList(){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
			return sqlSess.selectList(namespace+".selectSList");
		}finally{
			sqlSess.close();
		}
	}

	public HashMap selectProjectByPjNo(int pjNo) {
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
			return sqlSess.selectOne(namespace+".selectByProjectNo",pjNo);
		}finally {
			sqlSess.close();
		}
		
	}

	public void updateGumSu(int pjNo, String yn) {
		
		HashMap map = new HashMap();
		map.put("pjNo", pjNo);
		map.put("yn", yn);
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
			int result = sqlSess.update(namespace+".updateGumSu",map);
			if(result==1){
				sqlSess.commit();
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		
	}
	
	public List<HashMap> selectPayMentList(){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
			return sqlSess.selectList(namespace+".selectPayMentList");
		}finally{
			sqlSess.close();
		}
	}
	
}
