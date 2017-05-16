<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String projectName = "/Sadari"; %>
<%
	String userSessId="";
	String userSessType="";
	String loginState="N";
	
	if( session.getAttribute("id") != null){
		
		loginState="Y";
		userSessId = (String)session.getAttribute("id");
		userSessType = (String)session.getAttribute("type");
	}
%>
      <link rel="stylesheet" href="./css/header.css">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		
		if('<%=loginState%>'=='N'){
			
			$('#menuNav a').attr('href','login.sadari?cmd=login-form');
		}
		
		if('<%=userSessType%>'=='pt'){
			
			$('#pjAddAtag').hide();
			$('#loginAtag').text('Sign Out');
			$('#userNameAtag').text('반갑습니다 '+'<%=userSessId%>'+'님');
		}else if ( '<%=userSessType%>' == 'ct' ) {
			
			$('#pjAddAtag').show();
			$('#loginAtag').text('Sign Out');
			$('#userNameAtag').text('반갑습니다 '+'<%=userSessId%>'+'님');
		}else if ( '<%=userSessType%>' == 'ad' ) {
			
			$('#pjAddAtag').show();
			$('#loginAtag').text('Sign Out');
			$('#userNameAtag').text('반갑습니다 '+'<%=userSessId%>'+'님');
		}else { $('#loginAtag').text('Sign In'); }
	});
</script>
<header>
	     <div class="menubar" >
	
	    <!-- 로고 버튼 -->
	       <a href="<%= projectName %>/main.sadari?cmd=main-page"><div style="float:left" class="menu_logo">SADARI</div></a>
	
	    <!-- 대메뉴 -->
	        <nav id="menuNav" class="sub_menubar" style="float:left">
	                <a id="pjAddAtag" class="sub_menu" href="<%= projectName %>/regProject.sadari?cmd=reg-project">프로젝트 등록</a>
	                <a class="sub_menu" href="<%= projectName %>/searchProject.sadari?cmd=search-project">프로젝트 찾기</a>
	                <a class="sub_menu" href="<%= projectName %>/listProject.sadari?cmd=list-partner">파트너스 목록</a>
<!-- 	                <a href=""><div class="signInId">userID<span class="badge">alertNumber</span></div></a> -->
	                <a id="userNameAtag"  class="sub_menu" href="#"></a>
	                <a id="loginAtag" class="sub_menu" href="<%= projectName %>/login.sadari?cmd=login-form">Sign In</a>
	        </nav>
	    <!-- END OF sub_menubar -->
	    </div>
	<!-- END OF menubar -->
	</header>