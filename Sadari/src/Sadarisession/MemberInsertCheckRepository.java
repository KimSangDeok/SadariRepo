package Sadarisession;

import java.io.InputStream;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariModel.SadariException;

public class MemberInsertCheckRepository {

	// Single Pattern
	private static MemberInsertCheckRepository instance;

	public static MemberInsertCheckRepository getInstance() throws SadariException {
		if (instance == null) {
			instance = new MemberInsertCheckRepository();
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

	public String insertCheck(String userId) {

		SqlSession sqlSess = getSelSessionFactory().openSession();

		try {

			HashMap map = new HashMap();
			map.put("userId", userId);
			String id1 = sqlSess.selectOne(namespace + ".insertCheck1", map);
			String id2 = sqlSess.selectOne(namespace + ".insertCheck2", map);
			if (id1 != null || id2 != null){
				return "no";			
			}else{
				System.out.println("id값 null");
				return "possible";
			}

		} finally {
			sqlSess.close();
		}

	}
}
