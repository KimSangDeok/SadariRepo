<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("id") != null){
		
		session.invalidate(); 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SADARI  |  나의 사다리</title>

<!-- 스타일시트 추가 -->
<link rel="stylesheet" href="./css/loginForm.css">
<link rel="stylesheet" href="./css/style.css">

<!-- 스크립트 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
<title></title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	$('#loginBtn').click(function(){
		
		$.ajax({
			
			url:'login.sadari?cmd=login-do',
			type:'post',
			data:{
				
				userId:$('#userId').val(),
				userPw:$('#userPw').val()
			},
			dataType:'text',
			success:function(data){
				
				if( data.trim() =='loginFaile'){
					
					$('#loginFaileMessage').show();
				}else{
					
					$(location).attr('href','main.sadari?cmd='+data.trim()+'-mypage');
				}
			},
			error : function(request, status , error) {
				
				 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
					
		});
		
	});
});
</script>
<body class="sub_body">
	<div class="wrap">

		<!-- 	header -->
		<jsp:include page="header.jsp"/>
		<!-- end of header -->

		<!-- 	content Header -->
		<div class="page">
			<div id="loginFaileMessage" class="alert alert-warning fade in">올바른 아이디 또는 이메일와/과 비밀번호를 입력하십시오. 두 필드 모두 대문자와 소문자를 구별합니다.</div>
			<!-- 			<div class="content"> -->
			<div class="newsCenter">
				<h3>로그인</h3>
				<h5>사다리에 오신것을 환영합니다.</h5>
			</div>
			<div class="login-content">
				<div class="loginForm">
					<form id="loginFm" class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">아이디</label>
							<div class="col-sm-8">
								<input class="form-control" id="userId" type="text" value="">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">비밀번호</label>
							<div class="col-sm-8">
								<input class="form-control" id="userPw" type="text" value="">
							</div>
						</div>
					</form>

					<div class="login-button">
						<button  id="loginBtn" type="button" class="btn btn-primary btn-lg">로그인</button>
					</div>
					<div class="passwordLookDiv">
						<p class="find-password">비밀번호를 잊으셨나요? <a href="pwlook.sadari?cmd=pwlook-form">비밀번호 찾기</a></p>
					</div>

				</div>
				<div class="facebookLoginForm">
					<h6>이미 페이스북으로 가입하셨다면</h6>
					<button type="button" class="btn btn-primary btn-lg">페이스북으로
						로그인</button>
					<hr>
					아직 회원이 아니신가요? <a href="#">회원가입</a>
				</div>

			</div>
			<!-- END OF login-content -->
		</div>
		<!-- END OF page -->
	</div>
	<!-- 	end of wrap -->

	<!-- footer  -->
	<footer>
		<p class="footer_logo">SADARI</p>
		<div class="company_explain">
			사업자명 : 사다리<br /> 전화번호 : <a class="footer_link" href="">(02)5222-1112<br /></a>
			EMAIL : <a class="footer_link" href="">help@sadari.com<br /></a>
			고객센터 운영시간 : 오전 10시부터 오후 6시까지(공휴일 제외)<br /> <br /> <br /> ⓒ 2017
			SADARI, inc.
		</div>
		<!-- 		<!-- END OF company_explain  -->
	</footer>
</body>
</html>