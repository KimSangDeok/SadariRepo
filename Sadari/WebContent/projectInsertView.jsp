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
    <header class="reg_project_header">
        <div class="menubar">
        <!-- 로고 버튼 -->
        <a href="#"><div class="menu_logo">SADARI</div></a>

    <!-- 대메뉴 -->
        <nav class="sub_menubar">
                <a class="sub_menu" href="">프로젝트 등록</a>
                <a class="sub_menu" href="">프로젝트 찾기</a>
                <a class="sub_menu" href="">파트너스 목록</a>
        </nav>
    </div>
 </header>
 
    <!-- 메인 내용 -->
<section class="be_registered_project">

<div class="container">
 <!-- <h2>Horizontal form</h2> -->
  <form class="form-horizontal">
  
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">카테고리</label>
      <div class="col-sm-10">
          <select name="job" class="form-control" >
   			 <option value="">개발</option>
          </select>
      </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2" for="email">    </label>
      <div class="col-sm-10">
          <select name="subjob" class="form-control" >
   			 <option value=""> 웹 </option>
   			 <option value=""> 어플리케이션 </option>
             <option value=""> 워드프레스 </option>
             <option value=""> 퍼블리싱 </option>
             <option value=""> 일반 소프트웨어 </option>
             <option value=""> 커머스(쇼핑몰) </option>
             <option value=""> 게임 </option>
             <option value=""> 임베디드 </option>
             <option value=""> 기타 </option>
		</select>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">프로젝트 제목</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="프로젝트 제목을 입력해주세요." style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">예상기간</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="ex) 2017-05-01 형식으로 입력해주세요." style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">지출가능예산</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="ex) 9백9십만원" style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">기획상태</label>
      <div class="col-sm-10">          
        <ul class="plan">
             <li>
                <label for="r2_1"><img src="./img/img1-2.png"><br/><input type="radio" id="r2_1" name="r2"><br>아이디어만 있습니다.</label>
            </li>
            <li>
                <label for="r2_2"><img src="./img/img2-2.png"><br/><input type="radio" id="r2_2" name="r2"><br>상세한 기획 문서가 존재합니다.</label>
           </li>
           <li>
                <label for="r2_3"><img src="./img/img3-2.png"><br/><input type="radio" id="r2_3" name="r2"><br>필요한 내용을 정리해두었습니다.</label>
            </li>
        </ul>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">프로젝트 내용</label>
      <div class="col-sm-10">          
       <textarea class="form-control" rows="10" cols="60" name="comment" form="usrform">Enter text here...</textarea>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">관련기술</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="please input skills" style="text-align:center">
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
        <input type="text" class="form-control" id="pwd" placeholder="ex) 2017-07-07 " style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">사전미팅</label>
      <div class="col-sm-10">          
        <select name="subjob" class="form-control">
   			 <option value=""> 온라인 미팅 </option>
   			 <option value=""> 오프라인 미팅 </option>
           
		</select>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">클라이언트위치</label>
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
      <label class="control-label col-sm-2" >프로젝트 예상 시작일</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="ex) 2017-05-01" style="text-align:center">
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
    
  </form>
</div>

    </section>

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
</footer>
</body>
</html>