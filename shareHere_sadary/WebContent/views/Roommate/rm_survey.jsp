<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
   User user = (User)session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <title>룸메이트설문조사</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rm_survey.css">

<!-- navi css 경로 -->
<link
   href="${pageContext.request.contextPath}/views/common/nav_foot.css"
   rel="stylesheet" type="text/css">
   <!-- 타이틀 이미지 -->
   <link href="${pageContext.request.contextPath}/views/common/img/rmLogo.png" rel="shortcut icon" type="image/x-icon">
</head>
<!-- 글씨체 -->
<link
   href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
   rel="stylesheet">

<body class="container">

   <!-- 네비게이션 바 유지-->
   <%@include file="/views/common/navi.jsp"%>
   <br><br>
    <!--시작 페이지-->
    <article class="start">

        <h1 class="mt-5 text-center" style="font-family: 'Nanum Pen Script', cursive; font-size: 70px;">나는 어떤 룸메이트일까?</h1> 
        <br><br><br>
        <h4 class="text-center"> <span style="color: rgb(87, 134, 236);">룸메이트 유형검사</span>를 통해 본인의 유형과 <br>
        본인에게 적합한 <span style="color : orange; font-weight: bold; font-family: 'Nanum Pen Script', cursive; font-size: 45px;">'쉐어메이트'</span>를 추천받아보세요 !</h4>
        <br><br><br>
        <img src = "${pageContext.request.contextPath}/resources/img/rm_startimg.PNG" class = "mt-5">
        <pre style="font-family: 'Nanum Pen Script', cursive; font-size: 25px; color: gray">             "어머님이 누구니"                               "친해지고 싶은 너"                               "이성적 겉바속촉"                       "복세편살 바로 나"</pre>
        <br><br><br>
        <button type="button" class="button mt-5" style = "width : 250px;" onclick="start();">룸메유형 알아보기</button>
       
        <script>
        function start() {
            <% if (user != null) { %>
                $(".start").hide();
                $(".setarea").show();
                next();              
            <% } else { %>
                 if (confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?")) {
                    location.href="<%= request.getContextPath() %>/views/Login/login_Nnavi.jsp"; 
                 }
              <% } %>
         }
        </script>
        
    </article>
    <br><br>
    
   
    <!-- 지역설정 페이지 -->
    <article class = "setarea">
      <div class="row">
         <div class="col">
            <br>
            <h2>관심지역을 클릭하세요!</h2>
            <br>
            <h6>
               <span style="color : #2EE59D; font-weight : bold;">최대 3개</span>까지 설정 가능합니다.
            </h6>
            <br>
            <br>
            
         
            <!-- .disabled = true;를 통해 중복선택 방지 -->
            <div class="selectArea">
               <input type="button" value='강서구' name="강서구" id = "gs" class="selectBtn"
               onclick= "document.getElementById('gs').disabled = true;
               document.getElementById('gs').style.opacity='0.7';">
               <input type="button" value='강남구' name="강남구" id = "gn" class="selectBtn"
               onclick= "document.getElementById('gn').disabled = true;
               document.getElementById('gn').style.opacity='0.7';">
               <input type="button" value='구로구' name="구로구" id = "gr" class="selectBtn"
               onclick= "document.getElementById('gr').disabled = true;
               document.getElementById('gr').style.opacity='0.7';">
               <input type="button" value='노원구' name="노원구" id = "nw" class="selectBtn"
               onclick= "document.getElementById('nw').disabled = true;
               document.getElementById('nw').style.opacity='0.7';">
               <input type="button" value='도봉구' name="도봉구" id = "db" class="selectBtn"
               onclick= "document.getElementById('db').disabled = true;
               document.getElementById('db').style.opacity='0.7';">
               <input type="button" value='양천구' name="양천구" id = "yc" class="selectBtn"
               onclick= "document.getElementById('yc').disabled = true;
               document.getElementById('yc').style.opacity='0.7';">
               <input type="button" value='용산구' name="용산구" id = "ys" class="selectBtn"
               onclick= "document.getElementById('ys').disabled = true;
               document.getElementById('ys').style.opacity='0.7';">
               <input type="button" value='서대문구' name="서대문구" id = "sdm" class="selectBtn"
               onclick= "document.getElementById('sdm').disabled = true;
               document.getElementById('sdm').style.opacity='0.7';">
               <br> 
               <input type="button" value='은평구' name="은평구" id = "ep" class="selectBtn"
               onclick= "document.getElementById('ep').disabled = true;
               document.getElementById('ep').style.opacity='0.7';"> 
               <input type="button" value='동작구' name="동작구" id = "dj" class="selectBtn"
               onclick= "document.getElementById('dj').disabled = true;
               document.getElementById('dj').style.opacity='0.7';"> 
               <input type="button" value='관악구' name="관악구" id = "ga" class="selectBtn"
               onclick= "document.getElementById('ga').disabled = true;
               document.getElementById('ga').style.opacity='0.7';"> 
               <input type="button" value=' 중구' name="중구" id = "ju" class="selectBtn"
               onclick= "document.getElementById('ju').disabled = true;
               document.getElementById('ju').style.opacity='0.7';"> 
               <input type="button" value='서초구' name="서초구" id = "sc" class="selectBtn"
               onclick= "document.getElementById('sc').disabled = true;
               document.getElementById('sc').style.opacity='0.7';"> 
               <input type="button" value='송파구' name="송파구" id = "sp" class="selectBtn"
               onclick= "document.getElementById('sp').disabled = true;
               document.getElementById('sp').style.opacity='0.7';"> 
               <input type="button" value='영등포구' name="영등포구" id = "ydp" class="selectBtn"
               onclick= "document.getElementById('ydp').disabled = true;
               document.getElementById('ydp').style.opacity='0.7';">
            </div>
            
            <form id="goIntroForm" action="<%= request.getContextPath() %>/roommate/insert/intro" method="post">
               <input id="localString" name="localString" type="hidden">
               <input id="surveyResult" name="surveyResult" type="hidden">
            </form>
            
            <br>
            
            <br>
            <br> <h6 style = "font-weight: bold;">희망 거주 지역</h6> <br>
            <br>
            <div id="selectResult"
               style="font-size: 18px; font-weight: bold; color : #2EE59D"></div>
            <br>
            <br>

            <button id='resetBtn' type="button" class = "button" onclick="reset();">
               관심지역 재설정</button>
            <button id='nextBtn' type="button" class = "button" onclick = "surveystart();">
               설문조사 시작하기</button>
            <br>
         </div>
      </div>
   
   
    </article>
    
 
    <!-- 질문페이지 -->
    <article class="question">
        <div class="progress mt-5">
            <div class="progress-bar" role="progressbar" style="width: calc(100/12*1%)"></div>
        </div>
        <h2 id="title" class="text-center mt-5">문제</h2>
        <input id="type" type="hidden" value="EI">
        
        <% int i = 0;
  
         switch(i) { 
         case "질문1" : %> 
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">
        <%
         case "질문2" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         <% case "질문3" : %>   
               
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         case "질문4" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         case "질문5" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         case "질문6" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         case "질문7" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         case "질문8" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         case "질문9" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         case "질문2" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         case "질문2" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
         case "질문2" : %>   
           %>     
            <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">           
        }%>
           <img id="question_img" class="mt-5" src="${pageContext.request.contextPath}/resources/img/question<%=i %>.jpg" alt = "question image">

           <button id="A" type="button" class="button mt-5" style = "width : 250px;">YES</button>
           <button id="B" type="button" class="button mt-5" style = "width : 250px;">NO</button>
           
    </article>
    
    <!-- 결과유형 -->
    <article class="result">
        <img id="img_result" class="rounded-circle mt-5" src="${pageContext.request.contextPath}/resources/img/lion.jpg" alt="animal">
        <h2 id="animal" class="text-center mt-5">룸메유형</h2>
        <h3 id="explain" class="text-center mt-5">설명</h3>
        <button id = "to_intro" type="button" class="button mt-5" style = "width : 250px;"> ✨ 마지막 단계 ✨<br> 자기소개 작성하기</button>
    </article>
    <input type="hidden" id="EI" value="0">
    <input type="hidden" id="SN" value="0">
    <input type="hidden" id="TF" value="0">
    <input type="hidden" id="JP" value="0">
    
    <script>
   // 자기소개 입력 페이지로 넘어가는 버튼
   const to_intro = document.getElementById('to_intro');
   to_intro.addEventListener('click', function() {
      
      // 선택된 지역을 input에 저장
      var selectResult = document.getElementById('selectResult');
      $("#localString").attr("value", selectResult.innerHTML);
      
      // 최종 결과를 input에 저장
      var result = $("#animal").html();
      $("#surveyResult").attr("value", result);
      
      $("#goIntroForm").submit(); // 폼 제출   
   });
   </script> 
    
 
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script>
       var img = "${pageContext.request.contextPath}/resources/img";
        var num = 1;
        var q = {
              
         1: {"title": "문제 1번 : 나는 집에 있는 시간보다 밖에있는 시간이 더 많다", "question_img":img + "/question1.png", "type": "EI", "A": "그렇다", "B": "아니다"},
         2: {"title": "문제 2번 : 나는 다른 사람들과 만나면서 에너지를 받는 편이다", "question_img":img + "/question2.jpg", "type": "EI", "A": "그렇다", "B": "아니다"},
         3: {"title": "문제 3번 : 나는 관종끼가 있다", "type": "EI", "A": "그렇다", "B": "아니다"},
         4: {"title": "문제 4번 : 나는 일찍자고 일찍일어나는 편이다(자정전에 잔다)",  "type": "SN", "A": "그렇다", "B": "아니다"},
         5: {"title": "문제 5번 : 나는 오전에 준비하고 나가는 고정스케쥴을 가지고 있다(직장인/학생 등)", "type": "SN", "A": "그렇다", "B": "아니다"},
         6: {"title": "문제 6번 : 밤새 핸드폰을 하다가 동이 터야 잠에 든다", "type": "SN", "A": "그렇다", "B": "아니다"},
         7: {"title": "문제 7번 : 나는 방을 자주 치우는 편이다",  "type": "TF", "A": "그렇다", "B": "아니다"},
         8: {"title": "문제 8번 : 친구들로부터 깔끔하다는 이야기를 자주 듣는다",  "type": "TF", "A": "그렇다", "B": "아니다"},
         9: {"title": "문제 9번 : 냄새에 민감하다",  "type": "TF", "A": "그렇다", "B": "아니다"},
         10: {"title": "문제 10번 : 나는 나만의 공간과 시간이 필요하다", "type": "JP", "A": "그렇다", "B": "아니다"},
         11: {"title": "문제 11번 : 내 물건을 누군가와 공유하는 것에 민감하다 ",  "type": "JP", "A": "그렇다", "B": "아니다"},
         12: {"title": "문제 12번 : 룸메이트가 조용한 생활패턴을 가지고 있으면 좋겠다", "type": "JP", "A": "그렇다", "B": "아니다"}
              
              
           /* 사진 첨부 질문
           
            1: {"title": "문제 1번 : 나는 집에 있는 시간보다 밖에있는 시간이 더 많다", "question_img": "img/question1.jpg", "type": "EI", "A": "그렇다", "B": "아니다"},
            2: {"title": "문제 2번 : 나는 다른 사람들과 만나면서 에너지를 받는 편이다", "question_img": "img/question2.jpg", "type": "EI", "A": "그렇다", "B": "아니다"},
            3: {"title": "문제 3번 : 나는 관종끼가 있다","question_img": "img/question3.jpg", "type": "EI", "img": "rm_clean.gif", "A": "그렇다", "B": "아니다"},
            4: {"title": "문제 4번 : 나는 일찍자고 일찍일어나는 편이다(자정전에 잔다)", "question_img": "img/question4.jfif", "type": "SN", "A": "그렇다", "B": "아니다"},
            5: {"title": "문제 5번 : 나는 오전에 준비하고 나가는 고정스케쥴을 가지고 있다(직장인/학생 등)", "question_img": "question5.jfif", "type": "SN", "A": "그렇다", "B": "아니다"},
            6: {"title": "문제 6번 : 밤새 핸드폰을 하다가 동이 터야 잠에 든다", "question_img": "img/question6.jpg", "type": "SN", "A": "그렇다", "B": "아니다"},
            7: {"title": "문제 7번 : 나는 방을 자주 치우는 편이다", "question_img": "img/question7.jpg", "type": "TF", "A": "그렇다", "B": "아니다"},
            8: {"title": "문제 8번 : 친구들로부터 깔끔하다는 이야기를 자주 듣는다", "question_img": "img/question8.jpg", "type": "TF", "A": "그렇다", "B": "아니다"},
            9: {"title": "문제 9번 : 냄새에 민감하다", "question_img": "img/question9.jpg", "type": "TF", "A": "그렇다", "B": "아니다"},
            10: {"title": "문제 10번 : 나는 나만의 공간과 시간이 필요하다", "question_img": "img/question10.jpg", "type": "JP", "A": "그렇다", "B": "아니다"},
            11: {"title": "문제 11번 : 내 물건을 누군가와 공유하는 것에 민감하다 ", "question_img": "img/question11.jpg", "type": "JP", "A": "그렇다", "B": "아니다"},
            12: {"title": "문제 12번 : 룸메이트가 조용한 생활패턴을 가지고 있으면 좋겠다", "question_img": "img/question12.jpg", "type": "JP", "A": "그렇다", "B": "아니다"}
      */
        
        }
        var result = {
            "ISTJ": {"animal": "어머님이 누구니", "explain": "흠 잡을 것 없는 당신! <br> 어머니의 교육방법이 너무나 궁금해지는군요. 당신의 좋은 성격덕에 룸메이트 선택지가 더 넓어졌어요! ", "img_result": "img/rm_result_1.png"},
            "ISFJ": {"animal": "이성적 겉바속촉", "explain": "선 긋는게 아니라 피해를 주는게 싫은거라고! <br> 쉐어하우스지만 나만의 공간은 지켜졌으면 좋겠는 당신.", "img_result": "img/rm_result_4.png"},
            "INFJ": {"animal": "복세편살 바로나", "explain": "복잡한 세상 편하게 살자! <br> 꼭 규칙적인 생활을 해야만 잘 사나? 마음 편한게 잘 사는거지! ", "img_result": "img/rm_result_3.png"},
            "INTJ": {"animal": "이성적 겉바속촉", "explain": "선 긋는게 아니라 피해를 주는게 싫은거라고! <br> 쉐어하우스지만 나만의 공간은 지켜졌으면 좋겠는 당신. ", "img_result": "img/rm_result_4.png"},
            "ISTP": {"animal": "친해지고 싶은 너", "explain": "내향적인 사람 중엔 제일 외향적이고, 외향적인 사람들 중엔 제일 내향적인 당신! <br> 자신의 룰은 있되 남들을 편하게 해주는 당신과 맞는 룸메이트가 기다리고 있어요!", "img_result": "img/rm_result_2.png"},
            "ISFP": {"animal": "복세편살 바로나", "explain": "복잡한 세상 편하게 살자! <br> 꼭 규칙적인 생활을 해야만 잘 사나? 마음 편한게 잘 사는거지!", "img": "img/rm_result_3.png"},
            "INFP": {"animal": "복세편살 바로나", "explain": "복잡한 세상 편하게 살자! <br> 꼭 규칙적인 생활을 해야만 잘 사나? 마음 편한게 잘 사는거지!", "img": "img/rm_result_3.png"},
            "INTP": {"animal": "이성적 겉바속촉", "explain": "선 긋는게 아니라 피해를 주는게 싫은거라고! <br> 쉐어하우스지만 나만의 공간은 지켜졌으면 좋겠는 당신. ", "img": "img/rm_result_4.png"},
            "ESTP": {"animal": "어머님이 누구니", "explain": "흠 잡을 것 없는 당신! <br> 어머니의 교육방법이 너무나 궁금해지는군요. 당신의 좋은 성격덕에 룸메이트 선택지가 더 넓어졌어요!", "img": "img/rm_result_1.png"},
            "ESFP": {"animal": "친해지고 싶은 너", "explain": "내향적인 사람 중엔 제일 외향적이고, 외향적인 사람들 중엔 제일 내향적인 당신! <br> 자신의 룰은 있되 남들을 편하게 해주는 당신과 맞는 룸메이트가 기다리고 있어요!", "img": "img/rm_result_2.png"},
            "ENFP": {"animal": "친해지고 싶은 너", "explain": "내향적인 사람 중엔 제일 외향적이고, 외향적인 사람들 중엔 제일 내향적인 당신! <br> 자신의 룰은 있되 남들을 편하게 해주는 당신과 맞는 룸메이트가 기다리고 있어요!", "img": "img/rm_result_2.png"},
            "ENTP": {"animal": "어머님이 누구니", "explain": "흠 잡을 것 없는 당신! <br> 어머니의 교육방법이 너무나 궁금해지는군요. 당신의 좋은 성격덕에 룸메이트 선택지가 더 넓어졌어요!", "img": "img/rm_result_1.png"},
            "ESTJ": {"animal": "어머님이 누구니", "explain": "흠 잡을 것 없는 당신! <br> 어머니의 교육방법이 너무나 궁금해지는군요. 당신의 좋은 성격덕에 룸메이트 선택지가 더 넓어졌어요!", "img": "img/rm_result_1.png"},
            "ESFJ": {"animal": "친해지고 싶은 너", "explain": "내향적인 사람 중엔 제일 외향적이고, 외향적인 사람들 중엔 제일 내향적인 당신! <br> 자신의 룰은 있되 남들을 편하게 해주는 당신과 맞는 룸메이트가 기다리고 있어요!", "img": "img/rm_result_2.png"},
            "ENFJ": {"animal": "복세편살 바로나 ", "explain": "복잡한 세상 편하게 살자! <br> 꼭 규칙적인 생활을 해야만 잘 사나? 마음 편한게 잘 사는거지!", "img": "img/rm_result_3.png"},
            "ENTJ": {"animal": "이성적 겉바속촉", "explain": "선 긋는게 아니라 피해를 주는게 싫은거라고! <br> 쉐어하우스지만 나만의 공간은 지켜졌으면 좋겠는 당신. ", "img": "img/rm_result_4.png"}
        }
        
        
        /*------------ 쿼리문 ----------*/
        
        function surveystart(){
           $(".setarea").hide();
           $(".question").show();
        }       
        
        // 설문조사
        $("#A").click(function(){
            var type = $("#type").val();
            var preValue = $("#"+type).val();
            $("#"+type).val(parseInt(preValue)+1);
            next();
        });
        $("#B").click(function(){
            next();
        });
        function next() {
            if (num == 13) {
                $(".question").hide();
                $(".result").show();
                var mbti = "";   // 여기에 결과 값이 담김 
                ($("#EI").val() < 2) ? mbti+="I" : mbti+="E";
                ($("#SN").val() < 2) ? mbti+="N" : mbti+="S";
                ($("#TF").val() < 2) ? mbti+="F" : mbti+="T";
                ($("#JP").val() < 2) ? mbti+="P" : mbti+="J";
              //  alert(mbti);  결과값을 눈으로 보고 싶을 때 - alert처리 해놓음
                $("#img").attr("src",result[mbti]["img"]);
                $("#animal").html(result[mbti]["animal"]);
                $("#explain").html(result[mbti]["explain"]);
            } else {
                $(".progress-bar").attr('style','width: calc(100/12*'+num+'%); background-color: #2EE59D;');
                $("#title").html(q[num]["title"]);
                $("#type").val(q[num]["type"]);
                $("#A").html(q[num]["A"]);
                $("#B").html(q[num]["B"]);
                num++;
            }
        }
    </script>
   
   <!-- 지역설정 코드 -->
   <script>
      $('input').on('click', function(e) {

         // 선택한 지역 출력하기
          var selectResult = document.getElementById('selectResult');
          var StringRes = selectResult.innerHTML += e.target.value + " ";
        
          // 1. 지역을 4개 이상 선택했을 시 alert창 띄우고 값 지우기
          if (StringRes.length > 14) {
           alert("지역은 최대 3개까지 설정할 수 있습니다!");
           
         selectResult.innerHTML = ""; // 값 지우기
        // 리셋버튼 클릭시 비활성화 해체
        var resetBtn = document.getElementById('gs').disabled = false;
        var resetBtn = document.getElementById('gn').disabled = false;
        var resetBtn = document.getElementById('gr').disabled = false;
        var resetBtn = document.getElementById('nw').disabled = false;
        var resetBtn = document.getElementById('db').disabled = false;
        var resetBtn = document.getElementById('yc').disabled = false;
        var resetBtn = document.getElementById('ys').disabled = false;
        var resetBtn = document.getElementById('sdm').disabled = false;
        var resetBtn = document.getElementById('ep').disabled = false;
        var resetBtn = document.getElementById('dj').disabled = false;
        var resetBtn = document.getElementById('ga').disabled = false;
        var resetBtn = document.getElementById('ju').disabled = false;
        var resetBtn = document.getElementById('sc').disabled = false;
        var resetBtn = document.getElementById('sp').disabled = false;
        var resetBtn = document.getElementById('ydp').disabled = false;

          }        
      });
          
    // 리셋버튼
    // 1. 선택지역 초기화
     function reset() {
       var selectResult = document.getElementById('selectResult');
       selectResult.innerHTML = "";
    }
   
    // 2. 리셋버튼 클릭시 비활성화 해제
    $("#resetBtn").click(function(){
       var resetBtn = document.getElementById('gs').disabled = false;
       var resetBtn = document.getElementById('gn').disabled = false;
       var resetBtn = document.getElementById('gr').disabled = false;
       var resetBtn = document.getElementById('nw').disabled = false;
       var resetBtn = document.getElementById('db').disabled = false;
       var resetBtn = document.getElementById('yc').disabled = false;
       var resetBtn = document.getElementById('ys').disabled = false;
       var resetBtn = document.getElementById('sdm').disabled = false;
       var resetBtn = document.getElementById('ep').disabled = false;
       var resetBtn = document.getElementById('dj').disabled = false;
       var resetBtn = document.getElementById('ga').disabled = false;
       var resetBtn = document.getElementById('ju').disabled = false;
       var resetBtn = document.getElementById('sc').disabled = false;
       var resetBtn = document.getElementById('sp').disabled = false;
       var resetBtn = document.getElementById('ydp').disabled = false;
    });


   </script>
   

          <!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
         <%@include file="/views/common/footer.jsp"%>


   
</body>

</html>