<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #bigWrap{
        align-items: center;
        border : 1px solid gray;
        border-radius: 15px;
        width : 80%;
    }
    #pwdText{
        width : 100%;
        text-align: center;
    }
    #pwdField{
        width : 200px;
        height : 30px;
        background-color : lightgray;
        border-style: none;
    }
    #confirmBtn, #cancleBtn{
        text-align: center;
        background-color: black;
        border-radius: 3px;
        border-style: none;
        color : white;
        cursor: pointer;
        width : 90px;
        height : 20px;
    }

    #checkingBtns{
        width : 100%;
        text-align: center;
        margin-bottom: 5%;;
    }

</style>
</head>
<body>
    <div id="bigWrap">
        <form>
            <p style="text-align: center;">관리자 비밀번호를 확인해주세요.</p>
            <div id="pwdText">
                <input type="text" name="checkPwd" id="pwdField">
            </div>
            <br>
            <div id="checkingBtns">
                <button id="confirmBtn">확인</button>
                <button id="cancleBtn">취소</button>
            </div>
        </form>
     </div>
</body>
</html>