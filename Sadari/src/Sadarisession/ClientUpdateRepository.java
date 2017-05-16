package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariModel.ClientRec;
import SadariModel.ProjectRec;
import SadariModel.SadariException;


public class ClientUpdateRepository {
	
	// Single Pattern 
	private static ClientUpdateRepository instance;
	
	public static ClientUpdateRepository getInstance() throws SadariException
	{
		if( instance == null )
		{
			instance = new ClientUpdateRepository();
		}
		return instance;
	}

	
	String namespace = "sadari.mapper.ClientUpdateMapper";
	
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
	
	public int update(ClientRec rec){
		

		System.out.println("rec.getCtId()"+rec.getCtId());
		System.out.println("rec.getCtName()"+rec.getCtName());
		System.out.println("rec.getCtTel()"+rec.getCtTel());
		System.out.println("rec.getCtIntroduce()"+rec.getCtIntroduce());
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
//			HashMap map = new HashMap();
//			map.put("userId", userId);
//			map.put("userPw", userPw);
			
			int result = sqlSess.update(namespace+".clientUpdate",rec);
			
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
	
	
	
	
	
	public HashMap select(ClientRec rec) throws SadariException{
		

//		System.out.println("rec.getCtId()"+rec.getCtId());
//		System.out.println("rec.getCtName()"+rec.getCtName());
//		System.out.println("rec.getCtTel()"+rec.getCtTel());
//		System.out.println("rec.getCtIntroduce()"+rec.getCtIntroduce());
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
			HashMap clientSelect = sqlSess.selectOne(namespace+".clientSelect");
//			HashMap map = new HashMap();
//			map.put("userId", userId);
//			map.put("userPw", userPw);
			
		return clientSelect;
			

		}finally{
			sqlSess.close();
		}
	}


	
}
