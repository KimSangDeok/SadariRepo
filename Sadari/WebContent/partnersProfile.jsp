<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SADARI  |  나의 사다리</title>
    
    <!-- 스타일시트 추가 -->
    <link rel="stylesheet" href="./css/partnerProfile.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 스크립트 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="wrap">

<!-- header -->
<%@ include file="header.jsp" %>

<!-- 나의 프로젝트 대시보드 -->
 <div class="page">
     <div class="content" style="margin-top:50px">
        <div class="contentInner" >
          	<section>
          		<h3 class="profile-header">
          			hwang의 자기소개
          		</h3>
			</section>
			<section>
        		<h4 class="">자기소개</h4>
        		등록된 자기 소개가 없습니다.
        	</section>
        </div>
        
        <div class="contentInner" style="margin-top:20px" >
          	<section>
          		<h3 class="profile-header">
          			hwang의 포트폴리오
          		</h3>
			</section>
			<section>
        		<h4 class="">포트폴리오</h4>
        		등록된 포트폴리오가 없습니다.
        	</section>
        </div> 
        
        <div class="contentInner" style="margin-top:20px" >
          	<section>
          		<h3 class="profile-header">
          			hwang의 보유기술
          		</h3>
			</section>
			<section id="section4">
        		<h4 class="">보유기술</h4>
        		등록된 보유기술이 없습니다.
        	</section>
        </div>
            
        <div class="contentInner" style="margin-top:20px" >
          	<section>
          		<h3 class="profile-header">
          			hwang의 미팅
          		</h3>
			</section>
			<section>
        		<h4 class="">미팅</h4>
        		등록된 미팅이 없습니다.
        	</section>
        </div>
        
        <div class="contentInner" style="margin-top:20px; margin-bottom:30px;" >
          	<section>
          		<h3 class="profile-header">
          			클라이언트의 평가
          		</h3>
			</section>
			<section>
        		<h4 class="">클라이언트 평가</h4>
        		등록된 클라이언트 평가가 없습니다.
        	</section>
        </div>       
     </div>

<!-- 사이드 메뉴 -->
     <aside class="sidebar" style="margin-top:40px">
        <div>
            <div class="partners"><h4 class="sideTitle">파트너스 정보</h4>
<!--             <div class="myInfoBlock"></div> -->
				<div class ="userphoto">
               	<img style="border-radius: 10%;" alt="" src="img/partners_profile.jpg">
            	</div>
            <div class="userInfo"></div>
                <h4 class="userId" style="margin-left:20px;text-align:center">hwang</h4>
            </div>
            <div class="tab">
                <ul class="nav nav-pills nav-stacked" style="border-bottom: 1px dashed #dedede; text-align:center;">
				  <li class="active"><a href="#">전체보기</a></li>
				  <li><a href=".sadari?cmd=introduce">자기소개</a></li>
				  <li><a href=".sadari?cmd=portrolio">포트폴리오</a></li>
				  <li><a href=".sadari?cmd=skills">보유기술</a></li>				  
				</ul>
				<ul class="nav nav-pills nav-stacked" style="text-align:center;">
				  <li><a href=".sadari?cmd=">미팅</a></li>
				  <li><a href=".sadari?cmd=">클라이언트 평가</a></li>
				</ul>
            </div>
    </aside>
 </div>


<!-- <div class="container"> -->
<!--   <div class="row"> -->
<!--     <nav class="col-sm-3" id="myScrollspy"> -->
<!--       <ul class="nav nav-pills nav-stacked"> -->
<!--         <li class="active"><a href="#section1">Section 1</a></li> -->
<!--         <li><a href="#section2">Section 2</a></li> -->
<!--         <li><a href="#section3">Section 3</a></li> -->
<!--         <li class="dropdown"> -->
<!--           <a class="dropdown-toggle" data-toggle="dropdown" href="#">Section 4 <span class="caret"></span></a> -->
<!--           <ul class="dropdown-menu"> -->
<!--             <li><a href="#section41">Section 4-1</a></li> -->
<!--             <li><a href="#section42">Section 4-2</a></li>                      -->
<!--           </ul> -->
<!--         </li> -->
<!--       </ul> -->
<!--     </nav> -->
<!--     <div class="col-sm-9"> -->
<!--       <div id="section1">     -->
<!--         <h1>Section 1</h1> -->
<!--         <p>Try to scroll this section and look at the navigation list while scrolling!</p> -->
<!--       </div> -->
<!--       <div id="section2">  -->
<!--         <h1>Section 2</h1> -->
<!--         <p>Try to scroll this section and look at the navigation list while scrolling!</p> -->
<!--       </div>         -->
<!--       <div id="section3">          -->
<!--         <h1>Section 3</h1> -->
<!--         <p>Try to scroll this section and look at the navigation list while scrolling!</p> -->
<!--       </div> -->
<!--       <div id="section41">          -->
<!--         <h1>Section 4-1</h1> -->
<!--         <p>Try to scroll this section and look at the navigation list while scrolling!</p> -->
<!--       </div>       -->
<!--       <div id="section42">          -->
<!--         <h1>Section 4-2</h1> -->
<!--         <p>Try to scroll this section and look at the navigation list while scrolling!</p> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </div> -->

<!-- END OF page -->
</div>
<!-- END OF wrap -->

<!-- footer  -->
<%@ include file="footer.jsp" %>

</body>
</html>