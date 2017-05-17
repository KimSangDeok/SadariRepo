<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SADARI  |  관리자 지급 페이지</title>
    
    <!-- 스타일시트 추가 -->
    <link rel="stylesheet" href="./css/managerView.css">
    <link rel="stylesheet" href="./css/style.css">
    
    <!-- 스크립트 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body class="sub_body">

<div class="wrap">
<!-- 	header -->
		<%@ include file="header.jsp" %> 

<!-- 게시판 -->
 <div class="page">
     <div class="content">       
            <div class="panel panel-danger">
		      <div class="panel-heading"> 지급 프로젝트 목록</div>
		      <div class="panel-body">
		      		 <table class="table table-hover">
					    <thead>
					      <tr>
					        <th>프로젝트명</th>
					        <th>클라이언트</th>
					        <th>파트너</th>
					        <th>지급된 회차</th>
					      </tr>
					    </thead>
					    <tbody  style="cursor:pointer">
					      <tr>
					        <td>John</td>
					        <td>Doe</td>
					        <td>john@example.com</td>
					        <td>2회/5회</td>
					      </tr>					     
					    </tbody>
					  </table>		      	
		      </div>
		    </div>
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