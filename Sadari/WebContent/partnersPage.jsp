<%@ page contentType="text/html; charset="UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SADARI  |  나의 사다리</title>
    
    <!-- 스타일시트 추가 -->
    <link rel="stylesheet" href="./css/partnerPage.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 스크립트 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>

<body class="sub_body">
<div class="wrap">

<!-- header -->
<%@ include file="header.jsp" %>

<!-- 나의 프로젝트 대시보드 -->
 <div class="page">
     <div class="content">
        <div class="contentInner">
          <div class="newsCenter">
            <p><h4>뉴스센터</h4></p>
            <div class="newsCenterTable">
                <ul class="newsList">
                    <li class="newsListSet" id="1"><p class="newsTitle"><a href="">성공적인 외주 진행을 도와주는 위시켓의 '검수'과정을 소개합니다!</a><span class="newsDate">2017.05.02</span></p></li>
                    <li class="newsListSet" id="2"><p class="newsTitle"><a href="">[PG서비스] 나이스페이를 위시켓에서 ‘업계 최저 수수료’로 만나보세요!</a><span class="newsDate">2017.04.21</span></p></li>
                    <li class="newsListSet" id="3"><p class="newsTitle"><a href="">향후 5년간 일하는 방식을 변화시킬 트렌드 4가지</a><span class="newsDate">2017.03.22</span></p></li>
                    <p class="more"><a href="">더 자세히 보기 ></a></p>
                </ul>
            </div>
        <!-- END OF newsCenterTable -->
        </div>
        <!-- END OF newsCenter -->
        </div>
        <!-- END OF contentInner -->
        
        <div class="contentBundle">
            <div class="contentInterestProject">
                <a href=""><h4 class="subTitle">관심 프로젝트</h4></a>
                <table class="table table-striped">
                    <thead>
                        <th>프로젝트 제목</th>
                        <th>예상금액</th>
                        <th>예상기간</th>
                        <th>마감일자</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>11</td>
                            <td>22</td>
                            <td>33</td>
                            <td>44</td>
                        </tr>
                    </tbody>
                </table>
                <p class="more"><a href="">더 자세히 보기 ></a></p>
            </div>
            <div class="contentApplyProject">
                <a href=""><h4 class="subTitle">지원한 프로젝트</h4></a>
                <table class="table table-striped">
                    <thead>
                        <th>프로젝트 제목</th>
                        <th>지원비용</th>
                        <th>기간</th>
                        <th>제출일자</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>11</td>
                            <td>22</td>
                            <td>33</td>
                            <td>44</td>
                        </tr>
                    </tbody>
                </table>
                <p class="more"><a href="">더 자세히 보기 ></a></p>
            </div>
            <div class="contentProjectProcess">
                <a href=""><h4 class="subTitle">진행 중인 프로젝트</h4></a>
                <table class="table table-striped">
                    <thead>
                        <th>프로젝트 제목</th>
                        <th>클라이언트</th>
                        <th>비용</th>
                        <th>남은기간/기간</th>
                        <th>상태</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>11</td>
                            <td>22</td>
                            <td>33</td>
                            <td>44</td>
                            <td>55</td>
                        </tr>
                    </tbody>
                </table>
                <p class="more"><a href="">더 자세히 보기 ></a></p>
            </div>
        </div>
    <!-- END OF contentBundle -->
     </div>
    <!-- END OF content -->

<!-- 사이드 메뉴 -->
     <aside class="sidebar">
        <div>
            <div class="partners"><h4 class="sideTitle">파트너스 정보</h4>
            <div class="myInfoBlock"></div>
            <div class="userFace">
                이미지
            </div>
            <div class="userInfo"></div>
                <div class="userId">jylid89</div>
                <a href=""><h5 class="userInfoModify">기본 정보 수정</h5></a>
            </div>
            <div class="history"><h4 class="sideTitle">나의 히스토리</h4>
                <ul class="historyList">
                    <li><p class="userApplyProject">지원한 프로젝트<span class="countProject">0 <span>&nbsp;건</span></span></p></li>
                    <li><p class="userConfirmProject">계약한 프로젝트<span class="countProject">0 <span>&nbsp;건</span></span></p></li>
                    <li><p class="userCompleteProject">완료한 프로젝트<span class="countProject">0 <span>&nbsp;건</span></span></p></li>
                    <li><p class="userTotalProject">누적 완료 금액<span class="countProject">0 <span>&nbsp;건</span></span></p></li>
                </ul>
            </div>
            <div class="myNews"><h4 class="sideTitle">새로운 소식</h4></div>
        </div>
    </aside>
 </div>
 <!-- END OF page -->
</div>
<!-- END OF wrap -->

<!-- footer  -->
<%@ include file="footer.jsp" %>

</body>
</html>