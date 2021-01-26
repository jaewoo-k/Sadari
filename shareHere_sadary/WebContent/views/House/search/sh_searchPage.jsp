<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과 페이지</title>
 <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
 <!-- navi css 경로 -->
<link href="<%= request.getContextPath() %>/views/common/nav_foot.css"
	rel="stylesheet" type="text/css">  
<style>
  /* 검색바 영역 */
        #searcharea{
            width : 100%;
            height : 200px;
      		
            background-repeat: no-repeat;
            background-size: 100% 100%;
            position: relative;
        }

       
        
        .selectoption {
            width : 20%;
            height : 50px;
            border-radius: 3px;
            border : 1px solid lightgray;
            margin-top: 2%;
           
        }
        
        #option1 {
            margin-left: 5%;
        }

       

        #searchtext {
            width : 81%;
            height : 50px;
            margin-left: 5%;
            margin-top: 1%;
            border-radius: 3px;
            border : 1px solid lightgray;
            background-color: ghostwhite;
        }
        #searchbutton {
            width : 8%;
            height : 50px;
            background: black;
            color : white;
            border-radius: 7px;
            border : 1px solid black;
        }
        
        /* 리스트 영역 */
        
        #possible {
            background-color: rgb(14, 92, 18);
	        color: white;
	        border-radius: 5px 5px 5px 5px;
	        border: 0px;
	        float: right;
	        font-size: 13px;
            padding: 5px 20px 5px 20px;
            
        }

        #impossible {
            background-color: rgb(119, 13, 13);
	        color: white;
	        padding: 5px 20px 5px 20px;
	        border-radius: 5px 5px 5px 5px;
	        border: 0px;
	        float: right;
	        font-size: 13px;
            padding: 5px 20px 5px 20px;
        }
		
		/* 전체 리스트 영역 (너비 조절은 인라인으로 함)*/
        .container {
            float: left;
        }
        
        .row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3{
        	border : 1px silid blue;
        }
        
      
      
        .card-text{
            font-family: 'Nanum Gothic', sans-serif;
	        font-weight: bold;
        }

</style>
</head>
<body>
<!--  페이지를 이동해도 navi는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/navi.jsp"%>
	<br><br><br>
<form>
        <div id="searcharea">
            <div id="searchbar">
                <select id="option1" class="selectoption">
                    <option value="gender" selected>성별</option>
                    <option value="nothing1">선택안함</option> 
                    <option value="male">남성</option>
                    <option value="female">여성</option>
                    <option value="both">남녀공용</option>
                </select>
                <select id="option2" class="selectoption">
                    <option value="hosingtype" selected>주택유형</option>
                    <option value="nothing2">선택안함</option>
                    <option value="vila">빌라</option>
                    <option value="apart">아파트</option>
                    <option value="singlehouse">단독주택</option>
                </select>
                <select id="option3" class="selectoption">
                    <option value="roomtype" selected>룸형태</option>
                    <option value="nothing3">선택안함</option>
                    <option value="single">1인실</option>
                    <option value="double">2인실</option>
                    <option value="triple">3인실</option>
                </select>
                <select id="option4" class="selectoption">
                    <option value="friends" selected>룸메와같이찾기</option>
                    <option value="nothing4">선택안함</option>
                    <option value="two">2명</option>
                    <option value="three">3명</option>
                </select>
                <input type="search" id="searchtext" placeholder="지역, 지하철역 검색" size="100">
                <button type="submit" id="searchbutton">search</button>
            </div>
        </div>
    </form>
    <br><br><br>
    
    <!-- 리스트 영역 -->

	<span>
		<div class="container" style="width: 50%;">
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<div class="col">
					<div class="card shadow-sm">
						<img
							src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg"
							alt="우주84호점" class="bd-placeholder-img card-img-top" width="100%"
							height="225">
						<div class="card-body">
							<p class="card-text">
								sh1호점
								<button class="btn" id="possible">입주가능</button>
								<br>
								<br> 단독주택 <br> 여성전용
							</p>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-sm">
						<img
							src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg"
							alt="이미지영역" class="bd-placeholder-img card-img-top" width="100%"
							height="225">
						<div class="card-body">
							<p class="card-text">
								sh2호점
								<button class="btn" id="possible">입주가능</button>
								<br>
								<br> 아파트 <br> 남성전용
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img
							src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg"
							alt="이미지영역" class="bd-placeholder-img card-img-top" width="100%"
							height="225">
						<div class="card-body">
							<p class="card-text">
								sh3호점
								<button class="btn" id="possible">입주가능</button>
								<br>
								<br> 아파트 <br> 여성전용
							</p>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-sm">
						<img
							src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg"
							alt="이미지영역" class="bd-placeholder-img card-img-top" width="100%"
							height="225">
						<div class="card-body">
							<p class="card-text">
								sh4호점
								<button class="btn" id="possible">입주가능</button>
								<br>
								<br> 빌라 <br> 남녀공용
							</p>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-sm">
						<img
							src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg"
							alt="이미지영역" class="bd-placeholder-img card-img-top" width="100%"
							height="225">
						<div class="card-body">
							<p class="card-text">
								sh5호점
								<button class="btn" id="possible">입주가능</button>
								<br>
								<br> 빌라 <br> 여성전용
							</p>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-sm">
						<img
							src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg"
							alt="이미지영역" class="bd-placeholder-img card-img-top" width="100%"
							height="225">
						<div class="card-body">
							<p class="card-text">
								sh6호점
								<button class="btn" id="impossible">입주불가능</button>
								<br>
								<br> 단독주택 <br> 남성전용
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img
							src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg"
							alt="이미지영역" class="bd-placeholder-img card-img-top" width="100%"
							height="225">
						<div class="card-body">
							<p class="card-text">
								sh7호점
								<button class="btn" id="possible">입주가능</button>
								<br>
								<br> 아파트 <br> 여성전용
							</p>
						</div>
					</div>
				</div>

				<div class="col">
					<div class="card shadow-sm">
						<img
							src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg"
							alt="이미지영역" class="bd-placeholder-img card-img-top" width="100%"
							height="225">
						<div class="card-body">
							<p class="card-text">
								sh8호점
								<button class="btn" id="possible">입주가능</button>
								<br>
								<br> 빌라 <br> 남녀공용
							</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img
							src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg"
							alt="이미지영역" class="bd-placeholder-img card-img-top" width="100%"
							height="225">
						<div class="card-body">
							<p class="card-text">
								sh9호점
								<button class="btn" id="impossible">입주불가능</button>
								<br>
								<br> 단독주택 <br> 여성전용
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

	</span>

	<span> <img src="../host/hst_img/seoulphoto.png" style="width: 50%; height: 1100px;"></span>
    <br><br>
    
    <!-- 네비 버튼 클릭시 이벤트 -->
     <script>
    
    // House 페이지 이동
    const houseBtn = document.getElementById("house");
    houseBtn.addEventListener("click", function(){
    	location.href='<%= request.getContextPath()%>/views/House/search/sh_searchPage.jsp ';
    });
    
    // RoomMate페이지 이동
    const roomMateBtn = document.getElementById("rm");
    roomMateBtn.addEventListener("click", function(){
    	location.href='<%= request.getContextPath()%>/views/Roommate/rm_first.jsp ';
    });
    
    // AboutUs페이지 이동
     const aboutUsBtn = document.getElementById("au");
     aboutUsBtn.addEventListener("click", function(){
    	location.href='<%= request.getContextPath()%>/views/common/aboutus.jsp ';
    });
     
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
    
    // Register 페이지 이동
    const registerBtn = document.getElementById("reBtn");
    registerBtn.addEventListener('click', function(){
    	location.href='<%= request.getContextPath() %>/views/Login/register_user.jsp';
    });
    
    
    
    </script>
    <!--  페이지를 이동해도 footer는 계속 하단에 노출되게끔 -->
	<%@include file="/views/common/footer.jsp"%>
</body>

</html>