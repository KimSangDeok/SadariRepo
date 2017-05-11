<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SADARI  |  나의 사다리</title>

<!-- 스타일시트 추가 -->
<link rel="stylesheet" href="./css/pwLookForm.css">
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
	
	$('#pwLookBtn').click(function(){
		
	$.ajax({
			
			url:'pwlook.sadari?cmd=pwlook-do',
			type:'post',
			data:{
				
				userId:$('#userId').val(),
				userTel:$('#userTel').val()
			},
			dataType:'text',
			success:function(data){
				
				if( data.trim() =='lookPwFaile'){
					
					$('#lookPwDiv').hide();
					$('#loginFaileMessage').show();
				}else{
					
					$('#loginFaileMessage').hide();
					$('#lookPwDiv').show();
					$('#inputPassword').val(data.trim());
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
			<!-- 			<div class="content"> -->
			<div class="newsCenter">
				<h3>비밀번호 찾기</h3>
				<h5>계정의 비밀번호를 잊으셨나요?</h5>
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
							<label class="col-sm-2 control-label">전화번호</label>
							<div class="col-sm-8">
								<input class="form-control" id="userTel" type="text" value="">
							</div>
						</div>
						<div id="loginFaileMessage" class="alert alert-warning fade in">유효한 아이디와 전화번호를 입력하십시오.</div>
						<div class="login-button">
							<button  id="pwLookBtn" type="button" class="btn btn-primary btn-lg">비밀번호 찾기</button>
						</div>
						<br/><br/><br/>
						<div class="pwShowDiv" id="lookPwDiv">
							<div class="form-group" >
								<label class="col-sm-2 control-label">비밀번호</label>
								<div class="col-sm-8">
									<input class="form-control" id="inputPassword" type="text" value="" readonly="readonly">
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="facebookLoginForm">
					<img alt="" src="img/accounts_password_reset.png">
				</div>
			</div>
			<!-- END OF login-content -->
		</div>
		<!-- END OF page -->
	</div>
	<!-- 	end of wrap -->

	<!-- footer  -->
	<jsp:include page="footer.jsp"/>
</body>
</html>