<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>findpwd</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<!-- navi css 경로 -->
<link href ="${pageContext.request.contextPath}/views/common/nav_foot.css" rel="stylesheet" type="text/css">
    <style>
        *{box-sizing: border-box;}
        ol,li,ul{list-style-type: none;}
        a{text-decoration: none;}

        /* 전체 페이지 설정 수정*/
        .wrap{
            width: 100%;
            height: 1119px;

        } 
        /* 헤더 */
        .header{
            width: 100%;
            height: 118px;
            text-align: center;
        }

        /* 섹션 */
        section{
        	height : auto;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        section .section{
            width : 460px;
            height : auto;
            /* border: 1px black solid; */
        }
        .section h2{font-weight : bold; font-size:20pt;}
        /* 이름 이메일 휴대전화 태그 */
        .index{
            display: block;
            padding: 0;
            margin-bottom: 0;
            font-weight: 400;
            font-size: 16px;
        }
        /* 입력태그 */
        .findinput{
            width: 100%;
            height: 45px;
            margin: 5;
            background-color:   #e1e1e1;
            border: 1px solid  #e1e1e1;
            border-style: groove;
            border-radius: 5px;
        }
        /*  정보찾기버튼 */
        .find{
            width: 100%;
            height: 60px;
            background-color: black;
            color: white;
            /* border:1px solid  black(209, 209, 209); */
            border-style: groove;
            border-radius: 5px;
            font-size: 16px;
        }
        .find:hover{
            border:1px solid #e1e1e1;
            border-style: groove;
            border-radius: 5px;
            background-color: rgb(49, 49, 49); color: rgb(214, 214, 214);
        }
        /*  */
        #nameIncor, #phoneIncor, #emailIncor{
            color: red; text-align: center;
        }

        .footer{
            width : 100%;
            height : 238px;
            border: 1px black solid;
        }

        
    </style>
</head>
<body>
    <!-- 전체 페이지 -->
    <div class="wrap">
        <header>
            <div class="header">
                <!-- 로고 -->
                <h1><a href="#"><img src="image/nlogo.png" class="header_logo" alt="Sharehere_Logo"></a></h1>
            </div>
        </header>

        <section>
            <div class="section">
                <h2>회원정보 찾기</h2>

                <!-- <form method="GET" name="findpwd" onsubmit="return validate();"> -->
                <form method="GET" name="findpwd">

                    <label class="index">이름</label>
                    <!-- required 나중에 지워주기(자바스크립트 추가 시) -->
                    <input type="text" id="username" class="findinput">
                    <span id="nameIncor"></span>
                    
                    <lable class="index" onchange="pwdchange();">휴대전화</lable>
                    <input type="text" id="phone" class="findinput"><span id="phoneresult"></span><br>
                    <div>
                        <span id="phoneIncor"></span>
                    </div>
                    <label class="index">이메일</label>
                    <input type="email" id="useremail" class="findinput">
                    <span id="emailIncor"></span>
                    <br><br>
                    <input class="find" type="submit" value="정보찾기">

                    <script>
                        $(function () {
                            $("#username").change(function () {
                                var regname = /^[가-힣]{1,4}$/;     //2~5글자의 한글 이름
                                if (!regname.test($("#username").val())) {
                                    $("#nameIncor").html("올바른 이름이 아닙니다.").css("color", "red");
                                } else {
                                    $("#nameIncor").html("정상 입력.").css("color", "green");
                                }
                            });
                            
                            $("#useremail").change(function () {
                                var emailVal = $("#useremail").val();
                                var regemail = /^[a-z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
                                if (emailVal.match(regemail) != null) {
                                    $("#emailIncor").html("정상입력").css("color", "green");
                                }
                                else {
                                    $("#emailIncor").html("올바른 이메일을 입력해주세요.").css("color", "red");
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
                    <script>
                        function validate() {
                            // 아이디, 패스워드 중 입력 되지 않은 값이 있을 시 alert 후 focus 처리 -> submit X
                            if ($("#userId").val().trim().length == 0) {
                                //.trim--> 띄어쓰기 없애기
                                alert('아이디를 입력하세요');
                                $("#userId").focus();
                                return false;	//submit 안하게 하기 위해
                            }
                            if ($("#userPwd").val().trim().length == 0) {
                                alert('비밀번호를 입력하세요');
                                $("#userPwd").focus();
                                return false;
                            }
                            return true;
                        }
                    </script> 
                </form>

        </section>

        
    <!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
   <%@include file="/views/common/footer.jsp" %>
    </div>
</body>
</html>