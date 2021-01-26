<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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

<style>
body {
	font-family: 'Nanum Pen Script', cursive;
}

.outer_div {
	max-width: 80%;
	margin: auto;
}

.img_div {
	text-align: center;
	margin: auto;
	float: left;
}


.card-title {
	text-align: center;
}

.card-text {
	text-align: center;
}

.buttons{
	text-align: center;
	margin: auto;
}
</style>

<title>RoomMate</title>
</head>

<body>

	<!--  페이지를 이동해도 navi는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/navi.jsp"%>

	

	<div class="outer_div">
		<div class="inner_div">
			<h5 class="card-title">
				<span style="color: orangered; font-weight: bold; font-size: 40px;">%s</span>님의
				상세페이지
			</h5>
			<div class="img_div">
				<img src="img/rm_result1.PNG" style = "width : 350px; height: 450px;">
			</div>
			<div class="content_div">
				<br>
				<br>
				<p class="card-text">
					[성향검사 결과] <br> 개인주의 올빼미 <br> <br>
					[희망지역] <br> 강남구, 서초구, 관악구 <br> <br>
					[성별] <br>여성 <br> <br> 
					[한줄 자기소개] <br> 안녕하세요, 저는 현재 대학교 진학중입니다. <br>아르바이트가 끝나면 11시에 집에 귀가하고
					<br> 새벽시간에 공부하다가  기본 새벽 3시에 잡니다. <br> 시끄러운거 별로 안좋아합니다. 저랑 성향 맞으시는 올빼미 룸메 구합니다!! <br> <br>
				</p>
				<br><br>
			</div>
			<div class = "buttons">
			<button type="button" onclick="addUser();" class="btn btn-warning"
						style="background-color: rgb(0, 0, 0); color: white; border-color: black;">
						찜하기</button>
			<button type="button" onclick="addUser();" class="btn btn-warning"
						style="background-color: rgb(0, 0, 0); color: white; border-color: black;">
						신고하기</button>
			<button type="button" class="btn btn-warning"
						style="background-color: rgb(0, 0, 0); color: white; border-color: black;">
						목록으로</button>
			</div>
		</div>
	</div>

	<!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>

</html>