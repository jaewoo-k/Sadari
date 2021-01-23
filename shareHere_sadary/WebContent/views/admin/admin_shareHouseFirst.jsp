<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage ShareHouse</title>
     <!-- font -->
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
 
    <link href="admin_leftMenuCss.css" rel="stylesheet" type="text/css">
    <style>
        #summTable, td, tr{
            border-collapse: collapse;
            /*border : 1px solid black;*/
        }

        #summTable{
            text-align : left;
            padding-top : 50px;
            width : 700px;
        }

        #tableTitle{
            font-size: 30px;
            font-weight: bolder;
        }

        .summary{
            /*border: 1px solid blue;*/
            display : block;
            margin-left : 420px;
            width : 700px;
            float:center;
        }

        #wrapTitle{
            /*border: 1px solid red;*/
            text-align: center;
            padding-top: 30px;
            font-size: 20px;
            margin-top:0;
        }

        .textShowBox{
            border : 1px solid gray;
            text-align: right;
            padding-top : 20px;
            padding-bottom : 20px;
            width : 220px;
            height : 30px;
            font-size: 40px;
        }

        #forWidth1{
            width : 240px;
        }

        #forWidth2{
            width:200px;
        }

        #newShareHouseBtn{
            background-color: black;
            color:white;
            width: 90px;
            height : 70px;
            border-radius: 13px;
            font-size: large;
            border : none;
            cursor:pointer;
            outline:none;
            margin-left : 40px;
        }
        
        #forLay{
        	position : relative;
        }

        #illMemberTable{
            text-align: center;
            /*border-top: 1px solid black;
            border-bottom: 1px solid black;*/
            border-collapse: collapse;
            width: 650px;
			position : absolute;
			top : 250px;
			left : 400px;
        }

        #illlMemberTable th{
            padding-top : 7px;
            padding-bottom: 7px;
            /*border-top: 1px solid black;
            border-bottom: 1px solid black;*/
        }

        #illlMemberTable td{
            padding-top : 3px;
            padding-bottom : 3px;
        }

        #fromSecond{
            /*border-bottom: 1px solid lightgray;*/
            height : 30px;
            font-size: medium;
        }
        
        

</style>

</head>
<body>
    <div class="leftMenu">
        <img src='adm_img/menuImg.jpg'id="menuImg">
        <img src = "adm_img/adminLogo.png" id="adminLogo">
        <h1>Share House</h1>
        <div id="title_Btns">
            <br><br><br>
            <ul id="btnList"> 
                
                <li><button class="menuBtn" id="hostBtn" type="button">쉐어하우스 리스트</button></li>
                <li><button class="menuBtn" id="outMemBtn" type="button">삭제된 매물보기</button></li>
            </ul>
        </div>
    </div>

    <div class="summary">
        <div id="summBoxes">
            <table id="summTable">
                <tr>
                    <td style="height : 50px;">  </td>
                </tr>
                <tr id="tableTitle">
                    <td id="forWidth1">이번달</td>
                    <td rowspan="3" id="forWidth2"><div class="textShowBox" id="newUsers" > 53</div></td>
                    <td rowspan="3"><button id="newShareHouseBtn" type="button">신규쉐하 보러가기</button></td>
                </tr>
                <tr id="tableTitle">
                    <td>신규 쉐어하우스</td>
                </tr>
            </table>
        </div>
    </div>
    
    <br><br>
    <h2 style="text-align: center;" id="forLay">쉐어하우스 신고 내역</h2>
    <hr>

    <div id="listTable">
        <table id="illMemberTable">
            <tr>
                <th id="fromSecond">쉐하번호</th>
                <th>아이디</th>
                <th>이름</th>
                <th>신고일</th>
                <th>상세보기</th>
            </tr>
            <tr id="fromSecond">
                <td>S0001</td>
                <td>이은솔</td>
                <td>essol503</td>
                <td>essol503@gmail.com</td>
                <td>2021.01.09</td>
            </tr>

            <tr id="fromSecond">
                <td>S0002</td>
                <td>사용자2</td>
                <td>user2</td>
                <td>user2@naver.com</td>
                <td>2021.01.09</td>
            </tr>

            <tr id="fromSecond">
                <td>S0003</td>
                <td>사용자3</td>
                <td>user3</td>
                <td>user3@naver.com</td>
                <td>2021.01.10</td>
            </tr>
  
        </table>
    </div>

</body>
</html>