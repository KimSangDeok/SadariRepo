<%@ page contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SADARI  |  프로젝트 등록</title>
    
    <!-- 스타일시트 추가 -->
    <link rel="stylesheet" href="./css/projectinsertview.css">
    <link rel="stylesheet" href="./css/projectinsertviewstyle.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 스크립트 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
 
    
//   숫자 천단위 콤마 찍기.
//     $(function() {
//     	  var $input = $("#projectCost");
//     	  $input.on('blur', function() {
//     	    // 입력 값 알아내기
//     	    var _$self = $(this);
//     	    var value = _$self.val();

//     	    // 원단위로 변경하기
//     	    var result = AddComma(value);

//     	    _$self.val(result);
//     	  })

//     });

//     	 function AddComma(dataValue) {
//     	  isNumber(dataValue);
//     	  var separateValue = Number(dataValue).toLocaleString('en');
//     	  if (separateValue == 'NaN') {
//     	    return '';
//     	  }
//     	  return separateValue;
//     	 }

//     	 function isNumber(checkValue) {
//     	    checkValue = '' + checkValue;
//     	    if (isNaN(checkValue) || checkValue == "") {
//     	      alert('숫자만 입력해 주세요!!!');
//     	      return;
//     	    }
//     	}
    
    
    
// 파일 업로드
    
        $(function(){  
        	 
        	 
               $('#btn-upload').click(function(e){
                   e.preventDefault();             
                   $("input:file").click();               
                   var ext = $("input:file").val().split(".").pop().toLowerCase();
                   if(ext.length > 0){
                        if($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) { 
                            alert("gif,png,jpg 파일만 업로드 할수 있습니다.");
                            return false;  
                        }                  
                   }
                    $("input:file").val().toLowerCase();
                });                         
        });               


// 위치 셀렉트 박스 기능 

        function doChange(srcE, targetId){
         var val = srcE.options[srcE.selectedIndex].value;
         var targetE = document.getElementById(targetId);
            
         removeAll(targetE);
 
         if(val == 'seoul'){
            addOption('강남구', targetE);
            addOption('강독구', targetE);
            addOption('강북구', targetE);
            addOption('강서구', targetE);
            addOption('관악구', targetE);
            addOption('광진구', targetE);
            addOption('구로구', targetE);
            addOption('금천구', targetE);
            addOption('노원구', targetE);
            addOption('도봉구', targetE);
            addOption('동대문구', targetE);
            addOption('동작구', targetE);
            addOption('마포구', targetE);
            addOption('서대문구', targetE);
            addOption('서초구', targetE);
            addOption('성동구', targetE);
            addOption('성북구', targetE);
            addOption('송파구', targetE);
            addOption('양천구', targetE);
            addOption('영등포구', targetE);
            addOption('용산구', targetE);
            addOption('은평구', targetE);
            addOption('종로구', targetE);
            addOption('중구', targetE);
            addOption('중랑구', targetE); 
           }

            else if(val == 'busan'){
            addOption('동구', targetE);
            addOption('영동구', targetE);
            addOption('부산진구', targetE);
            addOption('동래구', targetE);
            addOption('서구', targetE);
            addOption('남구', targetE);
            addOption('북구', targetE);
            addOption('해운대구', targetE);
            addOption('금정구', targetE);
            addOption('강서구', targetE);
            addOption('연제구', targetE);
            addOption('수영구', targetE);
            addOption('사상구', targetE);
            addOption('기장군', targetE);
            addOption('중구', targetE);
            addOption('사하구', targetE);
            }

            else if(val == 'daegu'){
               addOption('중구', targetE);
                addOption('동구', targetE);
                addOption('서구', targetE);
                addOption('남구', targetE);
                addOption('북구', targetE);
                addOption('수성구', targetE);
                addOption('달서구', targetE);
                addOption('달성군', targetE);
               
            }
            else if(val == 'incheon'){
                addOption('중구', targetE);                 addOption('동구', targetE);                 addOption('남구', targetE);
                 addOption('연수구', targetE);                 addOption('남동구', targetE);                 addOption('부평구', targetE);
                 addOption('계양구', targetE);                 addOption('서구', targetE);
             }
         

            else if(val == 'gzn'){
                addOption('동구', targetE);                 addOption('서구', targetE);                 addOption('남구', targetE);
                 addOption('북구', targetE);                 addOption('광산구', targetE);
             }
         
            else if(val == 'daezn'){
                addOption('동구', targetE);                 addOption('중구', targetE);                 addOption('서구', targetE);
                addOption('유성구', targetE);                 addOption('대덕구', targetE);
            }
         
            else if(val == 'woolsan'){
                addOption('중구', targetE);                addOption('남구', targetE);                addOption('동구', targetE);
                addOption('북구', targetE);                addOption('울주군', targetE);
            }
            else if(val == 'saejong'){
           	 addOption('조치원읍', targetE);                 addOption('연기면', targetE);                 addOption('연동면', targetE);
                addOption('부강면', targetE);                 addOption('금남면', targetE);                 addOption('장군면', targetE);                 addOption('연서면', targetE);
                addOption('전의면', targetE);                 addOption('전동면', targetE);                 addOption('소정면', targetE);
                addOption('한솔동', targetE);                 addOption('도담동', targetE);                 addOption('아름동', targetE);
                addOption('종촌동', targetE);                 addOption('고운동', targetE);                 addOption('보람동', targetE);
           }
         
            else if(val == 'ggdo'){
                addOption('장안구', targetE);                addOption('권선구', targetE);                addOption('팔달구', targetE);
                addOption('영통구', targetE);                addOption('수정구', targetE);                addOption('중원구', targetE);
                addOption('분당구', targetE);                addOption('만안구', targetE);                addOption('동안구', targetE);
                addOption('상록구', targetE);                addOption('단원구', targetE);                addOption('처인구', targetE);
                addOption('기흥구', targetE);                addOption('수지구', targetE);                addOption('광명시', targetE);
                addOption('평택시', targetE);                addOption('과천시', targetE);                addOption('오산시', targetE);
                addOption('시흥시', targetE);                addOption('군포시', targetE);                addOption('의왕시', targetE);
                addOption('하남시', targetE);                addOption('이천시', targetE);                addOption('안성시', targetE);
                addOption('김포시', targetE);                addOption('화성시', targetE);                addOption('광주시', targetE);
                addOption('여주시', targetE);                addOption('부천시', targetE);                addOption('양평군', targetE);
                addOption('고양시', targetE);                addOption('일산동구', targetE);                addOption('일산서구', targetE);
                addOption('의정부시', targetE);                addOption('동두천시', targetE);                addOption('구리시', targetE);
                addOption('남양주시', targetE);                addOption('파주시', targetE);                addOption('양주시', targetE);
                addOption('포천시', targetE);                addOption('연천군', targetE);                addOption('가평군', targetE);
            }
         
            else if(val == 'gangwondo'){
                addOption('춘천시', targetE);                addOption('원주시', targetE);                addOption('강릉시', targetE);
                addOption('동해시', targetE);                addOption('태백시', targetE);                addOption('속초시', targetE);
                addOption('삼척시', targetE);                addOption('홍천군', targetE);                addOption('횡성군', targetE);
                addOption('영월군', targetE);                addOption('평창군', targetE);                addOption('정선군', targetE);
                addOption('철원군', targetE);                addOption('화천군', targetE);                addOption('양구군', targetE);
                addOption('인제군', targetE);                addOption('고성군', targetE);                addOption('양양군', targetE);
            }
         
            else if(val == 'ccnort'){
                addOption('상당구', targetE);                addOption('서원구', targetE);                addOption('흥덕구', targetE);
                addOption('청원구', targetE);                addOption('충주시', targetE);                addOption('제천시', targetE);
                addOption('보은군', targetE);                addOption('옥천군', targetE);                addOption('영동군', targetE);
                addOption('진천군', targetE);                addOption('괴산군', targetE);                addOption('음성군', targetE);
                addOption('단양군', targetE);                addOption('증평군', targetE);
                }
         
            else if(val == 'ccsouth'){
                addOption('동남구', targetE);                addOption('서북구', targetE);                addOption('공주시', targetE);
                addOption('보령시', targetE);                addOption('아산시', targetE);                addOption('서산시', targetE);
                addOption('논산시', targetE);                addOption('계롱시', targetE);                addOption('당진시', targetE);
                addOption('금산군', targetE);                addOption('부여군', targetE);                addOption('서천군', targetE);
                addOption('청양군', targetE);                addOption('홍성군', targetE);                addOption('예산군', targetE);
                addOption('태안군', targetE);
                }
            else if(val == 'zrnorth'){
                addOption('완산구', targetE);                addOption('덕진구', targetE);                addOption('군산시', targetE);
                addOption('익산시', targetE);                addOption('정읍시', targetE);                addOption('남원시', targetE);
                addOption('김제시', targetE);                addOption('완주군', targetE);                addOption('진안군', targetE);
                addOption('무주군', targetE);                addOption('장수군', targetE);                addOption('임실군', targetE);
                addOption('순창군', targetE);                addOption('고창군', targetE);                addOption('부안군', targetE);
            }
         
            else if(val == 'zrsouth'){
                addOption('목포시', targetE);                addOption('여수시', targetE);                addOption('순천시', targetE);
                addOption('나주시', targetE);                addOption('광양시', targetE);                addOption('담양군', targetE);
                addOption('곡성군', targetE);                addOption('구례군', targetE);                addOption('고흥군', targetE);
                addOption('보성군', targetE);                addOption('화순군', targetE);                addOption('장흥군', targetE);
                addOption('강진군', targetE);                addOption('해남군', targetE);                addOption('영암군', targetE);
                addOption('무안군', targetE);                addOption('함평군', targetE);                addOption('영광군', targetE);
                addOption('장성군', targetE);                addOption('완도군', targetE);                addOption('진도군', targetE);
                addOption('신안군', targetE);
            }
         
            else if(val == 'ksnorth'){
                addOption('포항시 남구', targetE);                addOption('포항시 북구', targetE);                addOption('경주시', targetE);
                addOption('김천시', targetE);                addOption('안동시', targetE);                addOption('구미시', targetE);
                addOption('영주시', targetE);                addOption('영천시', targetE);                addOption('상주시', targetE);                
                addOption('문경시', targetE);                addOption('경산시', targetE);                addOption('군위군', targetE);                addOption('의성군', targetE);
                addOption('청송군', targetE);                addOption('영양군', targetE);                addOption('영덕군', targetE);
                addOption('청도군', targetE);                addOption('고령군', targetE);                addOption('성주군', targetE);
                addOption('칠곡군', targetE);                addOption('예천군', targetE);                addOption('봉화군', targetE);
                addOption('울진군', targetE);                addOption('울릉군', targetE);
            }
         
            else if(val == 'kssouth'){
                addOption('의창구', targetE);                addOption('성산구', targetE);                addOption('마산합포구', targetE);
                addOption('마산회원구', targetE);                addOption('진해구', targetE);                addOption('진주시', targetE);
                addOption('통영시', targetE);                addOption('사천시', targetE);                addOption('김해시', targetE);
                addOption('밀양시', targetE);                addOption('거제시', targetE);                addOption('양산시', targetE);
                addOption('의령군', targetE);                addOption('함안군', targetE);                addOption('창녕군', targetE);
                addOption('고성군', targetE);                addOption('남해군', targetE);                addOption('하동군', targetE);
                addOption('신청군', targetE);                addOption('함양군', targetE);                addOption('거창군', targetE);
                addOption('합천군', targetE);
            }
         
            else if(val == 'jeju'){
                addOption('제주시', targetE);                addOption('서귀포시', targetE);
            }
         
            else if(val == 'abroad'){
                addOption('동아시아', targetE);                addOption('동남아시아', targetE);                addOption('남아시아', targetE);
                addOption('중앙아시아', targetE);                addOption('서아시아', targetE);                addOption('동아프리카', targetE);
                addOption('중앙아프리카', targetE);                addOption('서아프리카', targetE);                addOption('북아프리카', targetE);
                addOption('남아프리카', targetE);                addOption('남유럽', targetE);                addOption('북유럽', targetE);
                addOption('동유럽', targetE);                addOption('서유럽', targetE);                addOption('북아메리카', targetE);
                addOption('중앙아메리카', targetE);                addOption('남아메리카', targetE);                addOption('오세아니아', targetE);
            }
         
        }



            function addOption(value, e){
                var o = new Option(value);
                try{
                    e.add(o);
                }catch(ee){
                    e.add(o, null);
                }
            }

            function removeAll(e){
                for(var i = 0, limit = e.options.length; i < limit - 1; ++i){
                    e.remove(1);
                }
            }
            </script>
            
    </head>

    <body class="sub_body">
   
<!-- header -->
<jsp:include page="header.jsp"/>   
 
    <!-- 메인 내용 -->
<section class="be_registered_project">

<div class="container">
 <!-- <h2>Horizontal form</h2> -->
  <form class="form-horizontal" action="ssss.sadari" method='get'>
   <input type='hidden' name='cmd' value='pj-save'/>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">카테고리</label>
      <div class="col-sm-10">
          <select name="job" class="form-control" >
   			 <option value="개발">개발</option>
          </select>
      </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2" for="email">    </label>
      <div class="col-sm-10">
          <select id="subjob" name="subjob" class="form-control" >
   			 <option value="웹"> 웹 </option>
   			 <option value="어플리케이션"> 어플리케이션 </option>
             <option value="워드프레스"> 워드프레스 </option>
             <option value="퍼블리싱"> 퍼블리싱 </option>
             <option value="일반 소프트웨어"> 일반 소프트웨어 </option>
             <option value="커머스(쇼핑몰)"> 커머스(쇼핑몰) </option>
             <option value="게임"> 게임 </option>
             <option value="임베디드"> 임베디드 </option>
             <option value="기타 "> 기타 </option>
		</select>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >프로젝트 제목</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="projectTitle" name="projectTitle" placeholder="프로젝트 제목을 입력해주세요." style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >예상 시작일</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="foreStart" name="foreStart" placeholder="ex) 2017/05/01 형식으로 입력해주세요." style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >예상 기간</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="projectGigan" name="projectGigan" placeholder="ex) 20일 / 3개월 / 2년 " style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">지출가능예산</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="projectCost" name="projectCost" placeholder="ex) 1만원 -> 10000 형식으로 입력" style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">기획상태</label>
      <div class="col-sm-10">          
        <ul>
             <li>
                <label for="r2_1"><img src="img/img1-2.PNG"><br/><input type="radio" id="r2_1" name="r2" value="기획1"><br>아이디어만 있습니다.</label>
             </li>
             <li>
                <label for="r2_2"><img src="img/img2-2.PNG"><br/><input type="radio" id="r2_2" name="r2" value="기획2"><br>상세한 기획 문서가 존재합니다.</label>
             </li>
             <li>
                <label for="r2_3"><img src="img/img3-2.PNG"><br/><input type="radio" id="r2_3" name="r2" value="기획3"><br>필요한 내용을 정리해두었습니다.</label>
             </li>
        </ul>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >프로젝트 내용</label>
      <div class="col-sm-10">       
<!--      	 <input type="text" class="form-control" id="comtest" name="comtest" placeholder="프로젝트 내용을 입력해주세요."  style="text-align:center; width:940px; height:500px">  -->
     	 <textarea class="form-control" name="comtest" rows="10" cols="60" placeholder="프로젝트 내용 입력." ></textarea>  
<!--        <textarea class="form-control" rows="10" cols="60" id="comment" name="comtest"  placeholder="프로젝트 내용을 입력해주세요."></textarea> -->
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >관련기술</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="skill" name="skill" placeholder="please input skills" style="text-align:center">
        <span class="help_block">
          "다수의 관련 기술을 입력 할 때에는 쉼표(,)로 구분해 주세요.(최대 5개)"
          <br>
          "ex) Java, Javascript, HTML, Python, Android
        </span>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">기획관련 파일</label>
      <div class="col-sm-10">      
        <input type="file" id="file" name="file"/>  
        <button id="btn-upload" class="button1 white selected" onfocus="this.blur();" style="width:945px;height:40px">+</button>
      
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">모집마감일자</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="deadline" name="deadline" placeholder="ex) 201/07/07 " style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2">사전미팅</label>
      <div class="col-sm-10">          
        <select id="meeting" name="meeting" class="form-control">
   			 <option value="온라인"> 온라인 미팅 </option>
   			 <option value="오프라인"> 오프라인 미팅 </option>
		</select>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" >클라이언트위치</label>
      <div class="col-sm-10">
          <select name="selOne" id="selOne" onchange="doChange(this, 'selTwo')">

            <option value="default">시,도</option>
            <option value="seoul">서울특별시</option>
            <option value="busan">부산광역시</option>
            <option value="daegu">대구광역시</option>
            <option value="incheon">인천광역시</option>
            <option value="gzn">광주광역시</option>
            <option value="daezn">대전광역시</option>
            <option value="woolsan">울산광역시</option>
            <option value="saejong">세종특별자치시</option>
            <option value="ggdo">경기도</option>
            <option value="gangwondo">강원도</option>
            <option value="ccnorth">충청북도</option>
            <option value="ccsouth">충청남도</option>
            <option value="zrnorth">전라북도</option>
            <option value="zrsouth">전란마도</option>
            <option value="ksnorth">경상북도</option>
            <option value="kssouth">경상남도</option>
            <option value="jeju">제주특별자치도</option>
            <option value="abroad">해외</option>
          </select>

          <select name="selTwo" id="selTwo">
          	<option value="default">시, 군, 구</option>
          </select>
      </div>
    </div>
    
    
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" id="saveBtn">저장</button>
      </div>
    </div>
    
  </form>
</div>

    </section>

<!-- footer  -->
	<%@ include file ="footer.jsp" %>

</body>
</html>