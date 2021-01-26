<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>신고 상세 내역</title>
    <style>
        body{
            align-items: center;
            text-align: center;
			font-family: 'Nanum Gothic', sans-serif;
        }
        .infoBox{
            border : 1px solid black;
            width : 80px;
            height : 30px
        }

        #btnBox{
            margin-top : 15px;
        }
        .bottomBtns{
            background-color: gray;
            color : white;
            border-radius: 5px;
            border-style: none;
            height : 30px;
            width: 100px;
        }

        #detailReport{
            border : 1px solid black;
            background-color: lightgray;
            width : 80%;
            height : 70px;
            text-align: center;
            align-self: center;
            margin-top: 10px;
            margin-left : 60px;
        }

        #dateBox{
            width : 60px;
        }

        #payPwd, #pay{
            width : 120px;
        }
    </style>
</head>
<body>
    <h1>결제 내역 수정</h1>
    <hr>
    <label>카드번호 : </label>
    <input type="text" class="infoBox" readonly>
    <input type="text" class="infoBox" readonly>
    <input type="text" class="infoBox" readonly>
    <input type="text" class="infoBox" readonly>
    <br><br>
    <label>유효번호 : </label>
    <input type="text" class="infoBox" id="dateBox" readonly>
    <label>&nbsp;/ &nbsp;</label>
    <input type="text" class="infoBox" id="dateBox" readonly>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label>CVC 번호 : </label>
    <input type="text" class="infoBox" readonly>
    <br><br>
    <label>결제 비밀번호 :  </label>
    <input type="text" id="payPwd" class="infoBox">
    &nbsp;&nbsp;&nbsp;
    <label>결제 금액 :  </label>
    <input type="text" id="pay" class="infoBox">
    <div id="btnBox">
        <input type="button" class="bottomBtns" id="delBtn" value="확인">
        <input type="button" class="bottomBtns" id="backBtn" value="취소">
    </div>
</body>
</html>