
package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariModel.MemberInsertRec;
import SadariModel.SadariException;

public class MemberInsertRepository {

	// Single Pattern
	private static MemberInsertRepository instance;

	public static MemberInsertRepository getInstance() throws SadariException {
		if (instance == null) {
			instance = new MemberInsertRepository();
		}
		return instance;
	}

	String namespace = "sadari.mapper.MemberInsertMapper";

	private SqlSessionFactory getSelSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream inputStream = null;
		try {

			inputStream = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			// TODO: handle exception
		}
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
		return factory;
	}

	public int insertMember(MemberInsertRec rec) {

SqlSession sqlSess = getSelSessionFactory().openSession();
		
		try{
			
//			HashMap map = new HashMap();
//			map.put("userId", userId);
//			map.put("userPw", userPw);
			int result1 = 0, result2 = 0;
			if(rec.getKind().equals("클라이언트")){
				result1 = sqlSess.insert(namespace+".insertMember1",rec);
			}else{
				result2 = sqlSess.insert(namespace+".insertMember2",rec);
			}
			
			
			if(result1==1 || result2==1){				
				sqlSess.commit();
				return 1;
			}else{				
				sqlSess.rollback();
				return 0;
			}
			
//			return result;
		}finally{
			sqlSess.close();
		}
	}
}
