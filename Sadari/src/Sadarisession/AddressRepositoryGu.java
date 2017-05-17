package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariModel.SadariException;


public class AddressRepositoryGu {
	
	// Single Pattern 
	
	private static AddressRepositoryGu instance;
	
	public static AddressRepositoryGu getInstance() throws SadariException{
		if( instance == null){
			instance = new AddressRepositoryGu();
		}
		return instance;
	}
	
	String namespace = "sadari.mapper.AddressMapper";
	
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
	
	//구 가지고 옴
	public String address(String data) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		HashMap map = new HashMap();
		map.put("data", data);
		List<String> gugun = sqlSess.selectList(namespace+".addressgu",map);		
		String gu = "";
		try{			
			for(int i=0; i<gugun.size()-1; i++){
				gu += gugun.get(i)+"/";
			}
			return gu;	
		}finally{
			sqlSess.close();
		}			
	}
}
	