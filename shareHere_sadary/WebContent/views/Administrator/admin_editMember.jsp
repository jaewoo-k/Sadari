<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Member</title>
    <style>
	    body{
	    font-family: 'Nanum Gothic', sans-serif;
	    }
        .infoBoxs{
            border : 1px solid gray;
            background-color: white;
            height : 30px;
            border-radius: 5px;
        }
        .infoFixBoxs{
            border : 1px solid gray;
            background-color: lightgray;
            height : 30px;
            border-radius: 5px;
        }

        #memnumBox, #nameBox, #idBox{
            width : 90px;
        }

        #emailBox, #birthBox{
            width : 150px;
        }

        #genderBox{
            width : 50px;
        }

        #phoneBox{
            width : 250px;
        }

        #pwdBox{
            width : 260px;
        }

        .finalBtns{
            margin : 5px;
            margin-top : 30px;
            text-align: center;
            float : right;
            border-radius: 5px;
            border-style: none;
            background-color: lightgray;
            width: 70px;
            height : 30px;
            cursor: pointer; 
        }

        .finalBtns:hover{
            border: 3px solid black;
        }
    </style>
</head>
<body>
    <div id="firstWrap">
        <h2 style="text-align: center;">회원정보 수정</h2>
        <div id="secondWrap">
            <form>
                <label>회원번호 &nbsp;:&nbsp; </label>
                <input type="text" class="infoFixBoxs" id="memnumBox" readonly>&nbsp;
                <label>이름 &nbsp;:&nbsp; </label>
                <input type="text" class="infoFixBoxs" id="nameBox" readonly>&nbsp;
                <label>아이디 &nbsp;:&nbsp; </label>
                <input type="text" class="infoFixBoxs" id="idBox" readonly>&nbsp;
                <label>성별 &nbsp;:&nbsp; </label>
                <input type="text" class="infoFixBoxs" id="genderBox" readonly>
                <br>
                <br>
                <div id="thirdWrap">
                    <label>전화번호 &nbsp;:&nbsp; </label>
                    <input type="text" class="infoBoxs" id="phoneBox">&nbsp;
                    <label>생년월일 &nbsp;:&nbsp; </label>
                    <input type="text" class="infoBoxs" id="birthBox">
                    <br>
                    <br>
                    <label>이메일 &nbsp;:&nbsp; </label>
                    <input type="text" class="infoBoxs" id="emailBox">&nbsp;
                    <label>비밀번호 &nbsp;:&nbsp; </label>
                    <input type="text" class="infoBoxs" id="pwdBox" readonly>
                </div>
                <input type="button" class="finalBtns" id="submit" value="수정하기">
                <input type="button" class="finalBtns" id="back" value="취소하기">
                
                
            </form>
        </div>
    </div>
</body>
</html>