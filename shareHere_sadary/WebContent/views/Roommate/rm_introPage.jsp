<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<!-- navi css 경로 -->
<link
	href="${pageContext.request.contextPath}/views/common/nav_foot.css"
	rel="stylesheet" type="text/css">
<!-- 글씨체 -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">
<title>RoomMate</title>

<style>
body {
	text-align: center;
}

.container {
	text-align: center;
	font-weight: bold;
	font-size: 20px;
	padding-top: 5%;
}

.wrap {
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.button {
	width: 140px;
	height: 45px;
	font-family: 'Nanum Pen Script', cursive;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

.button:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
</style>
</head>

<body>

	<!--  페이지를 이동해도 navi는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/navi.jsp"%>
	<br><br><br>
	
	<p>
	<h3>당신은 어떤 룸메이트인가요?</h3>
	</p>
	<br>
	<br>

	<form name="sendResultForm" onsubmit="return send();" action="<%= request.getContextPath() %>/survey/result" method="post">
	<div class="card border-dark mb-3"
		style="max-width: 60%; margin: auto;">
		<div class="container" style="padding-bottom: 5%;">
			<div class="row">
				<div class="col-6" style="margin: auto;">
					<textarea name="intro" id="intro" cols="60" rows="10"
						style="border: none; background-color: rgb(241, 231, 197);"></textarea>
					<br>
					<button type="submit" class="button" style="margin-top: 10%;">
						NEXT
					</button>
				</div>
			</div>
		</div>
	</div>
	</form>
	
	<br><br><br>
	
	<!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/footer.jsp"%>
	
	<script>
	
	function send() {
		
		if (!document.sendResultForm.intro.value) { // intro 가 null일 때
			alert("내용을 입력하세요!");
			document.sendResultForm.intro.focus();
			
			return false;
		}
		
		return true;
	}
	
	
	</script>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>

</html>