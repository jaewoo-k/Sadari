<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 페이지</title>
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
       /* 두 번째 섹션 */

       /* 신고 아이콘 */
       #icon1 {
           width: 50px;
           position: relative;
           display: block;
           
       }
       /* 매물 신고 사유 selectoption */
       #reason {
           height:35px;
       }

       /* 신고내용 textarea */
       #reportcontent {
           width : 50%;
           height : 100px;
           resize: none;
       }
       
       /* 신고하기 버튼*/
       #report {
          background-color: black;
          color : white;
          margin-left: 50%;
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
     <h1 class="housename">커먼타운 센트럴 261</h1>
     <table class="houseinfotable" border="1">
         <tr>
             <th bgcolor="black" style="color: white;">주소</th>
             <td>서울 용산구 소월로2길 5 2~4층</td>
             <th bgcolor="black" style="color: white;">성별</th>
             <td>남녀공용</td>
         </tr>
         <tr>
             <th bgcolor="black" style="color: white;">입주가능일</th>
             <td>2020-12-25</td>
             <th bgcolor="black" style="color: white;">최대거주</th>
             <td>3명</td>
         </tr>
         <tr>
             <th bgcolor="black" style="color: white;">주택유형</th>
             <td>빌라</td>
             <th bgcolor="black" style="color: white;">구조</th>
             <td>복층</td>
         </tr>
     </table>
 </div>
</div>

<!-- 2번째 섹션 -->
<div class="section2">
    <!-- 신고 폼 -->
  <form id="reportForm" action="" method="post" onsubmit="return joinValidate();">
  		<br><br>
        <h2> 매물 신고 사유</h2>
        <br>
        <select id="reason">
            <option>허위/ 과장된 가격 정보를 가진 매물</option>
            <option>거래가 완료되어 존재하지 않는 매물</option>
            <option>경매 의심 매물</option>
            <option>기타 사유로 정보가 부정확한 매물</option>
        </select>
      
    <br><br><br>
    <h2> 신고 내용</h2>
    <br>
    <textarea  id="reportcontent" placeholder="신고사유에 대한 구체적인 내용을 작성해 주세요."></textarea>
    <br><br><br><br><br><br><br>
    <button id="report" type="submit">신고하기</button>

</form>

<script>
<!-- 유효성 검사  -->
// validate() 함수 작성 -> 신고 폼 유효성 검사
function validate(){
	// 신고사유, 신고내용 중 입력 되지 않은 값이 있을 시 alert 후 focus 처리 -> submit X
	if($("#reason").val().trim().length == 0){
		alert('신고사유를 선택해 주세요.');
		$("#reason").focus();
		return false;
	}
	
	if($("#reportcontent").val().trim().length == 0){
		alert('신고내용을 작성해 주세요.');
		$("#reportcontent").focus();
		return false;
	}
	return true;
}

	// 신고하기 버튼 클릭 이벤트 작성 (클릭 시 메인 페이지로)
	const report = document.getElementById('report');
				report.addEventListener('click', function(){
						location.href="<%= request.getContextPath() %>/views/common/main.jsp";
				});
	
</script>

	<!-- 네비 버튼 클릭 이벤트 -->
	<script>

	// 1.House 버튼
	// 2.RoomMate 버튼
	// 3.About Us 버튼
	// 4.logout 버튼
	// 5.mypage 버튼
		
	</script>
</div>

<!--  페이지를 이동해도 footer는 계속 하단에 노출되게끔 -->
	<%@include file="/views/common/footer.jsp"%>
</body>
<!-- 변수명 DB와 일치시키기, 신고 폼 value값 넣기, 상단 네비 수정 및 버튼 클릭이벤트 기능 넣기, 후에 디자인 상의 후 수정 -->

</html>