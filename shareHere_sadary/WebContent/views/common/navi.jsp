<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.*"%>
<%
	User loginUser = (User)session.getAttribute("loginUser");
	Host loginHost = (Host)session.getAttribute("loginHost");
	Admin loginAdmin = (Admin)session.getAttribute("loginAdmin");
%>
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
<%-- msg읽어서 알람띄워주고 msg 삭제하기 --%>
<% if(session.getAttribute("msg") != null){ %>
<script>
   alert('<%= session.getAttribute("msg")%>');
</script>
<%
    session.removeAttribute("msg");}
%>    
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

<%-- 비로그인 상태 --%>
			<% if((loginUser == null) && (loginHost == null)){ %>
            <ul class="nav_buttons">
                <li><button type="button" id="reBtn">Register</button></li>
                <li><button type="button" onclick="location.href='<%= request.getContextPath() %>/views/Login/login_Nnavi.jsp'" id="lgBtn">Login</button></li>
            </ul>
            <a href="#" class="navibar_toggleBtn" style="width: 5%;">
                <img src="./main_img/bars-solid.svg" style="width: 100%;">
            </a>
            <script>
         // 회원가입버튼 분류하기
            const reBtn = document.getElementById('reBtn');
            reBtn.addEventListener('click', function(){
               if(confirm('일반 회원이십니까?')){
                  location.href='<%= request.getContextPath() %>/views/Login/register_user.jsp';
               }else{
                  location.href='<%= request.getContextPath() %>/views/Login/register_hst.jsp';
               }
            });
         </script>
            
<!-- user로 로그인됐을때 -->
            <% }else if(loginUser != null){ %>
            	<ul class="nav_buttons">
                <li><button type="button" id="outBtn">Logout</button></li> 
<!-- 마이페이지로 갈때, 비밀번호 입력하는 방법 고민해보기 -->
                <li><a style="text-decoration: none; color: black;" id="user_name" href="<%=request.getContextPath()%>/views/Mypage/mp_update.jsp"><%= loginUser.getUserName() %>님 환영합니다.</a></li>
            </ul>
            
            <a href="#" class="navibar_toggleBtn" style="width: 5%;">
                <img src="./main_img/bars-solid.svg" style="width: 100%;">
            </a>
            
            <script>
				const outBtn = document.getElementById('outBtn');	//로그아웃
				outBtn.addEventListener('click',function(){
					location.href='<%= request.getContextPath() %>/member/logout';
				});
			</script>
			
<!-- Host 로그인됐을때 -->
            <% }else if(loginHost != null){ %>
            <ul class="nav_buttons">
                <li><button type="button" id="outBtn">Logout</button></li> 
<!-- 마이페이지로 갈때, 비밀번호 입력하는 방법 고민해보기 -->
                <li><a style="text-decoration: none; color: black;" id="user_name" href="<%=request.getContextPath()%>/views/Mypage/mp_update.jsp"><%= loginHost.getHst_name() %>님 환영합니다.</a></li>
            </ul>
            
            <a href="#" class="navibar_toggleBtn" style="width: 5%;">
                <img src="./main_img/bars-solid.svg" style="width: 100%;">
            </a>
            <script>
            const outBtn = document.getElementById('outBtn');	//로그아웃
        	outBtn.addEventListener('click',function(){
        		location.href='<%= request.getContextPath() %>/member/logout';
        	});
            </script>
            <%}else if(loginAdmin != null){ %>
<!-- 관리자 로그인됐을때 -->
            <ul class="nav_buttons">
                <li><button type="button" id="outBtn">Logout</button></li> 
<!-- 이름 클릭했을때 주소 입력해주시고, 버튼으로 바꾸셔도되고 배치는 은솔님 하고싶은거 넣으시면돼요 -->
                <li><a style="text-decoration: none; color: black;" id="user_name" href="<%=request.getContextPath()%><%-- 여기에 이동하고싶은거 넣으세용--%>"><%= loginAdmin.getAdm_id() %>님 환영합니다.</a></li>
            </ul>
            
            <a href="#" class="navibar_toggleBtn" style="width: 5%;">
                <img src="./main_img/bars-solid.svg" style="width: 100%;">
            </a>
            <script>
            const outBtn = document.getElementById('outBtn');	//로그아웃
        	outBtn.addEventListener('click',function(){
        		location.href='<%= request.getContextPath() %>/member/logout';
        	});
            </script>
            <%} %>
    </nav>
            
    
    <script>
    
    // 로고 클릭시 index.jsp로 이동
    const navlogo = document.getElementById("navlogo");
    navlogo.addEventListener("click", function() {
      location.href='<%= request.getContextPath() %>';
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