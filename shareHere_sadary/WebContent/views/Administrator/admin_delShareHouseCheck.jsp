<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete ShareHouse Check</title>
    <style>
        body{
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
            width: 70px;
        }
    </style>
</head>
<body>
    <h1><u>정말 강제삭제 하시겠습니까?</u></h1>
    <p>매물 상세 페이지를 통해 </p>
    <p>현재 매물이 맞는지 확인하실 수 있습니다.</p>
    <label>매물번호 : </label>
    <input type="text" class="infoBox" id="shNum" readonly> &nbsp;&nbsp;&nbsp;
    <label>회원번호 : </label>
    <input type="text" class="infoBox" id="memNum" readonly>
    <div id="btnBox">
        <input type="button" class="bottomBtns" id="detBtn" value="상세보기">
        <input type="button" class="bottomBtns" id="delBtn" value="삭제하기">
        <input type="button" class="bottomBtns" id="backBtn" value="취소하기">
    </div>
</body>
</html>
</body>
</html>