<%@ page contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<% String projectName = "/Sadari"; %>
<%
	int result = 1;
// (int)request.getAttribute("result"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<!-- 스타일시트 추가 -->
    <link rel="stylesheet" href="./css/insertProjectResult.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<body class="sub_body">
	<div class="wrap" id="success" style="display: none" >

		<!-- 	header -->
		<jsp:include page="header.jsp"/>
		<!-- end of header -->

		<!-- 	content Header -->
		<div class="page">
		
			<div id="loginFaileMessage" class="alert alert-warning fade in">올바른 아이디 또는 이메일와/과 비밀번호를 입력하십시오. 두 필드 모두 대문자와 소문자를 구별합니다.</div>
			<!-- 			<div class="content"> -->
			<div class="newsCenter">
				<h3>등록한 프로젝트를 검수 중입니다.</h3>
			</div>
			
			<div class="login-content">
				<div class="loginForm">
					<form id="loginFm" class="form-horizontal" action="xxx.sadari" method="post">
					   <input type='hidden' name='cmd' value='show-partnerList'/>
						<div class="form-group">
							<h4>등록된프로젝트를 검수 중입니다.<br/></h4>
							<h4>파트너스목록에서 같이 작업하고 싶으신 분을 찾아보세요.</h4>
						</div>
<!-- 						<div class="form-group"> -->
<!-- 							<label class="col-sm-2 control-label">비밀번호</label> -->
<!-- 						</div> -->
						<div class="login-button" > 
<!-- 						<button type="submit" class="btn-primary btn-lg" id="loginBtn" >파트너스 목록</button> -->
							<a class="main_menu" href="<%= projectName %>/xxxx.sadari?cmd=list-partner">파트너스 목록</a>
						</div> 
					</form>
				</div>
				
				<div class="facebookLoginForm">
					<img src="./img/check.PNG" class="img-circle" width="200" height="200"> 
				</div>

			 </div>
			 <!-- END OF login-content -->
		</div>
		<!-- END OF page -->
	</div>
	<!-- 	end of success -->

	<!-- footer  -->
	
	<div id="fail" style="display: none">
		<img src="./img/checkFail.PNG" class="img-circle" width="200" height="200" alt="등록실패"> 
	</div>
</body>
<%@ include file ="footer.jsp" %>
</html>
