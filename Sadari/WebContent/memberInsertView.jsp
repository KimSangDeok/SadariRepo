<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SADARI | 나의 사다리</title>

<!-- 스타일시트 추가 -->
<link rel="stylesheet" href="./css/memberinsert.css">
<link rel="stylesheet" href="./css/style.css">

<!-- 스크립트 추가 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title></title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">

	$(function(){
////////////////////////////아이디 중복 검사//////////////////////////////
		$("#id_check").click(function(){			
			$.ajax({
				url : 'membercheck.sadari?cmd=check-member',
				type : 'post',
				data : { userId:$('#userId').val() },
				dataType : 'text',
				success : function(data){
					
					if( data.trim() == 'no'){
						$('#idmessage').text('이미 사용중인 아이디가 있습니다.');
						$('#idmessage').css('color','red');
						$('#idmessage').show();		//fadeIn(), animate(), slideDown()등등
					}else if(data.trim() == 'possible'){
						$('#idmessage').text('사용 가능한 아이디 입니다.');
						$('#idmessage').css('color','green');
						$('#idmessage').show();
					}
				},
				error : function(err){
					alert("에러발생" + err.toString());
				}
			});
		}); //end of ajax
	//////////////////////비밀번호 유효성 검사///////////////////	
		

		
		
		
	});
	
	
	
	
	


</script>
<body class="sub_body">
	<div class="wrap">

		<!-- 	header -->
		<%@ include file="header.jsp" %> 
		<!-- end of header -->


		<div class="page">
			<div class="content">
				<div class="content-header">
					<h3 class="head-text">
						회원가입 <small class="small-text">사다리에 오신 것을 환영합니다.</small>
					</h3>
				</div>
				<div class="content-inner" style="height:700px">
					<section class="signup-body">
						<form action="meminsert.sadari" autocomplete="off"
							class="form-horizontal has-validation-callback" id="signup-form"
							method="post">
							<input type='hidden' name='cmd' value='insert-member'/>
							<div class="form-group signup-usage">
								<label class="control-label required" for="id_usage"> <span>*</span>
									이용목적
								</label>
								<div class="control-wrapper">
									<ul>
										<li>
										<label for="id_usage_1">
												<div class="one radio-selected" id="radio-one">									
													<input class='client' id="id_usage_1" name="usage"
														type="radio" value="클라이언트"> <label
														class="radio-inline" for="id_usage_1"> 
														<strong>클라이언트</strong><br>
														프로젝트를 의뢰하고 싶습니다.
													</label>
												</div>
										</label>
										</li>
										<li>
										<label for="id_usage_2">
												<div class="two radio-selected" id="radio-two">
													<input class="partners" id="id_usage_2" name="usage" type="radio"
														value="파트너"> <label class="radio-inline" for="id_usage_2"> <strong>파트너스</strong><br>
														일거리를 찾고 있습니다.
													</label>
												</div>
										</label>
										</li>
									</ul>
								</div>
							</div>
							<div class="form-group ">
								<label class="control-label required" for="id_username">
									<span>*</span> 아이디
								</label>
								<div class="control-wrapper">
									<input autocomplete="off" class="required form-control"
										id="userId" maxlength="20" name="userId"
										required="required" type="text">
									<button type="button" style="margin-top:5px" id="id_check" class="btn btn-primary btn-md">중복검사</button>
									<div id="idmessage" style="display:none;"></div>
								</div>								
							</div>
							<div class="form-group ">
								<label class="control-label required" for="id_password1">
									<span>*</span> 비밀번호
								</label>
								<div class="control-wrapper">
									<input autocomplete="off" class="required form-control"
										id="password" maxlength="32" name="password"
										required="required" type="password"> <span
										class="help-block"> 비밀번호는 4자 이상 20자 이하 영문과 숫자 조합으로 입력해 주세요. </span>
								</div>
							</div>
							<div class="form-group ">
								<label class="control-label required" for="id_password2">
									<span>*</span> 비밀번호 재입력
								</label>
								<div class="control-wrapper">
									<input autocomplete="off" class="required form-control"
										id="repassword" maxlength="32" name="repassword"
										required="required" type="password"> <span
										class="help-block">동일한 비밀번호를 입력해 주세요.</span>
								</div>
							</div>
							<div class="tos form-group ">
								<div class="checkbox-wrapper">
									<div class="checkbox" style="padding-top: 0 !important;">
										<label for="id_tos"> <input class="required"
											id="id_tos" name="tos" type="checkbox"> <span>
												<a href="/terms-of-service/" target="_blank">이용 약관</a> 및 <a
												href="/privacy/" target="_blank">개인 정보 보호 방침</a>에 동의합니다.																			
										</span>
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="btn-wrapper">
									<input class="btn btn-block btn-wishket btn-lg account-btn"
										type="submit" value="회원가입">
								</div>
							</div>
						</form>
					</section>
					<aside class="signup-aside">
						<form action="/facebook/connect/?facebook_login=1"
							class="form-horizontal signup-aside-facebook has-validation-callback"
							id="facebook-connect-form" method="post">
							<input name="csrfmiddlewaretoken" type="hidden"
								value="h6HDEvWUuioIvtIJTPMdnuYUoBXfv22o"> <input
								name="register_next" type="hidden"
								value="/accounts/signup/facebook/">
							<div class="form-group">
								<div class="btn-block-wrapper">
									<strong>페이스북 계정이 있으신가요?</strong>
										<button type="button" class="btn btn-primary btn-lg">페이스북으로 회원가입</button>
								</div>
							</div>
						</form>
						<p class="redirect-login">
							이미 회원이신가요? <a href="/accounts/login/">로그인</a>
						</p>
						<p class="aside-benefit-text">
							<strong class="strong-value">27,520</strong>개의 <strong>클라이언트
								기업</strong>과<br> <strong class="strong-value">36,182</strong>개의 <strong>개발회사
								&amp; 프리랜서</strong>가<br> 함께하는 온라인 아웃소싱 플랫폼 위시켓
						</p>
					</aside>
				</div>
			</div>
			<!-- END OF content -->
		</div>
		<!-- END OF page -->
	</div>
	<!-- 	end of wrap -->

	</body>
<!-- footer  -->
<%@ include file="footer.jsp" %>
</body>
</html>