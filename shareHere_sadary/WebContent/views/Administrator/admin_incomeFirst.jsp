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
        <h1>Income</h1>
        <div id="title_Btns">
            <ul id="btnList"> 
                <li><button class="menuBtn" id="hostBtn" type="button">결제내역</button></li>
                <li><button class="menuBtn" id="outMemBtn" type="button">결제내역 수정</button></li>
            </ul>
        </div>
    </div>
        
    <div class="summary">
        <h2 id="wrapTitle">수익관리</h2>
        <div id="summBoxes">
            <table id="summTable">
                <tr id="tableTitle">
                    <td>저번 달 수입</td>
                    <td>이번 달 수입</td>
                    <td>올해 총 합</td>
                </tr>
                <tr>
                    <td><div class="textShowBox" id="newUsers" > 1,035,000</div></td>
                    <td><div class="textShowBox" id="newHosts"> 2,368,000</div></td>
                    <td><div class="textShowBox" id="newTotal">35,820,000</div></td>
                </tr>
            </table>
        </div>
    </div>

</body>
</html>