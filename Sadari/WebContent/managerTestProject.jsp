<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	HashMap pMap = (HashMap)request.getAttribute("pjInFoMap");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SADARI  |  검수 할 프로젝트</title>
    
    <!-- 스타일시트 추가 -->
    <link rel="stylesheet" href="./css/managerView.css">
    <link rel="stylesheet" href="./css/style.css">
    
    <!-- 스크립트 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<script type="text/javascript">
$(document).ready(function(){
	
	$('#yesBtn').click(function(){
		
		$(location).attr('href','pjInfo.sdrad?cmd=pj-gumsu&pjNo='+'<%=pMap.get("PJ_NO") %>'+'&yn=2');
	});
	$('#noBtn').click(function(){
		
		$(location).attr('href','pjInfo.sdrad?cmd=pj-gumsu&pjNo='+'<%=pMap.get("PJ_NO") %>'+'&yn=3');
	});
		
});
</script>
<body class="sub_body">

<div class="wrap">
 <!-- 	header -->
		<jsp:include page="header.jsp"/>
		<!-- end of header -->

<!-- 게시판 -->
 <div class="page">
     <div class="content">       
            <div class="panel panel-danger">
		      <div class="panel-heading"><%=pMap.get("PJ_TITLE") %></div>
		      <div class="panel-body">
		      		<%=pMap.get("PJ_CONTENT") %><br/>
		      		필요 기술 ><%=pMap.get("PJ_SKILLS") %><br/>
		      </div>
		    </div>
		    
		    <div class="panel panel-danger">
		      <div class="panel-heading">금액 및 기간</div>
		      <div class="panel-body">
		      		
		      		금액><%=pMap.get("PJ_PRICE") %><br/>
		      		기간><%=pMap.get("PJ_TERM") %><br/>
		      </div>		     
		    </div>
		    <button id="yesBtn" type="button" class="btn btn-success" style="text-align:center">적격</button>
     		<button id="noBtn" type="button" class="btn btn-danger" style="text-align:center">부적격</button>  
     </div>

    <!-- END OF content -->

<!-- 사이드 메뉴 -->
     <jsp:include page="adminSideMenu.jsp"/>
     
 </div>
 <!-- END OF page -->
  
</div>
<!-- END OF wrap -->

</body>
<!-- footer  -->
<%@ include file="footer.jsp" %>
</body>
</html>