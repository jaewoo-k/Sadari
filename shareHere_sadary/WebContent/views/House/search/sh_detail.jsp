<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 세부 페이지</title>
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
<link href="./sh_detail.css" rel="stylesheet" type="text/css">
<!-- navi css 경로 -->
<link href="<%= request.getContextPath() %>/views/common/nav_foot.css"
	rel="stylesheet" type="text/css">
	
<style>
.address{
	margin-top: 40px;
	margin-bottom: 0px;
	font-size: 20px;
}


/* 시설 및 서비스 */
.ss{
    text-align: center;
    width: 100%;
    margin-top: 20%;
}

/* 정보 */
.informTB{
	margin-top: 5%;
  text-align: center;
}

.informTB  img {
	display: block;
	margin: 0 auto;
	width: 40px;
}

.informTB  li {
	font-size: 14px;
	list-style: none;
	padding-top: 5%;
}
</style>
</head>
<body>
	<!--  페이지를 이동해도 navi는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/navi.jsp"%>

	<section id="detail">
		<!-- 이미지 버튼 -->
		<div class="imgButtons">
			<button class="imgBtn ceo">대표사진</button>
			<button class="imgBtn public">공용시설</button>
			<button class="imgBtn room">방사진</button>
			<button class="imgBtn amenities">편의시설</button>
			<button class="imgBtn etc">기타</button>
		</div>
		<!-- carousel slide-->
		<div id="carouselExampleDark" class="carousel carousel-dark slide"
			data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#carouselExampleDark" data-bs-slide-to="0"
					class="active"></li>
				<li data-bs-target="#carouselExampleDark" data-bs-slide-to="1"></li>
				<li data-bs-target="#carouselExampleDark" data-bs-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<!-- 슬라이드 쇼 -->
				<div class="carousel-item active" data-bs-interval="10000">
					<!--가로 사진-->
					<img
						src="https://www.bloter.net/wp-content/uploads/2016/08/%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8F%B0-%EC%82%AC%EC%A7%84.jpg"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img
						src="https://post-phinf.pstatic.net/MjAxODA4MjdfMTc5/MDAxNTM1MzU3NjAwNzA0.-Yndc2scBlgVKjKukjC8voRd7zp2jVrd6DapXe4P5y4g.Ff9dBIPpYugTaTvUQrS_pobw3x5pZrcFiwxjPSAypK8g.JPEG/00_%EB%A9%94%EC%9D%B8.jpg?type=w1200"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img
						src="https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F2731DF3458E104F82A"
						class="d-block w-100" alt="...">
				</div>
			</div>
			<!-- / 슬라이드 쇼 끝 -->

			<!-- 왼쪽 오른쪽 화살표 버튼 -->
			<a class="carousel-control-prev" href="#carouselExampleDark"
				role="button" data-bs-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleDark"
				role="button" data-bs-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
			</a>
			<!-- / 화살표 버튼 끝 -->
		</div>

		<!-- 하우스 이름 -->
		<div class="house name">
			<span class="w1">
				<h1>커먼타운 센트럴 261</h1>
			</span>
			<!-- 매물 신고하기  -->
			<span class="w1">
				<button id="siren">
					<img
						src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/OOjs_UI_icon_alert-yellow.svg/1024px-OOjs_UI_icon_alert-yellow.svg.png"
						alt="" width="30px">
				</button>
			</span>
			<!-- 예약하기 버튼 -->
			<span class="w1" id="reserva">
				<button id="reserBtn">예약하기</button>
			</span>
		</div>

		<!-- 상세 메뉴바 -->
		<div class="house menu">
			<nav id="hs_navi">
				<ul>
					<li>하우스 소개</li>
					<li>방 정보</li>
					<li>시설 및 서비스</li>
					<li>위치</li>
					<li>정보</li>
				</ul>
			</nav>
		</div>

		<!-- 하우스 소개 -->
		<div class="house type">
			<table id="htypeTB">
				<tr>
					<th>주택유형</th>
					<th>건물면적</th>
					<th>주택구조</th>
					<th>운영층수</th>
				</tr>

				<tr>
					<td>빌라</td>
					<td>80.2m²</td>
					<td>복층</td>
					<td>2층은 남성, 3~4층은 여성 전용입니다.</td>
				</tr>
			</table>
		</div>
		<div class="house intro">
			<hr>
			<pre>
            센트럴 261은 남산 아래에 있어서 옆으로는 한양도성과 백범공원이, 앞으로는 서울역이 있는 특별한 곳에 위치해있습니다. 
            총 29실의 1인실로 되어 있습니다.  
            개인 프라이버시와 공용공간이 나누어져 있어 삶의 질을 향상시킵니다. 
            입주와 동시에 바로 편리한 생활이 가능한 풀 옵션 가구와 가전이 비치되어 있습니다.
            도보로 10분이면 서울역에 도착하는 최고의 역세권이지만 동시에 남산과 후암동의 여유가 묻어나는 한적한 동네이기도 합니다. 
            시청과 을지로, 광화문을 아우르는 서울의 중심지 센트럴은 사람과 건물도 많지만 남산과 고궁도 가까워 더욱 매력적인 지역입니다.
            </pre>
		</div>

		<!-- 방 정보 -->
		<div class="house roomInfo" style="width: 100%;">
			<hr>
			<div class="card mb-3">
				<div class="row no-gutters">
					<div class="col">
						<img id="roomImg"
							src="https://i.pinimg.com/originals/54/88/35/5488351dfdde55dc9f088eb88a7fef34.png"
							alt="방1">
					</div>
					<div class="col">
						<div class="card-body">
							<button id="possible">입주 가능</button>
							<h4>1인실(여성)</h4>
							<hr>
							<div id="rText">
								<h5>타입</h5>
								<b>1인실</b><br>
								<h5>성별</h5>
								<b>여성전용</b><br>
								<h5>관리비</h5>
								<b>10만원</b><br>
								<h5>면적</h5>
								<b>5.5m²</b><br>
								<h5>월세</h5>
								<b>40만원</b><br>
								<h5>입주 가능일</h5>
								<b>2020-12-25</b>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="card mb-3">
				<div class="row no-gutters">
					<div class="col">
						<img id="roomImg"
							src="https://t1.daumcdn.net/cfile/tistory/231EAE3354EF6EE931"
							alt="방2">
					</div>
					<div class="col">
						<div class="card-body">
							<button id="impossible">입주 불가능</button>
							<h4>1인실(남성)</h4>
							<hr>
							<div id="rText">
								<h5>타입</h5>
								<b>1인실</b><br>
								<h5>성별</h5>
								<b>남성전용</b><br>
								<h5>관리비</h5>
								<b>10만원</b><br>
								<h5>면적</h5>
								<b>5.5m²</b><br>
								<h5>월세</h5>
								<b>40만원</b><br>
								<h5>입주 가능일</h5>
								<b>없음</b>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 시설 및 서비스 -->
		<div class="house service">
			<hr>
			<br>
			<table class="ss">
				<tr>
					<th><h5>[개인공간]</h5></th>
					<th><h5>[공용공간]</h5></th>
					<th><h5>[서비스]</h5></th>
				</tr>

				<tr>
					<td id="serviceP">
						<ul>
							<li>스마트 도어락</li>
							<li>수납장</li>
							<li>USB 콘센트</li>
							<li>책상 & 의자 & 옷장</li>
							<li>에어컨</li>
						</ul>
					</td>
					<td id="serviceC">
						<ul>
							<li>화장실(6개)</li>
							<li>샤워부스 8개</li>
							<li>키친 & 라운지 2개</li>
							<li>루프탑</li>
							<li>1층 카페</li>
						</ul>
					</td>
					<td id="serviceS">
						<ul>
							<li>매주 공용공간 청소</li>
							<li>Wi-Fi</li>
							<li>KT 텔레캅 보안</li>
							<li>IPTV</li>
							<li>정기적 시설관리생활</li>
						</ul>
					</td>
				</tr>
			</table>
		</div>

		<!-- 주소 -->
		<div class="house address">
			<hr>
			<%@include file="/views/House/search/sh_detail_map.jsp"%>
                <div class="address">
                	<img src="https://cdn.iconscout.com/icon/free/png-64/map-917-434076.png" alt="address" width="40px">
                    	서울 용산구 소월로2길 5 2~4층
                </div>
		</div>

		<!-- 정보 -->
		<div class="house inform">
			<hr>
			<table class="informTB">
				<tr>
					<th><img
						src="https://cdn.iconscout.com/icon/free/png-64/atm-1780467-1517557.png"
						alt="bank"> 은행</th>
					<th><img
						src="https://cdn.iconscout.com/icon/free/png-64/mall-1780507-1517597.png"
						alt="mart"> 마트</th>
					<th><img
						src="https://cdn.iconscout.com/icon/free/png-64/pharmacy-1780503-1517593.png"
						alt="pharmacy"> 약국</th>
					<th><img
						src="https://cdn.iconscout.com/icon/free/png-64/ev-station-1780529-1517619.png"
						alt="oil"> 주유소</th>
					<th><img
						src="https://cdn.iconscout.com/icon/free/png-64/local-cafe-1780519-1517609.png"
						alt="cafe"> 카페</th>
					<th><img
						src="https://cdn.iconscout.com/icon/free/png-64/convenience-store-1780517-1517607.png"
						alt="convenienceStore"> 편의점</th>
				</tr>
				<tr>
					<td>
						<ul>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
						</ul>
					</td>

					<td>
						<ul>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
						</ul>
					</td>

					<td>
						<ul>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
						</ul>
					</td>

					<td>
						<ul>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
						</ul>
					</td>

					<td>
						<ul>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
						</ul>
					</td>

					<td>
						<ul>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
							<li>KB국민은행ATM 서울역점</li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
		
	<script>
        // 캐러셀 슬라이드 이미지
        $(".carousel").carousel({
            interval: 2000 //기본 5초 
        });
        
        </script>
        
        <script>
        
     	// 신고하기 버튼 이벤트
       	const reportBtn = document.getElementById('siren');
        reportBtn.addEventListener('click', function(){
        	location.href='<%= request.getContextPath()%>/views/House/search/sh_report.jsp';
        });
        
        // 예약하기 버튼 이벤트
        const reservationBtn = document.getElementById('reserBtn');
        reservationBtn.addEventListener('click', function(){
        	location.href='<%= request.getContextPath()%>/views/House/search/sh_reservation.jsp';
        });
      
        </script>
        

	<!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/footer.jsp"%>
</body>
</html>