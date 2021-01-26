<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administrator Page</title>

<style>
    /* 1024 X 714 사이즈로 새로운 창, 고정(창 사이즈 조절 불가)으로 띄우기*/
    body{
        background-image: url('../Administrator/adm_img/background.jpg');
        background-repeat: no-repeat;
        background-size:1070px 768px;
        font-family: 'Nanum Gothic', sans-serif;
    }

    .title{
        color : white;
        width: 100%;
        /*border: 1px solid red;*/
        padding-top:5%;
        margin-top: 3%;
    }

    h1{
        text-align: center;
        font-size: 500%;
    }

    .background{
        /*border: 1px solid yellowgreen;*/
        margin-top: 1%;
    }

    table{
        margin: auto;
    }

    table, tr, td{
        /*border: 1px solid blue;*/
    }

    .firstBtn{
        background-color: black;
        color:white;
        width: 200px;
        height : 100px;
        margin:30px;
        border-radius: 13px;
        font-size: large;
        border : none;
        cursor:pointer;
        outline:none;
    }



    
</style>
</head>
<body>
<div class="title">
        <h1>Administrator</h1>
    </div>
    <div class="background">
       <table id="firstTB">
           <tr>
               <td>
                   <button class="firstBtn" id="adm_member" type="button">회원관리</button>
                   <button class="firstBtn" id="adm_house" type="button">쉐어하우스관리</button>
                   <button class="firstBtn" id="adm_income" type="button">수익관리</button>
               </td>
            </tr>
            <tr>
               <td>
                <button class="firstBtn" id="adm_fourth" type="button">    </button>
                <button class="firstBtn" id="adm_fifth" type="button">    </button>
                <button class="firstBtn" id="adm_sixth" type="button">    </button>
               </td>
           </tr>
       </table>
    </div>
</body>
</html>