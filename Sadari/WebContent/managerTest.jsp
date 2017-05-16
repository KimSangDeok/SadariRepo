<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, SadariModel.*"%>

<%
	//검수할 프로젝트
	List<HashMap> pList = (List<HashMap>)request.getAttribute("pList");

	//검수 완료 프로젝트
	List<HashMap> sList = (List<HashMap>)request.getAttribute("sList");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SADARI | 관리자 검수 페이지</title>

<!-- 스타일시트 추가 -->
<link rel="stylesheet" href="./css/managerView.css">
<link rel="stylesheet" href="./css/style.css">

<!-- 스크립트 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<script type="text/javascript">

function projInfo(pjNo){
	
	$(location).attr('href','pjInfo.sdrad?cmd=pj-info&pjNo='+pjNo);
}
$(document).ready(function(){
	
	
});
</script>
<body class="sub_body">

	<div class="wrap">
		<!-- 	header -->
		<jsp:include page="header.jsp" />

		<!-- 게시판 -->
		<div class="page">
			<div class="content">
				<div class="panel panel-danger">
					<div class="panel-heading">검수 할 프로젝트</div>
					<div class="panel-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>클라이언트</th>
									<th>프로젝트명</th>
									<th>프로젝트 시작일자</th>
								</tr>
							</thead>
							<tbody>
								<% for (HashMap map : pList) { %>

								<tr onclick="javascript:projInfo('<%=map.get("PJ_NO")%>')">
									<td><%=map.get("CT_NAME")%></td>
									<td><%=map.get("PJ_TITLE")%></td>
									<td><%=map.get("PJ_ST_DT")%></td>
									
								</tr>

								<% } %>
							</tbody>
						</table>
					</div>
				</div>

				<div class="panel panel-danger">
					<div class="panel-heading">검수 완료된 프로젝트</div>
					<div class="panel-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>클라이언트</th>
									<th>프로젝트명</th>
									<th>프로젝트 시작일자</th>
									<th>검수결과</th>
								</tr>
							</thead>
							<tbody>
								<% for(HashMap map : sList){ %>
								<tr>
									<td><%= map.get("CT_NAME") %></td>
									<td><%= map.get("PJ_TITLE") %></td>
									<td><%= map.get("PJ_ST_DT") %></td>
									<td>
										<% if(map.get("PJ_SAVECHECK").equals("2")){ %>
											적합 
										<%}else if(map.get("PJ_SAVECHECK").equals("3")){ %>
											부적합
										<% }%>
									</td>
								</tr>
								<%} %>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- END OF content -->

			<!-- 사이드 메뉴 -->
			<aside class="sidebar" style="margin: 70px">
				<div>
					<h2>관리자</h2>
					<div class="list-group">
						<a href="sadari.sdrad?cmd=" class="list-group-item active"
							style="text-align: center; font-size: 25px">검수</a> <a
							href="sadari.sdrad?cmd=payment" class="list-group-item"
							style="text-align: center; font-size: 25px">결제</a> <a href="#"
							class="list-group-item"
							style="text-align: center; font-size: 25px">지급</a>
					</div>
				</div>
			</aside>
		</div>
		<!-- END OF page -->
	</div>
	<!-- END OF wrap -->

</body>
<!-- footer  -->
<%@ include file="footer.jsp"%>
</body>
</html>