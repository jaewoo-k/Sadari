<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Income</title>
    <link href="admin_leftMenuCss.css" rel="stylesheet" type="text/css">
     <!-- font -->
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
    <style>
    
    body{
	    	font-family: 'Nanum Gothic', sans-serif;
	    }
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
        /*border-bottom: 1px solid black;*/
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
        width : 120px;
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
        <h1>Income</h1>
        <div id="title_Btns">
            <ul id="btnList"> 
                <li><button class="menuBtn" id="hostBtn" type="button">결제내역</button></li>
                <li><button class="menuBtn" id="outMemBtn" type="button">결제내역 수정</button></li>
            </ul>
        </div>
    </div>

    <div class="summary">
        <h2 id="wrapTitle">결제 상세 내역</h2>

        <hr><hr>
        <table id="userMemTable">
            <tr>
                <th>결제번호</th>
                <td>P001</td>
                <th>카드사/은행</th>
                <td>국민은행</td>
            </tr>

            <tr id="fromSecond">
                <th>회원이름</th>
                <td>이은솔</td>
                <th>카드번호</th>
                <td>1111-2222-3333-4444</td>
            </tr>

            <tr id="fromSecond">
                <th>아이디</th>
                <td>eunsol503</td>
                <th>유효기간</th>
                <td>12/24</td>
            </tr>

            <tr id="fromSecond">
                <th>구분</th>
                <td>룸메이트 일회권</td>
                <th>CVC</th>
                <td>987</td>
            </tr>

            <tr id="fromSecond">
                <th>승인날짜</th>
                <td>2021.01.11</td>
                <th>카드비밀번호</th>
                <td>9876</td>
            </tr>

            <tr id="fromSecond">
                <th>승인시간</th>
                <td>19:43:51</td>
                <th>결제금액</th>
                <td>200</td>
            </tr>
        </table>
    </div>

    <div id="btnBox">
        <button class="manageBtn" id="incomeBtn1" type="button">회원 상세정보 보기</button>
        <button class="manageBtn" id="incomeBtn2" type="button">결제 정보 수정</button>
        <button class="manageBtn" id="incomeBtn3" type="button">뒤로가기</button>
    </div>
</body>
</html>