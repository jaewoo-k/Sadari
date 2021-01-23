<%@page import="roommate.model.vo.RoommateUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%
	ArrayList<RoommateUser> list = (ArrayList<RoommateUser>)request.getAttribute("list");

%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<!-- 글씨체 -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<!-- css 경로 -->
<link href="./hst_info.css" rel="stylesheet" type="text/css">
<!-- navi css 경로 -->
<link
	href="${pageContext.request.contextPath}/views/common/nav_foot.css"
	rel="stylesheet" type="text/css">

<title>RoomMate</title>

<style>
body {
	text-align: center;
}

.container {
	text-align: center;
	font-weight: bold;
	font-size: 20px;
}

.type-text {
	margin-top: 2%;
	margin-bottom: 10%;
}

.rm_page1_img {
	width: 200px;
	height: 200px;
}

button {
	outline: 0;
}
</style>
</head>

<body>

	<!--  페이지를 이동해도 navi는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/navi.jsp"%>
	
	<% if (list != null) { %>
	<h2>
		"<span style="color: darkslateblue;"><i><%= request.getAttribute("myName") %></i></span>"
		님과 비슷한 룸메이트를 한눈에!
	</h2>
	
	<br>
	<br>
		<% for (RoommateUser ru : list) { %>
		<div class="container">
			<div class="row">
				<div class="col">
					<!-- USER LIST 행 수만큼 반복문처리 -->
					
					<div class="card" style="width: 18rem; margin: auto;">
						<img src="<%= request.getAttribute("typeImagePath") %>" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">" <%= request.getAttribute("friendName") %>" 님</h5> <!-- 상대 회원 이름 -->
							<p class="card-text"> <%= request.getAttribute("friendInfo") %> </p>
							<button class="btn btn-primary"> 상세 보기 </button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<% } %>
	<% } else { %>
		<div class="container">
			<div class="row">
				<div class="col">	
					<div class="card" style="width: 18rem; margin: auto;">
						<h2 class="card-title"> 조회된 결과가 없습니다! </h2>
					</div>
				</div>
			</div>
		</div>
	<% } %>
		
	<!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>

</html>