<%@page import="org.apache.tools.ant.taskdefs.Manifest.Section"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <% String Id = (String)request.getSession().getAttribute("id");%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SADARI  |  나의 사다리</title>
    
    <!-- 스타일시트 추가 -->
    <link rel="stylesheet" href="./css/partnerBasicInfo.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 스크립트 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
	$(function(){		
		$("#form_of_business").click(function(){
			if($("#form_of_business").val()=="individual"){
				$("#divIndividual").css("display","block");
				$("#divcorporate_business").css("display","none");
			}else if($("#form_of_business").val()=="corporate_business"){
				$("#divIndividual").css("display","none");
				$("#divcorporate_business").css("display","block");
			}
		});



		////시도 selectbox
		$.ajax({
			  url : '.sadari?cmd=address-selectsi',
		         type : 'post',
// 		         contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		         dataType : 'text', // 받는 데이타 타입		         
		         success : function( data ) {
		        	 var content = data.split("/");
						for(var i=0; i<content.length-1; i++){
							$("#si").append("<option>"+content[i]+"</option>");
						}
		         }
			})	
			
			//구 선택
			$("#si").change(function(){
				var sendData = $(this).val();
				$("#gu option").remove();
				$.ajax({
					url : ".sadari?cmd=address-selectgu",
					type : "get",
					dataType : "text",
					data : {"sendData" : sendData},
					success : function(data){
						var content = data.split("/");
						for(var i=0; i<content.length-1; i++){
							$("#gu").append("<option>"+content[i]+"</option>");
						}
					}
				});
			});
			
			
			
		});






</script>
<body>
<div class="wrap">

<!-- header -->
<%@ include file="header.jsp" %>

<!-- 나의 프로젝트 대시보드 -->
 <div class="page">
     <div class="content" style="margin-top:50px">
        <div class="contentInner" >
          	<section>
          		<h3 class="profile-header">
          			기본 정보 수정
          		</h3>
			</section>
			<section>
        		계정의 기본 정보들을 수정할 수 있습니다.
        	</section>
        </div>
        
        <div class="contentInner" >
          	<section>
          		<h4 class="profile-header">
          			기본 정보 입력
          		</h4>
			</section>
			<section>
        		계정의 기본 정보들을 수정할 수 있습니다.
<form class="form-horizontal" action=".sadari" method='post' style="display: block; border-bottom: 1px dashed rgb(222, 222, 222); padding-bottom: 25px; margin-bottom: 25px;">
        		<input type='hidden' name='cmd' value='basicinfo-insert'/>
<%--         		<input type='hidden' name='userId' value='<%=Id%>'/> --%>
        		<div class="form-group p5-portfolio-form-group">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						프로필 사진
					</label>
					<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
						<div class="control-wrapper">
							<span class="p5-img-name"></span>
							<span class="p5-custom-file-type-input-wrapper">


							<button class="btn btn-wishket p5-custom-file-type-front" style="cursor: pointer; left: 300px; margin-left: 0" type="button">이미지 변경</button>

							</span>						
							<span class="help-block" style="position:relative; top: 85px;font-size: 13px;">이미지 파일(.jpg, .jpeg, .png, .gif 등)만 업로드할 수 있습니다.</span>
						</div>
					</div>
				</div>
				
				<div class="form-group p5-portfolio-form-group"  style="height: 70px;">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						파트너 형태
					</label>
					<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
						<div class="control-wrapper">
							<select class="form-control ie-form-control" id="form_of_business" name="form_of_business" required="required">
								<option value="">선택</option>
								<option value="individual">개인</option>
								<option value="corporate_business">법인 사업자</option>
							</select>
						<div class="error-message">
						<i class="fa fa-exclamation-circle"></i> 
						이 항목을 채워주십시오.
						</div>
						</div>
					</div>
				</div>
<!-- 파트너 형태에 따라서 보여주는 부분 -->
				<!--개인 부분 -->
				<div id="divIndividual" style="display:none">
					<div class="form-group p5-portfolio-form-group" style="height: 70px;">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						이름
					</label>
					<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
						<div class="control-wrapper">
							<input class="form-control" id="full_name1" name="full_name1" type="text" value="">
						</div>
					</div>
				</div>
				
				<div class="form-group p5-portfolio-form-group" style="height: 70px;">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						핸드폰 번호
					</label>
					<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
					<div style="float:left;padding:5px">
					<select class="form-control" id="phone1" name="phone1" style="width:80px; float:left">					
					     <option value="010">010</option>
					     <option value="011">011</option>
					</select>
					</div>
					<strong style="float:left; padding-top:10px">-</strong>
					</div>
					<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
					<div style="float:left;padding:5px">
					<input class="form-control" style="width:80px; float:left; text-align:center" id="phone2" name="phone2" type="text" value="">
					</div>
					<strong style="float:left; padding-top:10px">-</strong>
					</div>
					<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
					<div style="float:left;padding:5px">
					<input class="form-control" style="width:80px; float:left; text-align:center" id="phone3" name="phone3" type="text" value="">
					</div>
					</div>
				</div>
				
				<div class="form-group p5-portfolio-form-group" style="height: 70px;">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						 성별
					</label>
					<div class="control-wrapper" style="padding-top:10px">
					<ul class="list-unstyled" style="margin-bottom: 0;">
					<li>
					<label class="radio-inline" for="gender_1">
					<input id="gender_1" name="gender" required="" type="radio" value="m">남성</label>
					</li>
					<li>
					<label class="radio-inline" for="gender_2">
					<input checked="" id="gender_2" name="gender" required="" type="radio" value="f">여성</label>
					</li>
					</ul>
					<div class="error-message">
					<i class="fa fa-exclamation-circle"></i> 이 항목을 채워주십시오.
					</div>
					</div>
				</div>
				
				<div class="form-group p5-portfolio-form-group" style="height: 70px;">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						생년월일
					</label>
					<div class="control-wrapper" style="padding-top:10px;">
					<div style="float:left;padding:5px">
					<select class="form-control" id="birth1" name="birth1" style="width:80px; float:left">					
					    <%for(int i=2017; i>1940; i--){ %>
					    <option value="<%=i%>"><%=i%></option>
					    <%}%>
					</select>
					</div>
					<div style="float:left;padding:5px"> 
					<select class="form-control" id="birth2" name="birth2" style="width:70px; float:left">					
					    <%for(int i=1; i<13; i++){ %>
					    <option> <%=i%></option>
					    <%}%>
					</select>
					</div>
					<div style="float:left;padding:5px">
					<select class="form-control" id="birth3" name="birth3" style="width:70px; float:left">					
					    <%for(int i=1; i<32; i++){ %>
					    <option> <%=i%></option>
					    <%}%>
					</select>
					</div>
        			</div>
        		</div>				
				</div>								
			<!--개인부분 끝 -->
			
			<!--법인 부분 -->
				<div id="divcorporate_business" style="display:none">
					<div class="form-group p5-portfolio-form-group" style="height: 70px;">
						<label class="control-label required p5-box-control-label">
							<span>*</span>
							담당자명
						</label>
						<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
							<div class="control-wrapper">
								<input class="form-control" id="full_name2" name="full_name2" type="text" value="">
							</div>
						</div>
					</div>
					
					<div class="form-group p5-portfolio-form-group" style="height: 70px;">
						<label class="control-label required p5-box-control-label">
							<span>*</span>
							회사명
						</label>
						<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
							<div class="control-wrapper">
								<input class="form-control" id="Company" name="Company" type="text" value="">
							</div>
						</div>
					</div>
					
					<div class="form-group p5-portfolio-form-group" style="height: 70px;">
						<label class="control-label required p5-box-control-label">
							<span>*</span>
							대표자명
						</label>
						<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
							<div class="control-wrapper">
								<input class="form-control" id="manager" name="manager" type="text" value="">
							</div>
						</div>
					</div>
					
					<div class="form-group p5-portfolio-form-group" style="height: 70px;">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						핸드폰 번호
					</label>
					<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
					<div style="float:left;padding:5px">
					<select class="form-control" id="bissphone1" name="bissphone1" style="width:80px; float:left">					
					     <option value="010">010</option>
					     <option value="011">011</option>
					</select>
					</div>
					<strong style="float:left; padding-top:10px">-</strong>
					</div>
					<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
					<div style="float:left;padding:5px">
					<input class="form-control" style="width:80px; float:left; text-align:center" id="bissphone2" name="bissphone2" type="text" value="">
					</div>
					<strong style="float:left; padding-top:10px">-</strong>
					</div>
					<div class="p5-portfoilo-img-control-wrapper" style="padding-top:10px">
					<div style="float:left;padding:5px">
					<input class="form-control" style="width:80px; float:left; text-align:center" id="bissphone3" name="bissphone3" type="text" value="">
					</div>
					</div>
				</div>
					
				<div class="form-group p5-portfolio-form-group" style="height: 70px;">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						설립일
					</label>
					<div class="control-wrapper" style="padding-top:10px;">
					<div style="float:left;padding:5px">
					<select class="form-control" id="Established1" name="Established1" style="width:80px; float:left">					
					    <%for(int i=2017; i>1940; i--){ %>
					    <option> <%=i%></option>
					    <%}%>
					</select>
					</div>
					<div style="float:left;padding:5px"> 
					<select class="form-control" id="Established2" name="Established2" style="width:70px; float:left">					
					    <%for(int i=1; i<13; i++){ %>
					    <option> <%=i%></option>
					    <%}%>
					</select>
					</div>
					<div style="float:left;padding:5px">
					<select class="form-control" id="Established3" name="Established3" style="width:70px; float:left;padding:10px">					
					    <%for(int i=1; i<32; i++){ %>
					    <option> <%=i%></option>
					    <%}%>
					</select>
					</div>
        			</div>
        		</div>				
				</div>								
			<!--법인부분 끝 -->
				
				<div class="form-group p5-portfolio-form-group" style="height: 70px;">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						지역 - 시, 도
					</label>
					<div class="control-wrapper" style="padding-top:10px;">
						<div style="float:left;padding:5px">
							<select class="form-control" id="si" name="si" style="width:300px; float:left">					
								<!--jquery로 시,도가 들어올 부분    -->
							</select>
						</div>					
        			</div>
        		</div>
				<div class="form-group p5-portfolio-form-group" style="height: 70px;">
					<label class="control-label required p5-box-control-label">
						<span>*</span>
						 세부 지역 - 시, 군, 구
					</label>
					<div class="control-wrapper" style="padding-top:10px;">
						<div style="float:left;padding:5px">
							<select class="form-control" id="gu" name="gu" style="width:300px; float:left">					
								<!--jquery로 시,군,구가 들어올 부분    -->
							</select>
						</div>					
        			</div>
        		</div>
        	
				<div class="form-group p5-portfolio-form-group" style="float:right; margin-right:400px; margin-bottom:100px;margin-top:-18px">
					<button style="float:right" type="submit" class="btn btn-primary">정보 등록</button>
        		</div>
        	</form>
        	</section>
        	
        </div>
        
        
     </div>

<!-- 사이드 메뉴 -->
     <aside class="sidebar" style="margin-top:40px">
        <div>
            <div class="partners"><h4 class="sideTitle">파트너스 정보</h4>
<!--             <div class="myInfoBlock"></div> -->
				<div class ="userphoto">
               	<img style="border-radius: 10%;" alt="" src="img/partners_profile.jpg">
            	</div>
            <div class="userInfo"></div>
                <h4 class="userId" style="margin-left:20px;text-align:center">hwang</h4>
            </div>

        </div>
    </aside>
 </div>

<!-- END OF page -->
</div>
<!-- END OF wrap -->

<!-- footer  -->
<%@ include file="footer.jsp" %>

</body>
</html>