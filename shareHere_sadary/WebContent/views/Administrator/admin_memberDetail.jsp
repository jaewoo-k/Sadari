<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Member</title>
    <link href="admin_leftMenuCss.css" rel="stylesheet" type="text/css">
     <!-- font -->
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
    <style>
     #wrapTitle{
            /*border: 1px solid red;*/
            text-align: center;
            padding-top: 30px;
            font-size: 40px;
            margin-top:0;
        }

    .summary{
        /*border: 1px solid blue;*/
        display : block;
        margin-left : 400px;
        width : 700px;
        height : 600px;
        float:center;
    }

    table{
        text-align: center;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        width: 650px;
        margin-left : 25px;
    }

    th{
        padding-top : 15px;
        padding-bottom: 15px;
        border-bottom: 1px solid black;
    }

    td{
        padding-top : 15px;
        padding-bottom : 15px;
    }

    #fromSecond{
        height : 30px;
    }

    #btnBox{
        padding: 20px;
        width : 400px;
        height : 60px;
        float : right;
        margin : 10px;
    }

    .manageBtn{
        padding : 10px;
        float : right;
        margin : 5px;
        color : white;
        background-color: gray;
        border-radius: 5px;
        border-style: none;
        cursor: pointer;
        width : 100px;
        height : 50px;

    }
      .manageBtn:hover{
        background-color: black;
    }


</style>

</head>
<body>
    <div class="leftMenu">
        <img src='adm_img/menuImg.jpg'id="menuImg">
        <img src = "adm_img/adminLogo.png" id="adminLogo">
        <h1>Member</h1>
        <div id="title_Btns">
            <ul id="btnList"> 
                <li><button class="menuBtn" id="userBtn" type="button">일반회원</button></li>
                <li><button class="menuBtn" id="hostBtn" type="button">임대인</button></li>
                <li><button class="menuBtn" id="outMemBtn" type="button">탈퇴회원</button></li>
            </ul>
        </div>
    </div>

    <div class="summary">
        <h2 id="wrapTitle">회원 상세 내역</h2>

        <hr><hr>
        <table id="userMemTable">
            <tr>
                <th>이름</th>
                <td>이은솔</td>
                <th>회원번호</th>
                <td>U0001</td>
            </tr>

            <tr id="fromSecond">
                <th>생년월일</th>
                <td>97.05.03</td>
                <th>아이디</th>
                <td>essol503</td>
            </tr>

            <tr id="fromSecond">
                <th>성별</th>
                <td>여</td>
                <th>비밀번호</th>
                <td>eunsolL33</td>
            </tr>

            <tr id="fromSecond">
                <th>이메일</th>
                <td>essol503@gmail.com</td>
                <th>휴대전화</th>
                <td>010-9295-6618</td>
            </tr>
        </table>
    </div>

    <div id="btnBox">
        <button class="manageBtn" id="memberBtn1" type="button">회원 탈퇴</button>
        <button class="manageBtn" id="memberBtn2" type="button">정보 수정</button>
    </div>
    
    <Br><br><br><br><br><br><br>
    <hr>

</body>
</html>