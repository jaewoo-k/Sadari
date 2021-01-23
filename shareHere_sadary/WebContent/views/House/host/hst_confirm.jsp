<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>House 확인 페이지</title>
<!-- 글자 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<style>
.hst_table {
	padding: 5% 10% 5% 10%;
	font-family: 'Nanum Gothic', sans-serif;
	font-weight: bold;
	height : 600px;
}

#update, #delete {
	background-color: white;
	border: 0px;
	border-radius: 30%;
}

#update:hover {
	background-color: rgb(247, 218, 57);
}

#delete:hover {
	background-color: rgb(175, 29, 29);
}

#update img, #delete img {
	width: 30px;
}
</style>
 <!-- navi css 경로 -->
<link href ="${pageContext.request.contextPath}/views/common/nav_foot.css" rel="stylesheet" type="text/css">
</head>
<body>

	<!--  페이지를 이동해도 Host_navi는 계속 상단에 노출되게끔 -->
   <%@include file="/views/House/host/hst_navi.jsp" %>
	
    <div class="hst_table">
    <h2>HOST 하우스 확인</h2>
        <table class="table">
            <thead>
            <tr class="table-dark">
                <th scope="col">#</th>
                <th scope="col">house Name</th>
                <th scope="col">성별</th>
                <th scope="col">타입</th>
                <th scope="col">면적</th>
                <th scope="col">보증금</th>
                <th scope="col">월세</th>
                <th scope="col">입주날짜</th>
                <th scope="col">수정하기</th>
                <th scope="col">삭제하기</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>커먼타운 센트럴 261</td>
                <td>여성전용</td>
                <td>1인실</td>
                <td>8.5㎡</td>
                <td>100만원</td>
                <td>40만원</td>
                <td>2020-12-26</td>
                <td>
                    <button id="update" onclick="updateHouse()">
                        <img src="https://cdn.iconscout.com/icon/free/png-64/edit-1912229-1617698.png" alt="update">
                    </button>
                </td>
                <td>
                    <button id="delete" onclick="deleteHouse()">
                        <img src="https://cdn.iconscout.com/icon/free/png-64/delete-1912233-1617702.png" alt="delete">
                    </button>
                </td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>커먼타운 센트럴 261</td>
                <td>남성전용</td>
                <td>1인실</td>
                <td>11.5㎡</td>
                <td>112만원</td>
                <td>42만원</td>
                <td>2020-12-15</td>
                <td>
                    <button id="update" onclick="updateHouse()">
                        <img src="https://cdn.iconscout.com/icon/free/png-64/edit-1912229-1617698.png" alt="update">
                    </button>
                </td>
                <td>
                    <button id="delete" onclick="deleteHouse()">
                        <img src="https://cdn.iconscout.com/icon/free/png-64/delete-1912233-1617702.png" alt="delete">
                    </button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    
    <!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
   <%@include file="/views/common/footer.jsp" %>
</body>
</html>