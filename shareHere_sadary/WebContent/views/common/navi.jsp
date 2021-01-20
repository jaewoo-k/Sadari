<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is a ShareHere Navi</title>
 <!-- font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
 
 <!-- Navi & footer CSS-->

    <link href="./nav_foot.css?v=3" rel="stylesheet" type="text/css">
    
</head>
<body>
<nav class="navibar">
            <ul class="nav_menu">
                <li id="house">House</li>
                <li id="rm">RoomMate</li>
                <li id="au">About US</li>
            </ul>

            <hr class="line">

            <div class="nav_logo">
                <button id="navlogo" style="background-color: white; border: 0px;"><img src="${pageContext.request.contextPath}/views/common/img/naviLogo.png"></button>
            </div>

            <ul class="nav_buttons">
                <li><button type="button" onclick="location.href='#'" id="reBtn">Register</button></li>
                <li><button type="button" onclick="location.href='#'" id="lgBtn">Login</button></li>
            </ul>

            <a href="#" class="navibar_toggleBtn" style="width: 5%;">
                <img src="./main_img/bars-solid.svg" style="width: 100%;">
            </a>
    </nav>
    
    <script>
    
    // 로고 클릭시 index.jsp로 이동
    const navlogo = document.getElementById("navlogo");
    navlogo.addEventListener("click", function() {
		location.href='<%= request.getContextPath() %>';
	});
    
    // Login 페이지 이동
    const loginBtn = document.getElementById("lgBtn");
    lgBtn.addEventListener('click', function(){
    	location.href='<%= request.getContextPath() %>/views/Login/login_Nnavi.jsp';
    });
    
    // register 페이지 이동
    const registerBtn = document.getElementById("reBtn");
    registerBtn.addEventListener('click', function(){
    	location.href='<%= request.getContextPath() %>/views/Login/register_user.jsp';
    });
    
    // House 페이지 이동
    const houseBtn = document.getElementById("house");
    houseBtn.addEventListener("click", function(){
    	location.href='<%= request.getContextPath()%>/views/House/search/sh_searchPage.jsp ';
    });
    
    // roomMate페이지 이동
    const roomMateBtn = document.getElementById("rm");
    roomMateBtn.addEventListener("click", function(){
    	location.href='<%= request.getContextPath()%>/views/Roommate/rm_survey.jsp ';
    });
    
    // aboutus페이지 이동
     const aboutUsBtn = document.getElementById("au");
     aboutUsBtn.addEventListener("click", function(){
    	location.href='<%= request.getContextPath()%>/views/common/aboutus.jsp ';
    });
    
    </script>
</body>
</html>