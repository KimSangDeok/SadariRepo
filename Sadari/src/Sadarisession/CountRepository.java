package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariCommand.SadariCommandGetCountValue;
import SadariModel.SadariException;

public class CountRepository {

	// Single Pattern 
		private static CountRepository instance;
		
		public static CountRepository getInstance() throws SadariException
		{
			if( instance == null )
			{
				instance = new CountRepository();
			}
			return instance;
		}

		
		String namespace = "SadariMapper.SadariMapper";
		
		private SqlSessionFactory getSelSessionFactory(){
			String resource = "mybatis-config.xml";
			InputStream inputStream = null;
			try{
				
				inputStream = Resources.getResourceAsStream(resource);
			}catch (Exception e) {
				
			}
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream); 
			return factory;
		}
		
	public HashMap getStatsProject() throws SadariException{
	
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
			HashMap temp = sqlSess.selectOne(namespace+".getStatsProject");
	
			return temp;
		}catch( Exception ex ){
			throw new SadariException("등록된 프로젝트 갯수 불러올 때  : " + ex.toString() );	
		} finally{
			sqlSess.close();
			}
		}
}