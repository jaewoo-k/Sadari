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
            width: 120px;
        }
        
        .bottomBtns:hover{
        	background-color: black;
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
    </style>
</head>
<body>
    <h1>신고 상세 내역</h1>
    <hr>
    <label>회원/매물 번호 : </label>
    <input type="text" class="infoBox" readonly> &nbsp;&nbsp;&nbsp;
    <label>이름: </label>
    <input type="text" class="infoBox" readonly>
    <label>아이디: </label>
    <input type="text" class="infoBox" readonly>
    <br><br>
    <label>신고일자: </label>
    <input type="text" class="infoBox" readonly>
    <label>경고횟수: </label>
    <input type="text" class="infoBox" readonly>
    <label>구분: </label>
    <input type="text" class="infoBox" readonly>
    <div id="detailReport">
        
    </div>
    <div id="btnBox">
        <input type="button" class="bottomBtns" id="detBtn" value="회원/매물 상세보기">
        <input type="button" class="bottomBtns" id="sendBtn" value="경고메세지보내기">
        <input type="button" class="bottomBtns" id="delBtn" value="삭제하기">
        <input type="button" class="bottomBtns" id="backBtn" value="취소하기">
    </div>
</body>
</html>