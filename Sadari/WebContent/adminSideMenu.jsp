<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 스타일시트 추가 -->
<link rel="stylesheet" href="./css/managerView.css">
<link rel="stylesheet" href="./css/style.css">

<!-- 스크립트 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript">

var left = 
{
	pageSubmitFn : function(pageName,formName) {
		
// 		alert(pageName);
		$("#pageName").val(pageName);
		$("#cmd").val(pageName);
		
		$("#"+formName).attr("action", pageName+".sdrad");
		$("#"+formName).submit();
	}
}

$(document).ready(function(){	

	var pageName = "<%=request.getAttribute("pageName")%>";
	
	$(".list-group-item").removeClass("active");
	
	$("#"+pageName).addClass("active");
	
});
</script>
<form id="frm" name="frm">
	<input type="hidden" id="cmd"  name="cmd" />
	<input type="hidden" id="pageName"  name="pageName" />
</form>
</head>
<body>
<!-- 사이드 메뉴 -->
			<aside class="sidebar" style="margin: 70px">
				<div>
					<h2>관리자</h2>
					<div id="sidebarDiv" class="list-group">
						<a id="ad-mypage" href="#" onclick="javascript:left.pageSubmitFn('ad-mypage','frm')" class="list-group-item" style="text-align: center; font-size: 25px">검수</a> 
						<a id="ad-pay" href="#" onclick="javascript:left.pageSubmitFn('ad-pay','frm')" class="list-group-item" style="text-align: center; font-size: 25px">결제</a> 
						<a id="ad-paygive" href="#" onclick="javascript:left.pageSubmitFn('ad-paygive','frm')" class="list-group-item" style="text-align: center; font-size: 25px">지급</a>
					</div>
				</div>
			</aside>
</body>
</html>