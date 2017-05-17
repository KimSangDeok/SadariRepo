package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariModel.SadariException;


public class AddressRepositorySi {
	
	// Single Pattern 
	
	private static AddressRepositorySi instance;
	
	public static AddressRepositorySi getInstance() throws SadariException{
		if( instance == null){
			instance = new AddressRepositorySi();
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
	
	public String address(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		List<String> sido = sqlSess.selectList(namespace+".addresssi");		
		String si = "";
		try{			
			for(int i=0; i<sido.size()-1; i++){
				si += sido.get(i)+"/";
			}
			System.out.println(si);
			return si;	
		}finally{
			sqlSess.close();
		}			
	}
}
	