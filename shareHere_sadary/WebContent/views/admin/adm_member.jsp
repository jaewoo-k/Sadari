<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member</title>

<!-- LeftMenu.Css -->
<link href="./admin_leftmenu.css" rel="stylesheet" type="text/css">
 
<style>
		body{
		    margin: 0;
		    padding: 0;
		}
		
		#menuImg{
		    float : left;
		    width: 400px;
		    height: 768px;
		    position: relative;
		}
		
		.menuBtn{
		    background-color: black;
		    color:white;
		    width: 100px;
		    height : 50px;
		    margin:30px;
		    opacity: 60%;
		    font-size: medium;
		    border : none;
		    width : 250px;
		    height: 60px;
		    cursor:pointer;
		    outline:none;
		}
		
		.menuBtn:hover{
		    opacity: 100%;
		}
		
		#adminLogo{
		    /*border : 1px solid red;*/
		    width : 150px;
		    position : absolute;
		    top : 50px;
		    left : 130px;
		}
		
		#title_Btns{
		    /*border : 1px solid blue;*/
		    position: absolute;
		    top : 280px;
		    left : 3px;
		}
		
		#title_link{
		    color : black;
		    width : 400px;
		    text-align: center;
		    font-size: 100px;
		    position: absolute;
		    left : 1px;
		    top : 150px;
		    text-decoration : none;
		    /*border : 1px solid orange;*/
		}
		
		#btnList{
		    list-style: none;
		    text-align: left;
		    margin-top : 10px;
		    
		}
		#btnList li{
		    /*border : 1px solid white;*/
		    margin-right: 40px;
		    height : 80px;
		}
        #summTable, td, tr{
            border-collapse: collapse;
        }

        #summTable{
            text-align : center;
            width : 100%;
        }

        #summTable td, tr{
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

        #listTable{
            display : block;
            margin-left : 400px;
            width : 700px;
            float:center;
        }

        #illMemberTable{
            text-align: center;
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            border-collapse: collapse;
            width: 650px;
            margin-left : 25px;
        }

        #illMemberTable>th{
            padding-top : 7px;
            padding-bottom: 7px;
            /*border-top: 1px solid black;
            border-bottom: 1px solid black;*/
        }

        #illMemberTable td{
            padding-top : 3px;
            padding-bottom : 3px;
        }

        #fromSecond{
        border-bottom: 1px solid lightgray;
        height : 30px;
    }
</style>
</head>
<body>
	<div class="leftMenu">
        <img src='adm_img/menuImg.jpg'id="menuImg">
        <a href="adm_first.jsp"><img src = "adm_img/adminLogo.png" id="adminLogo"></a>
        <a href="adm_member.jsp" id="title_link">Member</a>
        <div id="title_Btns">
            <ul id="btnList"> 
                <li><button class="menuBtn" id="userBtn" type="button">일반회원</button></li>
                <li><button class="menuBtn" id="hostBtn" type="button">임대인</button></li>
                <li><button class="menuBtn" id="outMemBtn" type="button">탈퇴회원</button></li>
            </ul>
            <script>
            	const userBtn = document.getElementById('userBtn');
            	userBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/usermem/list';
            	});
            	
            	const hostBtn = document.getElementById('hostBtn');
            	hostBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/hostmem/list';
            	});
            	
            	const outBtn = document.getElementById('outMemBtn');
            	outMemBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/outmem/list';
            	});
            </script>
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

    <div id="listTable">
        <table id="illlMemberTable">
            <tr>
                <th id="fromSecond">회원번호</th>
                <th>아이디</th>
                <th>이름</th>
                <th>신고일</th>
                <th>상세보기</th>
            </tr>
            <tr id="fromSecond">
                <td>U0001</td>
                <td>이은솔</td>
                <td>essol503</td>
                <td>essol503@gmail.com</td>
                <td>2021.01.09</td>
            </tr>

            <tr id="fromSecond">
                <td>U0002</td>
                <td>사용자2</td>
                <td>user2</td>
                <td>user2@naver.com</td>
                <td>2021.01.09</td>
            </tr>

            <tr id="fromSecond">
                <td>U0003</td>
                <td>사용자3</td>
                <td>user3</td>
                <td>user3@naver.com</td>
                <td>2021.01.10</td>
            </tr>
            <tr id="fromSecond">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</body>
</html>