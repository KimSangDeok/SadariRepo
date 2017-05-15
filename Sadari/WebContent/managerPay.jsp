<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SADARI  |  관리자 결제 페이지</title>
    
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
		      <div class="panel-heading"> 미결제 프로젝트</div>
		      <div class="panel-body">
		      		 <table class="table table-hover">
					    <thead>
					      <tr>
					        <th>클라이언트</th>
					        <th>프로젝트명</th>
					        <th>신청날짜</th>
					      </tr>
					    </thead>
					    <tbody  style="cursor:pointer">
					      <tr>
					        <td>John</td>
					        <td>Doe</td>
					        <td>john@example.com</td>
					      </tr>
					      <tr>
					        <td>Mary</td>
					        <td>Moe</td>
					        <td>mary@example.com</td>
					      </tr>
					      <tr>
					        <td>July</td>
					        <td>Dooley</td>
					        <td>july@example.com</td>
					      </tr>
					    </tbody>
					  </table>		      	
		      </div>
		    </div>
		    
		    <div class="panel panel-danger">
		      <div class="panel-heading">결제 완료된 프로젝트</div>
		      <div class="panel-body">
		      		 <table class="table table-hover">
					    <thead>
					      <tr>
					        <th>클라이언트</th>
					        <th>프로젝트명</th>
					        <th>신청날짜</th>
					      </tr>
					    </thead>
					    <tbody style="cursor:pointer">
					      <tr>
					        <td>John</td>
					        <td>Doe</td>
					        <td>john@example.com</td>
					      </tr>
					      <tr>
					        <td>Mary</td>
					        <td>Moe</td>
					        <td>mary@example.com</td>
					      </tr>
					      <tr>
					        <td>July</td>
					        <td>Dooley</td>
					        <td>july@example.com</td>
					      </tr>
					    </tbody>
					  </table>		      	
		      </div>
		    </div>
     </div>
    <!-- END OF content -->

<!-- 사이드 메뉴 -->
     <aside class="sidebar" style="margin:70px">
			<div>
				<h2>관리자</h2>
				  <div class="list-group"  style="cursor:pointer">
				    <a href="#" class="list-group-item" style="text-align: center; font-size:25px">검수</a>
				    <a href="#" class="list-group-item active" style="text-align: center; font-size:25px;" >결제</a>
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