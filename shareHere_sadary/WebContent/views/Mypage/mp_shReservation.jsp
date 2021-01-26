<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
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

    <!-- navi css 경로 -->
<link href ="${pageContext.request.contextPath}/views/common/nav_foot.css" rel="stylesheet" type="text/css">

<style>

	.nav-link{
		color:gray;
	}
	
	.nav-link:hover{
		color:black;
	}
	
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

#bottomNav{
    margin-left : 45%;
    margin-right : 45%;
}

#numCss{
   	color:black;
}

#numCss:hover{
    background-color: gray;
    color:white;
}

#forCss{
    background-color: black;
    color : white;
}

#forCss:hover{
    background-color: gray;
    color:white;
}
</style>

</head>
<body>

		<!--  페이지를 이동해도 navi는 계속 상단에 노출되게끔 -->
	   <%@include file="/views/common/navi.jsp" %>
    <ul class="nav nav-tabs">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="<%= request.getContextPath() %>/views/Mypage/mp_update.jsp">회원 정보 수정</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="<%= request.getContextPath() %>/views/Mypage/mp_shReservation.jsp">예약한 방 정보</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/views/Mypage/mp_rmJjimList.jsp">룸메이트 찜 목록</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<%= request.getContextPath() %>/views/Mypage/mp_payList.jsp">결제내역 확인</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">회원탈퇴</a>
        </li>
      </ul>

      <div class="hst_table">
        <h2>HOUSE 확인</h2>
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
        
        <nav aria-label="Page navigation example" id="bottomNav">
            <ul class="pagination">
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous" id="forCss">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link" href="#" id="numCss">1</a></li>
              <!--<li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>-->
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next" id="forCss">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
        

    <!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
   <%@include file="/views/common/footer.jsp" %>
</body>
</html>