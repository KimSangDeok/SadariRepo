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
 <header class="reg_project_header">
     <div class="menubar">

    <!-- 로고 버튼 -->
       <a href="#"><div class="menu_logo">SADARI</div></a>

    <!-- 대메뉴 -->
        <nav class="sub_menubar">
                <a class="sub_menu" href="">프로젝트 등록</a>
                <a class="sub_menu" href="">프로젝트 찾기</a>
                <a class="sub_menu" href="">파트너스 목록</a>
                <a class="sub_menu" href="">관리</a>
        </nav>
    <!-- END OF sub_menubar -->
    </div>
<!-- END OF menubar -->
 </header>

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
     <aside class="sidebar" style="margin:70px">
			<div>
				<h2>관리자</h2>
				  <div class="list-group"  style="cursor:pointer">
				    <a href="#" class="list-group-item" style="text-align: center; font-size:25px">검수</a>
				    <a href="#" class="list-group-item" style="text-align: center; font-size:25px;" >결제</a>
				    <a href="#" class="list-group-item active" style="text-align: center; font-size:25px">지급</a>
				  </div>			
			</div>
    </aside>
 </div>
 <!-- END OF page -->
</div>
<!-- END OF wrap -->

<!-- footer  -->
<footer>
    <p class="footer_logo">SADARI</p>
    <div class="company_explain">
        사업자명 : 사다리<br/>
        전화번호 : <a class="footer_link" href="">(02)5222-1112<br/></a>
        EMAIL : <a class="footer_link" href="">help@sadari.com<br/></a>
        고객센터 운영시간 : 오전 10시부터 오후 6시까지(공휴일 제외)<br/><br/><br/>
        ⓒ 2017 SADARI, inc.
    </div>
<!-- END OF company_explain -->
</footer>
</body>
</html>