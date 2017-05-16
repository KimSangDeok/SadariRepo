<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	HashMap map = (HashMap)request.getAttribute("client-introduction-data");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>SADIRI | CLIENT INFO LIST</title>
<link rel="stylesheet" href="./css/clientInfo.css">
<!-- <link rel="stylesheet" href="./css/style.css"> -->


</head>

<body class="sub_body">

	<!-- header -->
	<%@ include file="header.jsp"%>
	
	
<!-- 	배경 -->
	 <div class="wrap">
	 	<header class="reg_project_header">
		<div class="menubar">
			<!-- 로고 버튼 -->
			<a href="./main.jsp"><div class="menu_logo">SADARI</div></a>

			<!-- 대메뉴 -->
			<nav class="sub_menubar"> 
			<a class="sub_menu" href="./projectInsertView.jsp">프로젝트 등록</a> 
			<a class="sub_menu" href="./searchProject.jsp">프로젝트 찾기</a> 
			<a class="sub_menu" href="./partnerList.jsp">파트너스 목록</a> 
			<div class="signInId">userID<span class="badge">?</span></div>
			</nav>
		</div>
		</header>

	<!-- 사이드 메뉴 -->
	<aside class="sidebar">

	<div class="user-name-tag">
		<h3 class="user-name-tag-heading">클라이언트</h3>
		<div class="user-name-tag-body">
	
	
<!-- 	사진파일업로드		 -->
			<article>
			
  <p id="status" class="success"></p>
  <p><input type="file"></p> 
  <div id="holder"></div>
            </article>
            
			<h4 class="userid">클라이언트아이디 <%=map.get("CT_ID") %></h4>			
			                  
         <script>
var upload = document.getElementsByTagName('input')[0],
    holder = document.getElementById('holder'),
    state = document.getElementById('status');

if (typeof window.FileReader === 'undefined') {
  state.className = 'fail';
} else {
  state.className = 'success';
  state.innerHTML = '';
}
 
upload.onchange = function (e) {
  e.preventDefault();

  var file = upload.files[0],
      reader = new FileReader();
  reader.onload = function (event) {
    var img = new Image();
    img.src = event.target.result;
    // note: no onload required since we've got the dataurl...I think! :)
    if (img.width > 560) { // holder width
      img.width = 560;
    }
    holder.innerHTML = '';
    holder.appendChild(img);
  };
  reader.readAsDataURL(file);

  return true;
};
</script>

		</div>
	</div>

	
		<div class="user-name-tag">
			<ul class="sidebarbtn">
				<input type="submit" value="    클라이언트  정보    " class="active" ><a href="./clientInfo.jsp"></a></p>
				<input type="submit" value="  프로젝트 히스토리    " class="active"><a href="."></a></p>
			</ul>
		</div>
	</aside>
	<p>&nbsp;</p>
	
	
	

	<div class="menubar">
		<!-- 로고 버튼 -->
		<a href="./main.jsp"><div class="menu_logo">SADARI</div></a>

		<!-- 대메뉴 -->
		<nav class="sub_menubar"> <a class="sub_menu" href="./projectInsertView.jsp">프로젝트
			등록</a> <a class="sub_menu" href="./searchProject.jsp">프로젝트 찾기</a><a class="sub_menu"
			href="">파트너스 목록</a> </nav>
	</div>




	<div class="content-inner">
		<section class="information-title">
		<h3 class="header-text" style="margin-bottom: 30px">클라이언트 정보</h3>
		</section>

		<section class="client-info-view-box">
		<div class="client-introduction">
			<div class="client-introduction-label">
				<label class="control-label required" style="cursor: auto"><span>*</span>
					클라이언트 소개</label>
			</div>
			<div class="client-introduction-data">
				<p><%=map.get("CT_INTRODUCE") %></p>
			</div>
		</div>
		<div class="client-homepage">
			<div class="client-homepage-label">* 홈페이지</div>
			<br/>
			<a class="client-homepage-data" href="./main.jsp">homepage.sadari</a>
			
		</div>
		<br/>
		<a href="./registerClientInfo.jsp"><input type="submit" value="수정"></a> </section>
	</div>


</div>

	<!-- footer  -->
	<%@ include file="footer.jsp"%>
</body>
</html>
