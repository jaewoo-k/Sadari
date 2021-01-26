<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Member</title>
    <link href="./admin_leftMenuCss.css" rel="stylesheet" type="text/css">
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
        float:center;
    }

    table{
        text-align: center;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        
    }

    th{
        padding-top : 7px;
        padding-bottom: 7px;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
    }

    td{
        padding-top : 3px;
        padding-bottom : 3px;
    }

    #fromSecond{
        border-bottom: 1px solid lightgray;
        height : 30px;
    }

    table{
        width:100%;
        margin-left : 25px;
    }

    #userMemTable{
        width: 650px;
    }

    #searchBtn{
        border: none;
        background : white;
        cursor: pointer;
        border-style: none;
    }

    .bottomSearch{
        display : block;
        margin-top: 30px;
        margin-left : 400px;
        width : 700px;
        height: 35px;
        text-align: center;
        
    }

    .bottomSearch select{
        background-color: gray;
        color: white;
        height : 34px;
        height: 34px;
        margin-right: -2px;
        border-radius: 8px 0px 0px 8px;
    }

    #searchMember{
        width : 250px;
        height : 30px;
        margin-left : -3px;
        border-radius: 0 8px 8px 0;
        border : 1px solid gray;
    }

    .bottomSearch img{
        height : 30px;
        padding : 0;
        margin-left:-2px;
    }
    
    
    #delBtn{
        background-color: black;
        color:white;
        opacity: 30%;
        border-style: none;
        height : 25px;
        cursor: pointer;
    }

    #delBtn:hover{
        opacity: 100%;
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
        <h2 id="wrapTitle">탈퇴회원</h2>
        <table id="userMemTable">
            <tr>
                <th>회원번호</th>
                <th>이름</th>
                <th>아이디</th>
                <th>이메일</th>
                <th>탈퇴일</th>
                <th>구분</th>
                <th>복구</th>
            </tr>

            <tr id="fromSecond">
                <td>U0001</td>
                <td>이은솔</td>
                <td>essol503</td>
                <td>essol503@gmail.com</td>
                <td>2021.01.09</td>
                <td>자체탈퇴</td>
                <td><button id="delBtn" type="button">복구하기</td>
                
            </tr>

            <tr id="fromSecond">
                <td>U0002</td>
                <td>사용자2</td>
                <td>user2</td>
                <td>user2@naver.com</td>
                <td>2021.01.09</td>
                <td>강제탈퇴</td>
                <td></td>
            </tr>

            <tr id="fromSecond">
                <td>U0003</td>
                <td>사용자3</td>
                <td>user3</td>
                <td>user3@naver.com</td>
                <td>2021.01.10</td>
                <td>자체탈퇴</td>
                <td><button id="delBtn" type="button">복구하기</td>
                
            </tr>
            <tr id="fromSecond">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr id="fromSecond">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr id="fromSecond">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr id="fromSecond">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr id="fromSecond">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

        </table>
    </div>

    <div class="bottomSearch">
        <form>
            <select name="search">
                <option value="us_no" selected>회원번호</option>
                <option value="us_name">이름</option>
                <option value="us_id">아이디</option>
            </select>
            <input type="text" id="searchMember" name="searchMem" width="250px" placeholder="검색어를 입력하세요.">
            <button type="button" id="searchBtn"><img src="adm_img/search.png"></button>
        </form>
    </div>
</body>
</html>