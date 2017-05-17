package SadariModel;

import javax.servlet.http.HttpSession;

public class PartnerInsertRec {
//	private HttpSession userSessId;
	private String userId;
	
	//법인,개인 선택부분
	private String form_of_business;
	//개인부분
	private String full_name1;
	private String personphone;
	private String gender;
	private String birth;
	
	//법인부분
	private String full_name2;
	private String Company;
	private String manager;
	private String bissphone;
	private String Established;
	private String si;
	private String gu;
	
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEstablished() {
		return Established;
	}

	public void setEstablished(String established) {
		Established = established;
	}

//	public void setUserSessId(HttpSession httpSession) {
//		this.userSessId = httpSession;
//	}
	
	public String getForm_of_business() {
		return form_of_business;
	}
	public void setForm_of_business(String form_of_business) {
		this.form_of_business = form_of_business;
	}
	public String getFull_name1() {
		return full_name1;
	}
	public void setFull_name1(String full_name1) {
		this.full_name1 = full_name1;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getFull_name2() {
		return full_name2;
	}
	public void setFull_name2(String full_name2) {
		this.full_name2 = full_name2;
	}
	public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	
	public String getPersonphone() {
		return personphone;
	}

	public void setPersonphone(String personphone) {
		this.personphone = personphone;
	}

	public String getBissphone() {
		return bissphone;
	}

	public void setBissphone(String bissphone) {
		this.bissphone = bissphone;
	}

//	public HttpSession getUserSessId() {
//		return userSessId;
//	}

	public String getSi() {
		return si;
	}
	public void setSi(String si) {
		this.si = si;
	}
	public String getGu() {
		return gu;
	}
	public void setGu(String gu) {
		this.gu = gu;
	}
	
	
}
