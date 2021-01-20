<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 페이지</title>
<!-- navi css 경로 -->
<link href="<%= request.getContextPath() %>/views/common/nav_foot.css"
	rel="stylesheet" type="text/css">
 <style>
         /* 첫번째 섹션(하우스이미지, 이름, 정보 테이블 표시) */
       .section1{
           border : 1px solid black;
           width : 100%;
           height : 500px;
       }
       /* 하우스이미지 섹션 */
       .houseimagesection{
           border : 1px solid black;
           width : 42%;
           height : 450px;
           margin-top: 20px;
           margin-left: 20px;
           float:left;
       }
       /* 하우스 이미지 */
       .houseimage{
           width :100%;
           height : 450px;
       }
       /* 하우스 이름 및 테이블 섹션 */
       .tablesection{
           border : 1px solid black;
           width : 50%;
           height : 450px; 
           float: right;
           margin-top: 20px;
           margin-left: 20px;
           text-align: center;
       }
       /* 하우스 테이블 */
       .houseinfotable{
           border: 1px solid black;
           width: 70%;
           height: 60%;
           margin-top : 80px;
           margin-left : 150px;
           

       }
       /* 2번,3번, 부가설명 텍스트 */
       .explanation {
           color : gray;
       }

       /* 1번 방 선택 테이블 */
       .reservationroomtable{
        width : 60%;
        text-align: center;
       
       }

       /* 2번문항 라디오버튼 */
       #oneyear{
           margin-left: 100px;
       }
       /* 신청하기버튼 */
       #appBtn{
           margin-left: 42%;
           background-color: black;
           color:white;
           width : 15%;
           height: 35%;
       }
    
    </style>
  
</head>
<body>
<!--  페이지를 이동해도 navi는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/navi.jsp"%>
	<br><br><br>
 <!-- 첫번째 섹션(하우스이미지, 이름, 정보 테이블 표시) -->
   <div class="section1">
       <!-- 하우스이미지 섹션 -->
    <div class="houseimagesection">
        <img src="img/main_rm.png" class="houseimage" alt="이미지영역">
    </div>
        <!-- 하우스 이름 테이블섹션 -->
    <div class="tablesection">
        <h1 class="housename">하우스이름</h1>
        <table class="houseinfotable" border="1">
            <tr>
                <th bgcolor="black" style="color: white;">주소</th>
                <td>서울시 강남구</td>
                <th bgcolor="black" style="color: white;">성별</th>
                <td>남녀공용</td>
            </tr>
            <tr>
                <th bgcolor="black" style="color: white;">입주가능일</th>
                <td>2020-1-20</td>
                <th bgcolor="black" style="color: white;">최대거주</th>
                <td>3명</td>
            </tr>
            <tr>
                <th bgcolor="black" style="color: white;">주거유형</th>
                <td>단독주택</td>
                <th bgcolor="black" style="color: white;">구조</th>
                <td>단층</td>
            </tr>
        </table>
    </div>
   </div>
   <br><br><br>

   <!-- 예약 폼 -->
   <div id="reservationFormArea">
    <form class="reservationForm">
        <h2>1.원하시는 방을 선택해주세요.(중복선택가능)</h2>
        <table class="reservationroomtable" >
            <tr bgcolor="black" style="color:white">
                <th>#</th>
                <th>이름</th>
                <th>성별</th>
                <th>타입</th>
                <th>면적</th>
                <th>보증금</th>
                <th>월세</th>
                <th>입주가능일</th>
                <th>선택</th>
            </tr>
            <tr>
                <td>1</td>
                <td>room A</td>
                <td>여성전용</td>
                <td>1인실</td>
                <td>8.5</td>
                <td>160만원</td>
                <td>40만원</td>
                <td>2020-1-20</td>
                <td><input type="checkbox" id="cha" name="chroom" value="a선택"></td>
            </tr>
            <tr>
                <td>2</td>
                <td>room B</td>
                <td>여성전용</td>
                <td>1인실</td>
                <td>8.5</td>
                <td>160만원</td>
                <td>40만원</td>
                <td>2020-1-20</td>
                <td><input type="checkbox" id="chb" name="chroom" value="b선택"></td>
            </tr>
            <tr>
                <td>3</td>
                <td>room C</td>
                <td>남성전용</td>
                <td>1인실</td>
                <td>8.5</td>
                <td>160만원</td>
                <td>40만원</td>
                <td>2020-1-20</td>
                <td><input type="checkbox" id="chc" name="chroom" value="c선택"></td>
            </tr>
        </table>
        <br><br><br><br><br><br>

        <h2>2.희망하는 거주기간을 선택해주세요.</h2>
        <p class="explanation">ShareHere은 6개월 계약을 기본으로 합니다.<br>
        거주기간 선택시 참고해 주세요.
        </p>
        <input type="radio" id="sixmonth" name="period" value="6개월">
        <label for="sixmonth">6개월</label>
        <input type="radio" id="oneyear" name="period" value="1년">
        <label for="oneyear">1년</label>
        <br><br><br><br><br><br>

        <h2>3.예약하실 날짜를 선택해주세요.</h2>
        <p class="explanation">예약일이 빠를수록 입주에 유리합니다.<br>
        매물에 등록된 입주가능일 30일전부터 예약이 가능합니다.</p>
        <input type="text" placeholder="날짜를 선택하세요 (ex.2020-1-20)" size="25" readonly><br><br><br>
        <input type="date" name="rvdate">
        <br><br><br> <br><br><br>

        
            <button id="appBtn" type="button">신청하기</button>	  
    </form>
   </div>
   <!--  페이지를 이동해도 footer는 계속 하단에 노출되게끔 -->
	<%@include file="/views/common/footer.jsp"%>
</body>
</html>