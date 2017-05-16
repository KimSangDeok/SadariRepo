package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariModel.SadariException;


public class LoginRepository {
	
	// Single Pattern 
	private static LoginRepository instance;
	
	public static LoginRepository getInstance() throws SadariException
	{
		if( instance == null )
		{
			instance = new LoginRepository();
		}
		return instance;
	}

	
	String namespace = "sadari.mapper.LoginMapper";
	
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
	
	public HashMap loginCheck(String userId, String userPw){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
			HashMap map = new HashMap();
			map.put("userId", userId);
			map.put("userPw", userPw);
			
			HashMap loginResult = new HashMap();
			
			String ptId=sqlSess.selectOne(namespace+".ptLoginCheck",map);
			String ctId=sqlSess.selectOne(namespace+".ctLoginCheck",map);
			String adId=sqlSess.selectOne(namespace+".adLoginCheck",map);
			if(ptId!=null) {
				loginResult.put("id", ptId);
				loginResult.put("type", "pt");
				return loginResult;
			}
			else if (ctId!=null){
				loginResult.put("id", ctId);
				loginResult.put("type", "ct");
				return loginResult;
			}else if(adId!=null){
				loginResult.put("id", adId);
				loginResult.put("type", "ad");
				return loginResult;
			}else{
				System.out.println("id값 null");
				loginResult.put("id", "loginFail");
				loginResult.put("type", "loginFail");
				return loginResult;
			}
			
		}finally{
			sqlSess.close();
		}
		
	}
	
	
	public String lookPassword(String userId, String userTel){
		
		SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
			HashMap map = new HashMap();
			map.put("userId", userId);
			map.put("userTel", userTel);
			String pw=sqlSess.selectOne(namespace+".lookPassword",map);
			if(pw!=null) return pw;
			else{
				System.out.println("pw값 null");
				return "lookPwFaile";
			}
			
		}finally{
			sqlSess.close();
		}
	}
}
