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
        #summTable, td, tr{
            border-collapse: collapse;
        }

        table{
            text-align : center;
            width : 100%;
        }

        td, tr{
            padding-left : 10px;
            padding-right : 5px;
        }

        #tableTitle{
            font-size: 25px;
        }

        .summary{
            /*border: 1px solid blue;*/
            display : block;
            margin-left : 400px;
            width : 700px;
            float:center;
        }

        #wrapTitle{
            /*border: 1px solid red;*/
            text-align: center;
            padding-top: 30px;
            font-size: 40px;
            margin-top:0;
        }

        .textShowBox{
            border : 1px solid gray;
            text-align: right;
            padding-right : 10px;
            padding-top : 20px;
            margin-left : 5px;
            width : 200px;
            height : 40px;
            font-size: 20px;
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
        <h2 id="wrapTitle">이번달 신규 회원</h2>
        <div id="summBoxes">
            <table id="summTable">
                <tr id="tableTitle">
                    <td>일반회원</td>
                    <td>임대인</td>
                    <td>Total</td>
                </tr>
                <tr>
                    <td><div class="textShowBox" id="newUsers" > 53</div></td>
                    <td><div class="textShowBox" id="newHosts"> 12</div></td>
                    <td><div class="textShowBox" id="newTotal">65</div></td>
                </tr>
            </table>
        </div>
    </div>
    
    <br><br>
    <h2 style="text-align: center;">회원 신고 내역</h2>
    <hr>
    
    

</body>
</html>