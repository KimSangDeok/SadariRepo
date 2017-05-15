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
		<!-- end of header -->
<!-- 게시판 -->
 <div class="page">
     <div class="content">       
            <div class="panel panel-danger">
		      <div class="panel-heading"> 지급할 프로젝트 이름</div>
		      <div class="panel-body">
		      		 <table class="table table-hover" style="text-align:center">
					    <thead>
					      <tr>
					        <th style="text-align:center">프로젝트명</th>
					        <th style="text-align:center">파트너</th>
					        <th style="text-align:center">클라이언트</th>
					        <th style="text-align:center">지급된 회차</th>
					        <th style="text-align:center">프로젝트 기간(단위:월)</th>
					        <th style="text-align:center">승인상태</th>
					     	<th style="text-align:center">지급여부</th>
					      </tr>
					    </thead>
					    <tbody>
					      <tr>
					        <td>ㅋㅋㅋ</td>
					        <td>Doe</td>
					        <td>jhon</td>
					        <td>3</td>
					        <td>5</td>
					        <td>승인 완료</td>
					        <td><button type="button" class="btn btn-success btn-xs">지급하기</button></td>
					      </tr>					     
					    </tbody>
					  </table>		      	
		      </div>
		    </div>
		    
		    <div class="panel panel-danger">
		      <div class="panel-heading" > 지난 지급 내역</div>
		      <div class="panel-body">
		      		 <table class="table table-hover" style="text-align:center">
					    <thead>
					      <tr>
					        <th style="text-align:center">회차</th>
					        <th style="text-align:center">프로젝트 기간(단위:월)</th>
					        <th style="text-align:center">지급일자</th>
					      </tr>
					    </thead>
					    <tbody>
					      <tr>
					        <td>1</td>
					        <td>5</td>
					        <td>2017/03/31</td>					        
					      </tr>			
					      <tr>
					        <td>2</td>
					        <td>5</td>
					        <td>2017/04/31</td>					        
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
				    <a href="#" class="list-group-item" style="text-align: center; font-size:25px">결제</a>
				    <a href="#" class="list-group-item active" style="text-align: center; font-size:25px">지급</a>
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