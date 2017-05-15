<%@ page contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SADARI  |  프로젝트 등록</title>
    
    <!-- 스타일시트 추가 -->
    <link rel="stylesheet" href="./css/partnerlist.css">
    <link rel="stylesheet" href="./css/partnerliststyle.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 스크립트 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
</head>
    <body class="sub_body">
    <!-- 	header -->
		<%@ include file="header.jsp" %> 
		<!-- end of header -->
 
<!-- 메인 내용 -->
	<section class="">
	
	 <div class="page">
	     <div class="content">
	        <div class="contentInner">
	          <div class="newsCenter">
	           <h4>파트너스 목록</h4>
	            <div class="newsCenterTable">
	                
	                <div class="form-group">
				      <label class="control-label col-sm-2" for="email"></label>
				      <div class="col-sm-10">
				          <input type="text" value="개발자 ID" disabled>
				          <input type="text" >
				          <button type="button" class="btn btn-primary">검색</button>
				      </div>
				    </div>
	              
	   				 
	             
	            </div>
	        <!-- END OF newsCenterTable -->
	        </div>
	        <!-- END OF newsCenter -->
	        </div>
	        <!-- END OF contentInner -->
	        
	        <div class="contentBundle">
	        
	            <div class="contentImg">
	            	  <img src="./img/suzy.png" class="img-circle" width="131" height="131"> 
	            </div>
	            
	            <div class="contentA">
	            	<a href="">사용자아이디</a>&nbsp;&nbsp;<button type="button" >활동여부</button><br>
	            	<a href="">개발자</a>&nbsp;&nbsp;<button type="button" >개인/법인사업자</button><br>
		  			<form>
					   <div class="form-group">
						  <label for="comment">자기소개:</label>
						  <textarea class="form-control" cols="5"rows="2" id="comment" readonly>자기소개 내용 입력공간</textarea>
					   </div>
					</form>
					<div>
						<button type="button" >보유기술1</button>
						<button type="button" >보유기술2</button>
						<button type="button" >보유기술3</button>
						<button type="button" >보유기술4</button>
						<button type="button" >보유기술5</button>
					</div>		
	            </div>
	            
	            <div class="contentB">
	               <ul class="newList">
	          			 <li class="newsListSet" id="1"><p class="newsTitle"><a href=""> ★★★★☆ / 평가 4개</a></p></li>
	                	 <li class="newsListSet" id="2"><p class="newsTitle"><a href="">계약한프로젝트 xx건</a></p></li>
	                 	 <li class="newsListSet" id="3"><p class="newsTitle"><a href="">포트폴리오 oo건</a></p></li>
	                </ul>
	            </div>
	        </div>
	    <!-- END OF contentBundle -->
	    
	     </div>
	    <!-- END OF content -->
	s
	 </div>
	 
	 </section>

</body>
<!-- footer  -->
<%@ include file="footer.jsp" %>
</body>
</html>