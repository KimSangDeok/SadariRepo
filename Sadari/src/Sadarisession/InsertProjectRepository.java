package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;

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
	
}
