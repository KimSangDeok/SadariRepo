<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<body class="sub_body">

<div class="wrap">
 <!-- 	header -->
		<%@ include file="header.jsp" %> 
		<!-- end of header -->

<!-- 게시판 -->
 <div class="page">
     <div class="content">       
            <div class="panel panel-danger">
		      <div class="panel-heading">프로젝트 명</div>
		      <div class="panel-body">
		      		프로젝트 내용
					        	      	
		      </div>
		    </div>
		    
		    <div class="panel panel-danger">
		      <div class="panel-heading">금액 및 기간</div>
		      <div class="panel-body">
		      		
		      		금액 및 기간      	
		      </div>		     
		    </div>
		    <button type="button" class="btn btn-success" style="text-align:center">적격</button>
     		<button type="button" class="btn btn-danger" style="text-align:center">부적격</button>  
     </div>

    <!-- END OF content -->

<!-- 사이드 메뉴 -->
     <aside class="sidebar" style="margin:20px">
			<div>
				<h2>관리자</h2>
				  <div class="list-group">
				    <a href="#" class="list-group-item" style="text-align: center; font-size:25px">검수</a>
				    <a href="#" class="list-group-item" style="text-align: center; font-size:25px">결제</a>
				    <a href="#" class="list-group-item" style="text-align: center; font-size:25px">지급</a>				  
				  </div>			
			</div>
    </aside>  
     
 </div>
 <!-- END OF page -->
  
</div>
<!-- END OF wrap -->

</body>
<!-- footer  -->
<%@ include file="footer.jsp" %>
</body>
</html>