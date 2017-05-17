package Sadarisession;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import SadariModel.PartnerInsertRec;
import SadariModel.SadariException;

public class PartnerInfoInsertRepository {
	// Single Pattern
		private static PartnerInfoInsertRepository instance;

		public static PartnerInfoInsertRepository getInstance() throws SadariException {
			if (instance == null) {
				instance = new PartnerInfoInsertRepository();
			}
			return instance;
		}
		
		String namespace = "sadari.mapper.PartnerInfoInsertMapper";

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

		public int insertPartner(PartnerInsertRec rec) {

	SqlSession sqlSess = getSelSessionFactory().openSession();
			
			try{

				int result1 = 0, result2 = 0;
				if(rec.getForm_of_business().equals("individual")){
					result1 = sqlSess.insert(namespace+".partnerinsert1",rec);
				}else{
					result2 = sqlSess.insert(namespace+".partnerinsert2",rec);
				}
				
				
				if(result1==1 || result2==1){				
					sqlSess.commit();
					return 1;
				}else{				
					sqlSess.rollback();
					return 0;
				}
				
//				return result;
			}finally{
				sqlSess.close();
			}
		}
		
		
}
