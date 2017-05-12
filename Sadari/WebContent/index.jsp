<%@page import="java.math.BigDecimal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% String projectName = "/Sadari"; %>

<%

HashMap pList = (HashMap)request.getAttribute("count");
	int totalProject 		=  ((BigDecimal)pList.get("CNT")).intValue();
	int totalPrice 			=  ((BigDecimal)pList.get("TOTALPRICE")).intValue();
	int totalMember 		=  ((BigDecimal)pList.get("MEMBER")).intValue();
%>
<!DOCTYPE html>
<html>
<head>
   	
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SADARI  |  Welcome</title>

<!-- 스타일시트 추가 -->
    <link rel="stylesheet" href="./css/style.css">

<!-- 스크립트 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
</head>

<body class="index_body">
    <header class="index_header">
    <!-- 로고 버튼 -->
        <span class="index_logo">SADARI</span>

    <!-- 대메뉴 -->
        <nav class="main_navbar">
            <div class="menu_container">
                <a class="main_menu" href="<%= projectName %>/regProject.sadari?cmd=reg-project">프로젝트 등록</a>
                <a class="main_menu" href="<%= projectName %>/searchProject.sadari?cmd=search-project">프로젝트 찾기</a>
                <a class="main_menu" href="<%= projectName %>/listProject.sadari?cmd=list-partner">파트너스 목록</a>
                <a class="main_menu" href="<%= projectName %>/signIn.sadari?cmd=login-do"><p class="login">SIGN IN</p></a>
            </div>
        </nav>

    <!-- 메인 & 서브 문구 -->
        <h1>In the Hall of the Mountain King</h1>
        <h2>In the Hall of the Mountain KingIn the Hall of the Mountain <br/>KingIn the Hall of the Mountain King</h2>
        <a href=""><span class="sign">SIGN UP</span></a>
    
    </header>
<!-- END OF HEADER -->

<!-- 프로젝트 현황 -->
    <section class="stats">
        <div class="stats_box">
            <div class="stats_inner">
                <p>등록된 프로젝트</p>
                <span class="stats_project"><%=totalProject%></span>
                <span>개</span>
            </div>

            <div class="stats_inner">
                <p>프로젝트 등록금액</p>
                <span class="stats_project_money"><%= totalPrice %></span>
                <span>원</span>
            </div>

            <div class="stats_inner">
                <p>개발회사 & 프리랜서</p>
                <span class="stats_project_partners"><%= totalMember %></span>
                <span>명</span>
            </div>
        </div>
    </section>

    <!-- 최근 등록 프로젝트 -->
    <section class="recent_reg_project">
        <div class="recent_reg_project_header">
                    <h4>등록된 프로젝트</h4>
                </div>
    <div class="recent_reg_project_table">
        <div class="recent_reg_project_inner">
            <div class="recent_reg_project_item">
                <span class="item_header"><a href="">결혼정보 검색 앱(iOS,Android)개발</a></span>
                    <strong><span class="item_price" id="item">15,1100,000원</span>
                    <span class="item_period" id="item">50일</span>
                    <span class="item_apply_people" id="item"> 현재 20명 지원</span></strong>
                    <div class="item_describe">저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립한 IT전문 개발회사입니다. 본사</div>
            </div>
            <div class="recent_reg_project_item">
               <span class="item_header"><a href="">결혼정보 검색 앱(iOS,Android)개발</a></span>
                    <strong><span class="item_price" id="item">15,000,000원</span>
                    <span class="item_period" id="item">50일</span>
                    <span class="item_apply_people" id="item">현재 20명 지원</span></strong>
                    <div class="item_describe">저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립한 IT전문 개발회사입니다. 본사</div>
            </div>
            <div class="recent_reg_project_item">
                <span class="item_header"><a href="">결혼정보 검색 앱(iOS,Android)개발</a></span>
                    <strong><span class="item_price" id="item">15,000,000원</span>
                    <span class="item_period" id="item">50일</span>
                    <span class="item_apply_people" id="item"> 현재 20명 지원</span></strong>
                    <div class="item_describe">저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립한 IT전문 개발회사입니다. 본사</div>
            </div>
        </div>
        <!-- END OF recent_reg_project_inner -->
                        <div class="recent_reg_project_item">
                <span class="item_header"><a href="">결혼정보 검색 앱(iOS,Android)개발</a></span>
                    <strong><span class="item_price" id="item">15,000,000원</span>
                    <span class="item_period" id="item">50일</span>
                    <span class="item_apply_people" id="item"> 현재 20명 지원</span></strong>
                    <div class="item_describe">저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립한 IT전문 개발회사입니다. 본사저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립</div>
            </div>
            <div class="recent_reg_project_item">
                <span class="item_header"><a href="">결혼정보 검색 앱(iOS,Android)개발</a></span>
                    <strong><span class="item_price" id="item">15,000,000원</span>
                    <span class="item_period" id="item">50일</span>
                    <span class="item_apply_people" id="item"> 현재 20명 지원</span></strong>
                    <div class="item_describe">저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립한 IT전문 개발회사입니다. 본사저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립</div>
            </div>
            <div class="recent_reg_project_item">
                <a href=""><span class="item_header">결혼정보 검색 앱(iOS,Android)개발</span></a>
                    <strong><span class="item_price" id="item">15,000,000원</span>
                    <span class="item_period" id="item">50일</span>
                    <span class="item_apply_people" id="item"> 현재 20명 지원</span></strong>
                    <div class="item_describe">저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립한 IT전문 개발회사입니다. 본사저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립한 IT전문 개발회사입니다.저희는 2004년부터 연구개발을 착수하여 2006년 정식 법인설립한 IT전문 개발회사입니다.저희는 2004년부터 연구개발을 착수111111하여 2006년 정식 법22222인설립한 IT전문 개발회사입니다.</div>
        </div>
        </div>
    <!-- END OF recent_reg_project_table -->
    </section>


<!-- 메인 내용 -->
    <section class="be_registered_project">
        기타 내용 
    </section>

</body>
<!-- footer  -->
<%@ include file="footer.jsp" %>

</html>