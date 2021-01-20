<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register_user</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <!-- navi css 경로 -->
<link href ="${pageContext.request.contextPath}/views/common/nav_foot.css" rel="stylesheet" type="text/css">
<style>
    *{box-sizing: border-box;}
    .logo{text-align: center;}
    section{height : auto;}
    .block{display: block;}
    .wrap{width: 460px; margin: auto; height:auto;}
    input{width: 100%; height: 45px; background-color: rgb(237, 237, 237);border: 1px rgb(237, 237, 237) solid;border-style: groove; border-radius: 5px;}
    .genderoption{display: flex; justify-content: center; align-items:center;}
    #m,#f{width: auto; height: auto; background-color: none;}                         /* 남자 여자 크기 */
    #m + label{margin-right: 60px;}     /* 남자여자 띄우기*/
    #register_btn{background-color: black; color: white; width: 100%; height: 55px; margin-top: 30px; border-radius: 5px; cursor: pointer;}
    span{font-size: 14px;}
     fieldset{ border: none;}
</style>
</head>

    

<body>
    <section>
        <div class="wrap">
            <div>
                <!-- 로고 & 홈버튼 -->
                <h1 class="logo"><a href="<%=request.getContextPath()%>">
                    <img src="image/nlogo.png" alt="shareherelogo"></a></h1>
            </div>
            <!-- onsubmit="return validate();" -->

            <form name="register_user" id="register_user" method="POST"
            action="<%= request.getContextPath() %>/member/insertuser" onsubmit="return joinValidate();">
                <!-- input onsubmit 유효성 검사 실시하기 -->
                <!-- oninvalid="(script 구문)" -->
                <label class="block">아이디</label><input type="text" id="id" name="userId"><span id="idresult"></span>
                <label class="block">비밀번호</label><input type="password" id="pwd" name="userPwd"><span id="pwdresult"></span>
                <label class="block">비밀번호확인</label><input type="password" id="pwd2"><span id="pwd2result"></span>
                <label class="block">이름</label><input type="text" id="name" name="userName"><span id="nameresult"></span>
                <!-- select(option)으로 시간 되면 바꾸기 -->
                <label class="block">생년월일</label><input type="date" id="birth" name="birth"><br><span id="birthresult"></span>
<!-- 하나만 체크되게 하기 일단 안돼서 미리 체크 시켜놈-->

                <label class="block">성별</label>
                <div class="genderoption">
                	<input type="radio" name="gender" id="m" value="M" checked="checked"><label for="m">남자</label>
                	<input type="radio" name="gender" id="f" value="F"><label for="f">여자</label>
                </div>
                	<span id="gerderresult"></span>
            
                <!-- <label>이메일</label><input type="text"> -->
                <label class="block">이메일</label><input type="email" id="email" name="email"><span id="emailresult"></span>
                <label class="block">휴대전화</label><input type="tel" id="phone" name="phone"><br><span id="phoneresult"></span>
                
                <!-- <input type="submit" value="회원가입" class="register_btn"> -->
                <button type="submit" value="회원가입" id="register_btn">회원가입</button>
            
                <script>
                    $(function () {
                        $("#id").change(function () {   // id
                            // 유효성검사
                            var regid = /^[a-z][a-z0-9]{3,15}$/;       // 영어로시작, 영,숫 4~16글자
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
                            var regpwd = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9]).{8,16}/;       // 영어대소문자,숫자,특수문자를 포함한 8자리~16자리
                            if (!regpwd.test($(this).val())) {
                                $("#pwdresult").html("영어대소문자,숫자,특수문자를 포함한 8자리~16자로 작성해주세요.").css("color", "red");
                            } else {
                                $("#pwdresult").html("사용 가능한 비밀번호 형식입니다.").css("color", "green");
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
                            var regname = /^[가-힣]{2,5}$/;     //2~5글자의 한글 이름
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

                        //  성별 Null 값 안되게 다뤄주기--> 선택 안하고 submit 못하게..
                        
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
                        $("#phone").change(function(){
                            var phoneVal = $("#phone").val();
                            var regphone = /^010\D?\d{4}\D?\d{4}$|^01[16789]\D?\d{3}\D?\d{4}$/;

                            if(regphone.test(phoneVal)){
                                $("#phoneresult").html("정상입력").css("color","green");
                            }else{
                                $("#phoneresult").html("올바른 휴대전화 번호를 입력해주세요.").css("color","red");
                            }
                        });
                        
                        // 보완
                        $("#register_btn").mouseenter(function () {
                            if ($("#pwd2").val() != $("#pwd").val()) {
                                $("#pwd2result").html("비밀번호가 일치하지 않습니다.").css("color", "red");
                            } else {
                                $("#pwd2result").html("비밀번호가 일치합니다.").css("color", "green");
                            }
//                             if(!($("#m").checked && $("#f").checked)){
//                             	 $("#gerderresult").html("성별을 선택해주세요.").css("color", "red");
//                             }else{
// //테스트해보기
//                             	$("#gerderresult").html("성별선택 완료.").css("color", "green");
//                             }
                        });

                    });
                </script>
            </form>
        </div>
    </section>
    <!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
   <%@include file="/views/common/footer.jsp" %>
<!-- 제출 전 유효성검사 -->
	<script>
		function joinValidate(){
			var date = new Date;
			var inputbirth = new Date($("#birth").val());
			
			if(!(/^[a-z][a-z0-9]{3,15}$/.test($("#id").val()))){
				alert('아이디는 영소문자로 시작해서 4~16글자 입력(숫자 포함 가능)');
				$("#id").select();
				return false;
			}

			if(!(/(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9]).{8,16}/.test($("#pwd").val()))){
				alert('비밀번호는 영어대소문자,숫자,특수문자를 포함한 8자리~16자리로 설정해 주세요.');
				$("#pwd").select();
				return false;
			}
			if($("#pwd2").val() != $("#pwd").val()){
				alert('비밀번호가 일치하지 않습니다.');
				$("#pwd2").select();
				return false;
			}
			if(!(/^[가-힣]{2,5}$/).test($("#name").val())){
				alert('이름은 한글 2~5글자 사이만 가능');
				$("#name").select();
				return false;
			}
			if(inputbirth > date){
				alert('생년월일을 정확하게 입력하세요.');
				$("#birth").select();
				return false;
			}
			if(!((/^[a-z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i).test($("#email").val()))){
				alert('이메일주소를 확인해주세요.');
				$("#email").select();
				return false;
			}
			if(!(/^010\D?\d{4}\D?\d{4}$|^01[16789]\D?\d{3}\D?\d{4}$/).test($("#phone").val())){
				alert('휴대전화번호를 확인해주세요.');
				$("#phone").select();
				return false;
			}
// 			if(!($("#m").checked && $("#f").checked)){
// 				alert('성별을 선택해주세요.');
// 				return false;
// 			}
// 			else if(($("#m").checked || $("#f").checked)){
// 				return true;
// 			}
			return true;
		}
	</script>
</body>
</html>