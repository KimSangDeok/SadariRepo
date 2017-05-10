<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SADARI | 프로젝트 등록</title>

<!-- 스타일시트 추가 -->
<link rel="stylesheet" href="./css/registerProject.css">
<link rel="stylesheet" href="./css/style.css">

<!-- 스크립트 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



</head>

<body class="sub_body">
 <!-- 사이드 메뉴 -->
     <aside class="sidebar">
        <div>
            <div class="partners">파트너 정보</div>
            <div class="history">나의 히스토리</div>
            <div class="myNews">새로운 소식</div>
        </div>
    </aside>
    <p>&nbsp;</p>

  <div class="wrap">
		<header class="reg_project_header">
		<div class="menubar">
			<!-- 로고 버튼 -->
			<a href="#"><div class="menu_logo">SADARI</div></a>

			<!-- 대메뉴 -->
			<nav class="sub_menubar"> 
			<a class="sub_menu" href="">프로젝트 등록</a> 
			<a class="sub_menu" href="">프로젝트 찾기</a> 
			<a class="sub_menu" href="">파트너스 목록</a> 
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
 <form action="." enctype="multipart/form-data" method="POST" novalidate class="has-validation-callback">
 <div align="center">
   <input name="csrfmiddlewaretoken" type="hidden" value="CSGyKf9gVgk4GJ3JJ3WsEJ0SbDG9eeQq">
   
 </div>
 <div class="form-input-rapper">
   <div class="project-client-contact-form ">
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
       <p align="left" class="project-client-contact-form-content-caption">사다리와의 원활한 커뮤니케이션을 위해 클라이언트님의 정보를 정확히 입력해주세요.</p>
       <p align="left" class="project-client-contact-form-content-caption">&nbsp;</p>
       </div>
       <div align="left">
       <p align="left" class="project-client-contact-form-content-caption"> *클라이언트 형태   
         <select class="project-client-contact-form-content-input selecter-element" id="form_of_business" name="form_of_business" required tabindex="-1">
           <option selected="selected" value="individual">개인</option>
           <option value="team">팀</option>
           <option value="individual_business">개인 사업자</option>
           <option value="corporate_business">법인 사업자</option>
         </select>
         <br>
         <br>
       </div>
       </label>
     
     <div class="project-client-contact-form-content project-client-contact-form-content-divider">
       <div align="left"></div>
       <div class="selecter  cover closed" tabindex="0">
         <div class="selecter-options">
           
           </div>
       </div>
       </div>
     </div>
   
   <div class="project-client-contact-form " style="display: none;">
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
   
   <div class="project-client-contact-form ">
     <label class="project-client-contact-form-label" for="full_name">
       <div align="left"> 
        <p align="left" class="project-client-contact-form-content-caption"> *이름
         <input name="full_name" type="text" class="main_menu" id="full_name" autocomplete="off" size="20" maxlength="50">
         <br>
         <br>
       </div>
       </label>
     <div class="project-client-contact-form-content">
       <div align="left"></div>
       </div>
     </div>
   
   <div class="project-client-contact-form ">
     <label class="project-client-contact-form-label" for="cell_phone_number">
       <div align="left"> <p align="left" class="project-client-contact-form-content-caption"> *담당자 핸드폰 번호
         <select class="project-client-contact-form-content-input-small selecter-element" id="cell_phone_number_code" maxlength="20" name="cell_phone_number_code" tabindex="-1">
           <option value="010">010 </option>
           <option value="011">011</option>
           <option value="016">016</option>
           <option value="017">017</option>
           <option value="018">018</option>
           <option value="019">019</option>
           <option value="global">해외</option>
         </select>
         <span class="form-phone-liner">-</span>
         <input name="cell_phone_number_middle" type="text" class="project-client-contact-form-content-input-small" id="cell_phone_number_middle" size="15" maxlength="20">
         <span class="form-phone-liner">-</span>
         <input name="cell_phone_number_end" type="text" class="project-client-contact-form-content-input-small" id="cell_phone_number_end" size="15" maxlength="20">
         <br>
         <br>
       </div>
       </label>
     

     </div>
   
   <div class="project-client-contact-form project-client-contact-form-top ">
     <label class="project-client-contact-form-label" for="company_intro">
       <div align="left"> <p align="left" class="project-client-contact-form-content-caption">*클라이언트소개
        </div>
       </label>
     
     <div class="project-client-contact-form-content">
       <div align="left">
       <div align="left"> <p align="left" class="project-client-contact-form-content-caption">
         <textarea name="company_intro" cols="70" rows="10" maxlength="150" wrap="soft" class="project-client-contact-form-content-textarea" id="company_intro" autocomplete="off">
   </textarea>
         
       </div>
       <p align="left" class="project-client-contact-form-content-caption">회사(개인)에 대해 간략하게 설명해주세요. (150자 이내)       </p>
       </div>
     </div>
 </div>
 
 <div class="form-group">
 <div class="btn-wrapper" style="padding-left: 5px; margin-top: 5px;">
   <div align="left"><span class="project-client-contact-form-content-caption">
 <input type="submit" class="btn btn-client btn-lg" tabindex="1" value="프로젝트 정보 등록하러 가기">
   </span></div>
   </div>
 </div>
 </div>
 
 </form>
 </section>
 

 
<!--  <section> -->
<!--  <div class="wrap2"> -->
<!--  </div> -->
<!-- </section> -->

</div>
</div>
</div>
</section>

		<!-- footer  -->
		<footer>
		<p class="footer_logo">SADARI</p>
		<div class="company_explain">
			사업자명 : 사다리<br /> 전화번호 : <a class="footer_link" href="">(02)5222-1112<br /></a>
			EMAIL : <a class="footer_link" href="">help@sadari.com<br /></a>
			고객센터 운영시간 : 오전 10시부터 오후 6시까지(공휴일 제외)<br /> <br /> <br /> ⓒ 2017
			SADARI, inc.
		</div>
		</footer>
</body>
</html>