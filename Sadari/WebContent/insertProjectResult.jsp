<%@ page contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%
	int result = (int)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
<script type="text/javascript">

$(document).ready(function(){
	
	if(<%=result%>=='1'){
		
		$('#success').show();
	}else{
		
		$('#fail').show();
	}
});
</script>
</head>
<body>
	<div id="success" style="display: none">
			<!-- header -->
			   <%@ include file="header.jsp" %>
			
			<!-- 	content Header -->
					<div class="page">
						<div id="loginFaileMessage" class="alert alert-warning fade in">올바른 아이디 또는 이메일와/과 비밀번호를 입력하십시오. 두 필드 모두 대문자와 소문자를 구별합니다.</div>
						<!-- 			<div class="content"> -->
						<div class="newsCenter">
							<h3>등록한 프로젝트를 검수 중입니다.</h3>
							
						</div>
						<div class="login-content">
						
								<div class="loginForm">
									<form id="loginFm" class="form-horizontal">
										<div class="form-group">
											<div class="explain">등록된 프로젝트를 검수 중입니다.<br>
											파트너목록에서 같이 작업하고 싶으신 분을 찾아보세요.
											</div>
										</div>
										
									</form>
				
									<div class="login-button">
									
									</div>
									<div class="passwordLookDiv">
										
									</div>
				
								</div>
							
							<div class="facebookLoginForm">
								 <img src="./img/check.PNG" class="img-circle" width="180" height="180"> 
							</div>
			
						</div>
						<!-- END OF login-content -->
					</div>
					<!-- END OF page -->
				</div>
				<!-- 	end of wrap -->
				
			<!-- footer  -->
				<%@ include file ="footer.jsp" %>
	</div>



	<div id="fail" style="display: none">등록 실패 div</div>
</body>
</html>