<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<title>SADARI | 프로젝트 찾기</title>
	
	<!-- 스타일시트 추가1 -->
    <link rel="stylesheet" href="./css/partnerPage.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/searchProject.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 스크립트 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body class="searchProjectBody">
	<div class="searchProjectWrap">
		<%@ include file="header.jsp" %> 
	
	<!-- 프로젝트 찾기 전체 테이블 -->
		<div class="searchProjectTable">
            <!-- 프로젝트 찾기 타이틀 -->
            <div class="searchProjectHeader">
				<div class="searchProjectTitle">프로젝트 찾기</div>
				<div class="searchProjectCount">000<span class="searchProject">개의 프로젝트가 있습니다</span></div>
			</div>
		<!-- 프로젝트 정렬 테이블 -->
        <aside class="sortSidebar">
            <div class="sort">
                    <div class="projectSortTitle">프로젝트 정렬</div>
                <div class="projectSortleftBox">
                    <a href=""><div class="sortButton">금액 높은 순</div></a>
                    <a href=""><div class="sortButton">금액 낮은 순</div></a>
                </div>
                <div class="projectSortRightBox">
                    <a href=""><div class="sortButton">최신 등록 순</div></a>
                    <a href=""><div class="sortButton">마감 임박 순</div></a>
                </div>
            </div>

            <!-- 카테고리 분류 테이블 -->
            <div class="projectCategory">
                    <div class="projectCategoryTitle">프로젝트 카테고리</div>
                </div>
            
        </aside>
        <!-- END of sidebar -->

        <!-- 프로젝트 찾기 목록 테이블 -->
        <div class="projectViewBoard">
            <section class="registeredProject">
                <div class="projectUnitHeader">
                    <h4 class="projectTitle"><a href="">웹기반 구매 및 자재 관리 시스템 개발</a></h4>
                </div>
                <div class="projectUnitBody">
                    <div class="projectBasicInfo">
                        <span>5,000,000원</span>
                        <span>예상기간 30일</span>
                        <span class="dateRecruitment">등록일자 2017.05.10</span>
                    </div>
                    <div class="projectUnitDescribe"><프로젝트 진행 방식> 시작시점에 미팅, 주 1회 미팅 등 <프로젝트의 현재 상황> 현재 프로젝트가 진행중이며, 화면 구성 및 일부 개발 상태입니다. (기획서는 준비되어 있지 않으나, 기존 시스템과 간략화된 화면 구성을 참고하여 작업이 가능합니다.) <상세한 업무 내용> 필요 요소 : 웹기반 구매 및 자재 관리 시스템 개발 기존에 있 ...</div>
                </div>
            </section>
            <section class="registeredProject">
                <div class="projectUnitHeader">
                    <h4 class="projectTitle"><a href="">웹기반 구매 및 자재 관리 시스템 개발</a></h4>
                </div>
                <div class="projectUnitBody">
                    <div class="projectBasicInfo">
                        <span>5,000,000원</span>
                        <span>예상기간 30일</span>
                        <span class="dateRecruitment">등록일자 2017.05.10</span>
                    </div>
                    <div class="projectUnitDescribe"><프로젝트 진행 방식> 시작시점에 미팅, 주 1회 미팅 등 <프로젝트의 현재 상황> 현재 프로젝트가 진행중이며, 화면 구성 및 일부 개발 상태입니다. (기획서는 준비되어 있지 않으나, 기존 시스템과 간략화된 화면 구성을 참고하여 작업이 가능합니다.) <상세한 업무 내용> 필요 요소 : 웹기반 구매 및 자재 관리 시스템 개발 기존에 있 ...</div>
                </div>
            </section>
            <section class="registeredProject">
                <div class="projectUnitHeader">
                    <h4 class="projectTitle"><a href="">웹기반 구매 및 자재 관리 시스템 개발</a></h4>
                </div>
                <div class="projectUnitBody">
                    <div class="projectBasicInfo">
                        <span>5,000,000원</span>
                        <span>예상기간 30일</span>
                        <span class="dateRecruitment">등록일자 2017.05.10</span>
                    </div>
                    <div class="projectUnitDescribe"><프로젝트 진행 방식> 시작시점에 미팅, 주 1회 미팅 등 <프로젝트의 현재 상황> 현재 프로젝트가 진행중이며, 화면 구성 및 일부 개발 상태입니다. (기획서는 준비되어 있지 않으나, 기존 시스템과 간략화된 화면 구성을 참고하여 작업이 가능합니다.) <상세한 업무 내용> 필요 요소 : 웹기반 구매 및 자재 관리 시스템 개발 기존에 있 ...</div>
                </div>
            </section>
        </div>
        <!-- projectViewBoard -->
        </div>
        <!-- END OF searchProjectTable -->
	</div>
	<!-- END OF searchProjectWrap -->
	
<!-- footer  -->
	<%@ include file="footer.jsp" %>
</body>
</html>