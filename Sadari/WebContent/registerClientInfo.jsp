<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%	
	String userId=request.getParameter("id");  
// 	String userId="iii";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SADARI | 프로젝트 등록</title>

<!-- 스타일시트 추가 -->
<link rel="stylesheet" href="./css/registerClientInfo.css">
<link rel="stylesheet" href="./css/style.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- 스크립트 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      


</head>

<body class="sub_body">

<!-- 	header -->
		<%@ include file="header.jsp" %> 
		<!-- end of header -->

  <div class="wrap">
		<header class="reg_project_header">
		<div class="menubar">
			<!-- 로고 버튼 -->
			<a href="."><div class="menu_logo">SADARI</div></a>

			<!-- 대메뉴 -->
			<nav class="sub_menubar"> 
			<a class="sub_menu" href="./projectInsertView.jsp">프로젝트 등록</a> 
			<a class="sub_menu" href="./searchProject.jsp">프로젝트 찾기</a> 
			<a class="sub_menu" href="./partnerList.jsp">파트너스 목록</a> 
			<div class="signInId">userID<span class="badge">?</span></div>
			</nav>
		</div>
		</header>


		<!-- 클라이언트 정보 입력 -->
		<section class="be_registered_project">

        <div class="newsCenter">
		<div class="content-header">
		
			<ul>
				<h3 align="left" class="header-text">
					클라이언트 기본 정보 등록 
					<small class="small-text">프로젝트 등록 전에 기본 정보를 입력해 주세요.</small>
				</h3>
			</ul>
		</div>


		<div class="content-inner">
		<br/>
 
 <section class="project-client-contact-section">
</section>
   

 <div class="form-input-rapper">
   <div class="centerText ">
     <label class="project-client-contact-form-label" for="form_of_business">
       
            <div class="project-client-contact-form-content project-client-contact-form-content-divider project-client-contact-form-content-small">
       <div align="left"></div>
       <div class="selecter  cover closed" tabindex="0">
         <div class="selecter-options"></div>
       </div>
       <div align="left">
         <input class="form-control-phone-noncell" id="cell_phone_global" name="cell_phone_global" style="width: 232px; margin-left:15px; display:none;" type="text" value="">
     </div>
       <p align="left" class="project-client-contact-form-content-caption">클라이언트 형태 및 연락처 정보는 파트너들에게 공개되지 않습니다.</p>
       <p align="left" class="project-client-contact-form-content-caption">사다리와의 원활한 커뮤니케이션을 위해 클라이언트님의 정보를 입력해주세요.</p>
   
       </div>
         <br/>
      
       </label>
     
     <div class="project-client-contact-form-content project-client-contact-form-content-divider">
       <div align="left"></div>
       <div class="selecter  cover closed" tabindex="0">
         <div class="selecter-options">
           
           </div>
       </div>
       </div>
     </div>
   
   <div class="centerText " style="display: none;">
     <label class="project-client-contact-form-label" for="company_name">
       <div align="left"><span>*</span>회사명</div>
       </label>
     <div class="project-client-contact-form-content">
       
       <div align="left">
         <input autocomplete="off" class="project-client-contact-form-content-input" id="company_name" maxlength="50" name="company_name" type="text">
       </div>
       </div>
     </div><div class="project-client-contact-form " style="display: none;">
       
       <label class="project-client-contact-form-label" for="representative">
         <div align="left"><span>*</span>회사 대표명</div>
         </label>
       <div class="project-client-contact-form-content">
         <div align="left">
           <input autocomplete="off" class="project-client-contact-form-content-input" id="representative" maxlength="50" name="representative" type="text">
         </div>
         </div>
       </div>
   
   <div class="centerText ">
     <label class="project-client-contact-form-label">
     
       <div align="left">     
       
       </div>
       
       </label>
     <div class="project-client-contact-form-content">
       <div align="left"></div>
       </div>
     </div>
   
   <div class="centerText ">
     <label class="project-client-contact-form-label" for="cell_phone_number">
     
      <form class="form-group" action="sadari.sadari" method='post'>
     <input type='hidden' name='cmd' value='client-info'/>
     <input type='hidden' name='userId' value='<%=userId%>'/>
     
      <input type="text" class="form-control" name=ctName id="pwd" size="20" maxlength="50" placeholder="이름을 입력해 주세요" style="text-align:left">
        <br/>        
       <div align="left"> <p align="left" class="form-control"> *담당자 핸드폰 번호
         <select  name="cell_phone_number_code" class="project-client-contact-form-content-input-small" id="cell_phone_number_code" maxlength="20"  tabindex="-1">
           <option value="010">010 </option>
           <option value="global">해외</option>
         </select>
         <span class="form-phone-liner">-</span>
         <input name="cell_phone_number_middle" type="text" class="project-client-contact-form-content-input-small" id="cell_phone_number_middle" size="15" maxlength="20">
         <span class="form-phone-liner">-</span>
         <input name="cell_phone_number_end" type="text" class="project-client-contact-form-content-input-small" id="cell_phone_number_end" size="15" maxlength="20">
         <br/>
         <br/>
       </div>
       </label>
     

     </div>
   
   <div class="project-client-contact-form project-client-contact-form-top ">
     <label class="project-client-contact-form-label" for="company_intro">
       <div align="left"> <p align="left" class="centerText">
        </div>
       </label>
     
     <div class="project-client-contact-form-content">
       <div align="left">
       <div align="left"> <p align="left" class="project-client-contact-form-content-caption">
         <textarea name="company_intro" id="pwd" cols="70" rows="10" maxlength="150" wrap="soft" class="form-control"  style="text-align:left"></textarea>
         
       </div>
       <p align="left" class="project-client-contact-form-content-caption">*회사(개인)에 대해 간략하게 설명해주세요. (150자 이내) </p>
       </div>
     </div>
 </div>
 
<!--  <div class="form-group"> -->
 <div class="btn-wrapper" style="padding-left: 5px; margin-top: 5px;">
   <div align="left"><span class="project-client-contact-form-content-caption">
      <input type="submit" value="프로젝트 정보 등록하러 가기">
   </span>
   </div>
   </div>
<!--    </div> -->
 </div>
 </div>
 

 </section>
 
 
  </form>

</div>
</div>
</div>
</section>

		<!-- footer  -->
		<%@ include file ="footer.jsp" %>
</body>
</html>