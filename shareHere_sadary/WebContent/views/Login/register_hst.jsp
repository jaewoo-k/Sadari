<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register_host</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<!-- navi css 경로 -->
<link href ="${pageContext.request.contextPath}/views/common/nav_foot.css" rel="stylesheet" type="text/css">
<style>
    *{box-sizing: border-box;}
    .logo{text-align: center;}
    .block{display: block;}
    .wrap{width: 460px; height: 707px;margin: auto; height:auto;}
    #bsname{margin-bottom: 20px;}
    input{width: 100%; height: 45px; background-color: rgb(237, 237, 237);border: 1px rgb(237, 237, 237) solid;border-style: groove; border-radius: 5px;}
    section{height:auto;}
    .genderoption{display: flex; justify-content: center; align-items:center;}
    #m,#f{width: auto; background-color: none;}                         /* 남자 여자 크기 */
    #m + label{margin-right: 60px;}     /* 남자여자 띄우기*/
    #register_btn{background-color: black; color: white; width: 100%; height: 55px; margin-top: 30px; border-radius: 5px; cursor: pointer;}
    fieldset{border:none;}
</style>
</head>

    

<body>
    <section>
        <div class="wrap">
            <div>
                <!-- 로고 & 홈버튼 -->
                <h1 class="logo"><a href="#">
                        <img src="image/nlogo.png" alt="shareherelogo"></a></h1>
                <form name=register_hst name="login_hst" method="POST" onsubmit="return validate();">

                    <label class="block">사업자번호(-없이)</label><input type="text" id="bsnum"><span id="bsnumresult"></span>
                    <label class="block">상호명</label><input type="text" id="bsname"><span id="bsnameresult"></span>

                    <!-- input onsubmit 유효성 검사 실시하기 -->
                    <!-- oninvalid="(scriopt 구문)" -->
                    <label class="block">아이디</label><input type="text" id="id"><span id="idresult"></span>
                <label class="block">비밀번호</label><input type="password" id="pwd"><span id="pwdresult"></span>
                <label class="block">비밀번호확인</label><input type="password" id="pwd2"><span id="pwd2result"></span>
                <label class="block">이름</label><input type="text" id="name"><span id="nameresult"></span>
                <!-- select(option)으로 시간 되면 바꾸기 -->
                <label class="block">생년월일</label><input type="date" id="birth"><br><span id="birthresult"></span>
                <!-- 하나만 체크되게 하기 -->
                <label class="block">성별</label>
                <fieldset aria-required="true">
                    <div class="genderoption"><input type="radio" name="gender" id="m"><label for="m">남자</label><input type="radio"
                            name="gender" id="f"><label for="f">여자</label></div>
                </fieldset>
            
                <!-- <label>이메일</label><input type="text"> -->
                <label class="block">이메일</label><input type="email" id="email"><span id="emailresult"></span>
                <label class="block">휴대전화</label><input type="tel" id="phone"><br><span id="phoneresult"></span>
                <!-- <input type="submit" value="회원가입" class="register_btn"> -->
                <button type="submit" value="회원가입" id="register_btn">회원가입</button>
            
                <script>
                    $(function () {
                        $("#bsnum").change(function(){
                            var regbn = /^[0-9]{10}$/;
                            if(!regbn.test($(this).val())){
                                $("#bsnumresult").html("숫자 10자리만 입력해주세요.").css("color", "red");
                            }else{
                                $("#bsnumresult").html("정상 입력").css("color", "green");
                            }
                        });
                        $("#id").change(function () {   // id
                            // 유효성검사
                            var regid = /^[a-z][a-z0-9]{3,16}$/;       // 영어로시작, 영,숫 4~16글자
                            var firsta = /^[a-z]/;  // 영어소문자로 시작
                            // 아이디가 정규식을 만족하지 못한경우
                            if (!firsta.test($(this).val())) {
                                $("#idresult").html("영어 소문자로 시작해 주세요.").css("color", "red");
                            } else if (!regid.test($(this).val())) {
                                $("#idresult").html("영어소문자,숫자로 구성된 4~16글자로 작성해주세요.").css("color", "red");
                            } else {
                                $("#idresult").html("정상 입력").css("color", "green");
                            }
                        });

                        $("#pwd").change(function () {   //pwd
                            var regpwd = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9]).{7,15}/;       // 영어대소문자,숫자,특수문자를 포함한 8자리~16자리
                            if (!regpwd.test($(this).val())) {
                                $("#pwdresult").html("영어대소문자,숫자,특수문자를 포함한 8자리~16자로 작성해주세요.").css("color", "red");
                            } else {
                                $("#pwdresult").html("사용 가능한 비밀번호 형식입니다..").css("color", "green");
                            }
                        });

                        $("#pwd2").change(function () {
                            if ($("#pwd2").val() != $("#pwd").val()) {
                                $("#pwd2result").html("비밀번호가 일치하지 않습니다.").css("color", "red");
                            } else {
                                $("#pwd2result").html("비밀번호가 일치합니다.").css("color", "green");
                            }
                        });
                        // 테스트완료
                        $("#name").change(function () {
                            var regname = /^[가-힣]{1,4}$/;     //2~5글자의 한글 이름
                            if (regname.test($(this).val())) {
                                $("#nameresult").html("정상 입력.").css("color", "green");
                            } else {
                                $("#nameresult").html("올바른 이름이 아닙니다.").css("color", "red");
                            }
                        });

                        $("#birth").change(function () {
                            var date = new Date;
                            var inputbirth = new Date($("#birth").val());

                            if (inputbirth > date) {
                                $("#birthresult").html("생년월일을 정확히 입력하세요.").css("color", "red");
                            } else {
                                $("#birthresult").html("정상 입력").css("color", "green");
                            }
                        });

                        //  성별 백엔드에서 다뤄주기
                        // 선택 안하고 submit 못하게..
                        
                        $("#email").change(function () {
                                var emailVal = $("#email").val();
                                var regemail = /^[a-z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
                                if (emailVal.match(regemail) != null) {
                                    $("#emailresult").html("정상입력").css("color", "green");
                                }
                                else {
                                    $("#emailresult").html("올바른 이메일을 입력해주세요.").css("color", "red");
                                }
                            });
                     // 휴대전화번호 유효성 검사
                        $("#phone").change(function(){
                            var phoneVal = $("#phone").val();
                            var regphone = /^010\D?\d{4}\D?\d{4}$|^01[16789]\D?\d{3}\D?\d{4}$/;

                            if(regphone.test(phoneVal)){
                                $("#phoneresult").html("정상입력").css("color","green");
                            }else{
                                $("#phoneresult").html("올바른 휴대전화 번호를 입력해주세요.").css("color","red");
                            }
                        });


                    });
                </script>
                <!-- </div> -->
            </div>
            
    </section>
    <!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
   <%@include file="/views/common/footer.jsp" %>
</body>
</html>