<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOUSE 매물 등록 방정보</title>
</head>
<body>
	<%@include file="/views/House/host/hst_info_room.jsp" %>
	<div class="house room">
	
		<h2>방 정보</h2>
	    <hr>
	    <b id="sub">방은 최대 4개 입력할 수 있습니다. <br>
	        + 버튼을 누르시면 입력하실 수 있는 방 form이 나옵니다. <br>
	        순서대로 입력해주세요!</b>
	    <br><br>
	    <div id="room1">
	        <span id="rbox" style="width: 50%; border: 1px solid black; padding: 1%;"> 
	            <!-- +X 버튼 -->
	            <b id="sub">1</b>
	            <button type="button" id="r_btn" onclick="addroom()">
	                <img src="https://cdn.iconscout.com/icon/free/png-64/plus-114-453164.png" style="width: 40px;">
	            </button>
	            <div id="r1">
	                <!-- 방 이름 -->
	                <div id="rp" style="padding-top: 10%;">
	                    <p id="title">방 이름</p>
	                    <input type="text" id="text" placeholder="방 이름을 입력하세요.(ex. RoomA)"/>
	                </div>
	                <!-- 방 대표 사진 -->
	                <div id="rp">
	                    <p id="title">방 대표 사진</p>
	                    <input type="file" name="file" id="file">
	                </div>
	                <!-- 타입 -->
	                <div id="rp">
	                    <p id="title">타입</p>
	                    <b id="sub">1인실, 2인실, 3인실</b>
	                    <div style="padding-top: 1%;">
	                        <select name="Housing structure" id="housing structure">
	                            <option class="option" value="" selected disabled>방 타입 선택</option>
	                            <option class="option" value="1인실">1인실</option>
	                            <option class="option" value="2인실">2인실</option>
	                            <option class="option" value="3인실">3인실</option>
	                        </select>
	                    </div>
	                </div>
	                <!-- 성별 -->
	                <div id="rp" style="padding-top: 4%;" >
	                    <p id="title">성별</p>
	                    <input type="radio" id="M" name="gender" value="M">
	                    <label for="M">남자</label> &nbsp;
	                    <input type="radio" id="F" name="gender" value="F">
	                    <label for="F">여자</label> &nbsp;
	                    <input type="radio" id="MF" name="gender" value="MF">
	                    <label for="MF">남녀공용</label> <br><br>
	                </div>
	                <!-- 면적(방 면적) -->
	                <div id="rp">
	                    <p id="title">면적(방 면적)</p>
	                    <input type="text" id="text" placeholder="방 면적을 입력하세요.(ex. 7.5)"/>
	                </div>
	                <!-- 보증금 -->
	                <div id="rp">
	                    <p id="title">보증금</p>
	                    <input type="text" id="text" placeholder="보증금을 입력하세요.(ex. 300만원)"/>
	                </div>
	                <!-- 관리비 -->
	                <div id="rp">
	                    <p id="title">관리비</p>
	                    <input type="text" id="text" placeholder="관리비를 입력하세요.(ex. 10만원)"/>
	                </div>
	                <!-- 월세 -->
	                <div id="rp">
	                    <p id="title">월세</p>
	                    <input type="text" id="text" placeholder="월세를 입력하세요.(ex. 40만원)"/>
	                </div>
	                <!-- 입주 가능일 -->
	                <div id="rp">
	                    <p id="title">입주 가능일</p>
	                    <input type="date" name="dateIn">
	                </div>
	            </div>
	            
	    </span>
	    <span id="rbox2"  style="width: 50%; border: 1px solid black; padding: 1%;">
	        <!-- +X 버튼 -->
	        <div class="rBtn">
	            <b id="sub">2</b>
	            <button type="button" id="rx_btn" onclick="cancelroom2()">
	                <img src="https://cdn.iconscout.com/icon/free/png-64/remove-324-453166.png" style="width: 40px;">
	            </button>
	            <button type="button" id="r_btn" onclick="addroom2()">
	                <img src="https://cdn.iconscout.com/icon/free/png-64/plus-114-453164.png" style="width: 40px;">
	            </button>
	        </div>
	        <div id="r2"></div>
	    </span>
	    </div>
	    
	    <div id="room2">
	        <span id="rbox3"  style="width: 50%; border: 1px solid black; padding: 1%;">
	            <!-- +X 버튼 -->
	            <div class="rBtn">
	                <b id="sub">3</b>
	                <button type="button" id="rx_btn" onclick="cancelroom3()">
	                    <img src="https://cdn.iconscout.com/icon/free/png-64/remove-324-453166.png" style="width: 40px;">
	                </button>
	                <button type="button" id="r_btn" onclick="addroom3()">
	                    <img src="https://cdn.iconscout.com/icon/free/png-64/plus-114-453164.png" style="width: 40px;">
	                </button>
	            </div>
	            <div id="r3"></div>
	        </span>
	        <span id="rbox4"  style="width: 50%; border: 1px solid black; padding: 1%;">
	            <!-- +X 버튼 -->
	            <div class="rBtn" style="margin-bottom: 5px;">
	                <b id="sub">4</b>
	                <button type="button" id="rx_btn" onclick="cancelroom4()">
	                    <img src="https://cdn.iconscout.com/icon/free/png-64/remove-324-453166.png" style="width: 40px;">
	                </button>
	            </div>
	            <div id="r4"></div>
	        </span>
	    </div>
	</div>
    
    
     <!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script>
		 // 방 정보 폼
		    $("#room2").hide();
		    $("#rbox2").hide();
		    $("#rbox3").hide();
		    $("#rbox4").hide();
		    var r2 = true;
		    var r3 = true;
		    var r4 = true;
		    function addroom(){
		        if(r2 == true){
		            $("#rbox2").show();
		            $("#r2").append($("#r1").html());
		            r2 = false;
		        }
		    }
		    function addroom2(){
		        if(r3 == true){
		            $("#room2").show();
		            $("#rbox3").show();
		            $("#r3").append($("#r1").html());
		            r3 = false;
		        }
		    }
		    function cancelroom2(){
		        if(r2 == false){
		            $("#r2").empty();
		            $("#rbox2").hide();
		            r2 = true;
		        }
		    }
		    function addroom3(){
		        if(r4 == true){
		            $("#rbox4").show();
		            $("#r4").append($("#r1").html());
		            r4 = false;
		        }
		    }
		    function cancelroom3(){
		        if(r3 == false){
		            $("#r3").empty();
		            $("#rbox3").hide();
		            $("#room2").hide();
		            r3 = true;
		        }
		    }
		    function cancelroom4(){
		        if(r4 == false){
		            $("#r4").empty();
		            $("#rbox4").hide();
		            r4 = true;
		        }
		    }
		    
    
    </script>
</body>
</html>