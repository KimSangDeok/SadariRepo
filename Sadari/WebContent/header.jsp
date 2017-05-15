<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String projectName = "/Sadari"; %>

      <link rel="stylesheet" href="./css/header.css">
      
<header>
	     <div class="menubar" >
	
	    <!-- 로고 버튼 -->
	       <a href="<%= projectName %>/main.sadari?cmd=main-page"><div style="float:left" class="menu_logo">SADARI</div></a>
	
	    <!-- 대메뉴 -->
	        <nav class="sub_menubar" style="float:left">
	                <a class="sub_menu" href="<%= projectName %>/regProject.sadari?cmd=reg-project">프로젝트 등록</a>
	                <a class="sub_menu" href="<%= projectName %>/searchProject.sadari?cmd=search-project">프로젝트 찾기</a>
	                <a class="sub_menu" href="<%= projectName %>/listProject.sadari?cmd=list-partner">파트너스 목록</a>
	                <a href=""><div class="signInId">userID<span class="badge">alertNumber</span></div></a>
	        </nav>
	    <!-- END OF sub_menubar -->
	    </div>
	<!-- END OF menubar -->
	</header>