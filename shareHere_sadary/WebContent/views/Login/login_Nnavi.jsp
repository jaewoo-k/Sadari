<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login_easy</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<!-- navi css 경로 -->
	<link href ="${pageContext.request.contextPath}/views/common/nav_foot.css" rel="stylesheet" type="text/css">
    <style>
        *{box-sizing: border-box;}
        ol,li,ul{list-style-type: none;}
        a{font: 1rem "나눔 고딕", sans-serif;text-decoration: none;}

        /* 전체 페이지 설정 */
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
            width : 500px;
            height : auto;
        }
        /* 아이디,비밀번호 태그 */
        .index{
            display: block;
            padding: 0;
            margin-bottom: 0;
            font-weight: 400;
            font-size: 16px;
        }
        /* 인풋 태그 */
        .loginput{
            width: 100%;
            height: 45px;
            margin: 5;
            background-color:   #e1e1e1;
            border: 1px solid  #e1e1e1;
            border-style: groove;
            border-radius: 5px;
        }
        .login{
            width: 100%;
            height: 60px;
            background-color: black;
            color: white;
            /* border:1px solid  black(209, 209, 209); */
            border-style: groove;
            border-radius: 5px;
            font-size: 16px;
        }
        .login:hover{
            border:1px solid #e1e1e1;
            border-style: groove;
            border-radius: 5px;
            background-color: rgb(49, 49, 49); color: rgb(214, 214, 214);
        }
        /*  */
        .section_ul{
            display: flex;
            color: black;
            font-size: 14px;
            justify-content: space-between;
        }
        /* #idIncor, #pwdIncor{
            color: red; text-align: center;
        } */
        /* 아이디저장, 아이디찾기 비밀번호찾기 회원가입 */
        .section_ul_2 a:hover, #idremem + label:hover{color: rgb(23, 23, 255);font-size: 14px;cursor: pointer;}
        /* #idremem + label:hover{color: rgb(23, 23, 255);font-size: 14px;} */

        /* 간편로그인 */
        .easylogin{
            margin-top: 40px;
            padding: 0;
            border-top: 1px solid #e1e1e1;
        }
        .easylogin li{
            display: flex;
            width: 100%;
            height: 45px;
            margin-top: 10px;
            border-style: groove;border-radius: 5px;border: 1px solid rgb(209, 209, 209);
            /* display: flex;
            flex-direction: row; */
            justify-content: space-between;
            align-items: center;
        }
        .easylogin li:hover{background-color: #e1e1e1;}
        .easylogin li img{
            margin-left: 50px;
        }
        .easylogin :nth-child(1) a{margin-right: 188px;}
        .easylogin :nth-child(2) a{margin-right: 193px;}
        .easylogin :nth-child(3) a{margin-right: 193px;}

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
                <h2>LogIn</h2>
        
                <!-- <form method="GET" onsubmit="return validate();"> -->
                <form method="GET">
                    <label class="index">아이디</label>
                    <!-- required 나중에 지워주기(자바스크립트 추가 시) -->
                    <input type="text" id="loginid" class="loginput">
                    <span id="logininputresult"></span>
                    
                    
                    <lable class="index" onchange="pwdchange();">비밀번호</lable>
                    <input type="password" id="userPwd" class="loginput"><br>
                    <div>
                        <span id="pwdIncor"></span>
                        <script>
                            var input = document.getElementById("pwdIncor");
                            function pwdchange(){
                                // div 보이게
                                if(validate() == true){

                                }
                            }
                            function validate(){
                                // 유효성검사
                                
                            }
                        </script>
                    </div>
                    <br><br>
        
                    <input class="login" type="submit" value="로그인">
                    <script>
                         $(function () {
                            // 아이디, 패스워드 중 입력 되지 않은 값이 있을 시 alert 후 focus 처리 -> submit X
                            if ($("#loginid").val().trim().length == 0) {
                                //.trim--> 띄어쓰기 없애기
                                $("#loginidresult").html("아이디를입력하세요").css("color", "red");
                                $("#loginid").focus();
                                return false;	//submit 안하게 하기 위해
                            }
                            if ($("#loginpwd").val().trim().length == 0) {
                                //.trim--> 띄어쓰기 없애기
                                $("#loginpwdresult").html("아이디를입력하세요").css("color", "red");
                                $("#loginpwdresult").focus();
                                return false;	//submit 안하게 하기 위해
                            }
                            return true;
                        });
                    </script>
                </form>
                <div class="section_ul">
                    <div class="section_ul_1">
                        <input type="checkbox" id="idremem"><label for="idremem">아이디 저장</label>
                    </div>
                    <div class="section_ul_2">
                        <a href="#">아이디찾기</a>&nbsp;/&nbsp;
                        <a href="#">비밀번호 찾기</a>&nbsp;/&nbsp;
                        <a href="#">회원가입</a>
                    </div>
                </div>
                <ul class="easylogin">
                    <li><img src="image/login-google.png" alt="google"><a href="#">Google 로그인</a></li>
                    <li><img src="image/login-naver.png" alt="Naver"><a href="#">Naver 로그인</a></li>
                    <li><img src="image/login-kakao.png" alt="Kakao"><a href="#">Kakao 로그인</a></li>
                </ul>
            </div>

        </section>


        <!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
   <%@include file="/views/common/footer.jsp" %>
    </div>
</body>
</html>