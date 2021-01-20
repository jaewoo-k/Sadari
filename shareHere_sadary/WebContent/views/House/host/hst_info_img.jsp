<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOUSE 매물 등록 사진정보</title>
</head>
<body>
		<p id="title">이미지 등록</p>
		<b id="sub" style="font-size: 14px;"> 대표사진은 검색 시 나타나는 사진으로 한 장만 입력
			가능합니다. <br> 공용공간, 방 사진, 편의시설, 기타의 순서대로 각각 최대 5장씩 가능합니다. <br>
			공용공간 사진은 가급적 여러각도에서 촬영된 사진 넣어주세요. <br>
		</b>
		
		<!-- 대표사진 -->
		<div id="imgSection">
			<button id="imgBtn">대표사진</button>
			<div id="fileceo">
				<input type="file" name="thumbnailImg" id="file">
			</div>
			<div id="thumbnailImgArea">
            	<img id="thumbnail">
         	</div>
		</div>
	
		<!-- 공용공간 & 방사진 -->
		<div id="imgSection">
			<span class="rImg">
				<button id="imgBtn">공용 공간</button>
				<div id="sImgZip">
					<input type="file" name="shareImg" id="file">
					<button type="button" id="img_btn" onclick="addShareFile()">
						<img
							src="https://cdn.iconscout.com/icon/free/png-64/plus-112-453066.png"
							style="width: 30px;">
					</button>
					<button type="button" id="img_btn" onclick="delShareFile()">
						<img
							src="https://cdn.iconscout.com/icon/free/png-64/minus-129-453071.png"
							style="width: 30px;">
					</button>
				</div>
				<div id="shareImgArea">
					<img id="share">
				</div>
			</span> <span class="rImg">
				<button id="imgBtn">방 사진</button>
				<div id="rImgZip">
					<input type="file" name="roomImg" id="file">
					<button type="button" id="img_btn" onclick="addRoomFile()">
						<img
							src="https://cdn.iconscout.com/icon/free/png-64/plus-112-453066.png"
							style="width: 30px;">
					</button>
					<button type="button" id="img_btn" onclick="delRoomFile()">
						<img
							src="https://cdn.iconscout.com/icon/free/png-64/minus-129-453071.png"
							style="width: 30px;">
					</button>
				</div>
				<div id="roomImgArea">
					<img id="room">
				</div>
			</span>
		</div>
	
		<!-- 편의시설 & 기타 -->
		<div id="imgSection">
			<span class="rImg">
				<button id="imgBtn">편의시설</button>
				<div id="aImgZip">
					<input type="file" name="amenImg" id="file">
					<button type="button" id="img_btn" onclick="addAmenFile()">
						<img
							src="https://cdn.iconscout.com/icon/free/png-64/plus-112-453066.png"
							style="width: 30px;">
					</button>
					<button type="button" id="img_btn" onclick="delAmenFile()">
						<img
							src="https://cdn.iconscout.com/icon/free/png-64/minus-129-453071.png"
							style="width: 30px;">
					</button>
				</div>
				<div id="amenImgArea">
					<img id="amen">
				</div>
			</span> 
			<span class="rImg">
				<button id="imgBtn">기타</button>
				<div id="eImgZip">
					<input type="file" name="etcImg" id="file">
					<button type="button" id="img_btn" onclick="addEtcFile()">
						<img
							src="https://cdn.iconscout.com/icon/free/png-64/plus-112-453066.png"
							style="width: 30px;">
					</button>
					<button type="button" id="img_btn" onclick="delEtcFile()">
						<img
							src="https://cdn.iconscout.com/icon/free/png-64/minus-129-453071.png"
							style="width: 30px;">
					</button>
				</div>
				<div id="etcImgArea">
					<img id="etc">
				</div>
			</span>
		</div>
	
	
	<!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script>
		// 사진 + 버튼 클릭 시 추가, - 버튼 클릭 시 삭제
	    var sindex = 0;
	    // 공용공간
	    function addShareFile(){
	        if(sindex < 4){
	            $("<br class='brP'><input type='file' name='shareImg"+ sindex +"' class='addedP'>").appendTo("#sImgZip");
	            $("<img id='share"+ sindex +"' class=addedPI>").appendTo("#shareImgArea");
	            sindex++;
	        }
	        
	        $("[type=file]").change(function(){
	               loadImg(this);
	        });
	       
			function loadImg(element) {
					if (element.files && element.files[0]) {
						var reader = new FileReader();
	
						reader.onload = function(e) {
	
							var selector;
							var size;
							switch (element.name) {
							case "shareImg0":
								selector = "#share0";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
	
							case "shareImg1":
								selector = "#share1";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
							case "shareImg2":
								selector = "#share2";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
							case "shareImg3":
								selector = "#share3";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
	
							}
							$(selector).attr("src", e.target.result).css(size);
						}
	
						reader.readAsDataURL(element.files[0]);
	
					}
				}
		}
		function delShareFile() {
			if (sindex > 0) {
				$("input[class=addedP]:last").remove();
				$("br[class=brP]:last").remove();
				$("img[class=addedPI]:last").remove();
				sindex--;
			}
		}

		// 방 사진
		var rindex = 0;
		function addRoomFile() {
			if (rindex < 4) {
				$("<br class='brR'><input type='file' name='roomImg"+ rindex +"' class='addedR'>").appendTo("#rImgZip");
				$("<img id='room"+ rindex +"' class=addedRI>").appendTo("#roomImgArea");
				rindex++;
			}
			
			$("[type=file]").change(function(){
	               loadImg(this);
	        });
	       
			function loadImg(element) {
					if (element.files && element.files[0]) {
						var reader = new FileReader();
	
						reader.onload = function(e) {
	
							var selector;
							var size;
							switch (element.name) {
							case "roomImg0":
								selector = "#room0";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
	
							case "roomImg1":
								selector = "#room1";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
							case "roomImg2":
								selector = "#room2";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
							case "roomImg3":
								selector = "#room3";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
	
							}
							$(selector).attr("src", e.target.result).css(size);
						}
	
						reader.readAsDataURL(element.files[0]);
	
					}
				}
		}

		function delRoomFile() {
			if (rindex > 0) {
				$("input[class=addedR]:last").remove();
				$("br[class=brR]:last").remove();
				$("img[class=addedRI]:last").remove();
				rindex--;
			}
		}

		// 편의시설
		var aindex = 0;
		function addAmenFile() {
			if (aindex < 4) {
				$("<br class='brA'><input type='file' name='amenImg"+ aindex +"' class='addedA'>").appendTo("#aImgZip");
				$("<img id='amen"+ aindex +"' class=addedAI>").appendTo("#amenImgArea");
				aindex++;
			}
			
			$("[type=file]").change(function(){
	               loadImg(this);
	        });
	       
			function loadImg(element) {
					if (element.files && element.files[0]) {
						var reader = new FileReader();
	
						reader.onload = function(e) {
	
							var selector;
							var size;
							switch (element.name) {
							case "amenImg0":
								selector = "#amen0";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
	
							case "amenImg1":
								selector = "#amen1";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
							case "amenImg2":
								selector = "#amen2";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
							case "amenImg3":
								selector = "#amen3";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
	
							}
							$(selector).attr("src", e.target.result).css(size);
						}
	
						reader.readAsDataURL(element.files[0]);
	
					}
				}
			
		}

		function delAmenFile() {
			if (aindex > 0) {
				$("input[class=addedA]:last").remove();
				$("br[class=brA]:last").remove();
				$("img[class=addedAI]:last").remove();
				aindex--;
			}
		}

		// 기타
		var eindex = 0;
		function addEtcFile() {
			if (eindex < 4) {
				$("<br class='brE'><input type='file' name='etcImg"+ eindex +"' class='addedE'>").appendTo("#eImgZip");
				$("<img id='etc"+ eindex +"' class=addedEI>").appendTo("#etcImgArea");
				eindex++;
			}
			
			$("[type=file]").change(function(){
	               loadImg(this);
	        });
	       
			function loadImg(element) {
					if (element.files && element.files[0]) {
						var reader = new FileReader();
	
						reader.onload = function(e) {
	
							var selector;
							var size;
							switch (element.name) {
							case "etcImg0":
								selector = "#etc0";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
	
							case "etcImg1":
								selector = "#etc1";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
							case "etcImg2":
								selector = "#etc2";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
							case "etcImg3":
								selector = "#etc3";
								size = {
									width : "100px",
									height : "100px",
									border : "solid 1px #dadada"
								};
								break;
	
							}
							$(selector).attr("src", e.target.result).css(size);
						}
	
						reader.readAsDataURL(element.files[0]);
	
					}
				}
		}

		function delEtcFile() {
			if (eindex > 0) {
				$("input[class=addedE]:last").remove();
				$("br[class=brE]:last").remove();
				$("img[class=addedEI]:last").remove();
				eindex--;
			}
		}

		$(function() {
			// input type="file" 태그에 파일이 첨부 될 떄 동작하는 이벤트
			$("[type=file]").change(function() {
				loadImg(this);
			});
		})

		function loadImg(element) {
			// element를 판별해서 알맞은 위치에 preview 표현하기
			//console.log(element.name);

			// input type="file" 엘리먼트에 첨부 파일 속성, 첨부파일이 잘 존재하는지 확인
			if (element.files && element.files[0]) {
				// 파일은 읽어들일 FileReader 객체 생성
				var reader = new FileReader();

				// 파일 읽기가 다 완료 되었을 떄 실행 되는 메소드
				reader.onload = function(e) {

					var selector;
					var size;
					switch (element.name) {
					case "thumbnailImg":
						selector = "#thumbnail";
						size = {
							width : "550px",
							height : "300px",
							border : "solid 1px #dadada"
						};
						break;
					case "shareImg":
						selector = "#share";
						size = {
							width : "100px",
							height : "100px",
							border : "solid 1px #dadada"
						};
						break;
					case "roomImg":
						selector = "#room";
						size = {
							width : "100px",
							height : "100px",
							border : "solid 1px #dadada"
						};
						break;

					case "amenImg":
						selector = "#amen";
						size = {
							width : "100px",
							height : "100px",
							border : "solid 1px #dadada"
						};
						break;
					case "etcImg":
						selector = "#etc";
						size = {
							width : "100px",
							height : "100px",
							border : "solid 1px #dadada"
						};
						break;
					}
					$(selector).attr("src", e.target.result).css(size);
				}

				// 파일 읽기 하는 메소드
				reader.readAsDataURL(element.files[0]);

			}
		}
	</script>
</body>
</html>