<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Host"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to the ShareHere</title>
 <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    
    <!-- font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
   
   
    <style>
        body{
            margin: 0;
        }

        /* search Share House */
        #searcharea{
            width : 100%;
            height : 700px;
            background-image: url("<%= request.getContextPath() %>/views/common/img/searchImg.jpeg");
            background-repeat: no-repeat;
            background-size: 100%;
            position: relative;
        }

        #searchbar{
            width : 55%;
            height : 20%;
            border-radius: 20px;
            position : absolute;
            top: 35%;
            left: 50%;
            transform: translate(-50%,-50%);
            padding-top: 2.5%;
            background-color : rgba(255, 255, 255, 0.8);
        }
        
        .selectoption {
            width : 20%;
            height : 30%;
            border-radius: 7px;
            border : 1px solid rgb(255, 255, 255);
            margin-top : 0.1%;
            margin-left : 2%;
        }

        #option1 {
            margin-left: 5%;
        }

        #searchtext {
            width : 75%;
            height : 30%;
            margin-left: 5%;
            margin-top: 1%;
            border-radius: 7px;
            border : 1px solid rgb(255, 255, 255);
        }
        #searchbutton {
            width:12%;
            height : 30%;
            background: black;
            color : white;
            border-radius: 7px;
            border : 1px solid black;
        }

        /* populare Share Houses */
        h1, p{
            font-family: 'Nanum Gothic', sans-serif;
        }

        #popular{
            margin-left: 5%;
            margin-top : 3%;
            margin-bottom: 3%;
        }

        /* roommate */
        #roommate{
            background-color: rgb(233, 228, 226);
            height: 600px;
            width : 100%;
            margin-top:3%;
        }

        .logo{
            width : 20%;
            height: 20%;
        }

        #rm_logo{
            margin-left: 10%;
            align-items: left;
        }

        #to_rmpage_button{
            background-color: black;
            color : white;
            width : 25%;
            height: 60px;
            border-radius: 5%;
            margin-left : 10%; 
        }

       #rm_text{
           float: left;
           width : 55%;
           margin-top:3%;
           margin-left : 5%;
           margin-right:0%;
       
       }
       #rm_title{
           margin-left:5%;
       }
       #rm_intro{
           margin-left: 5%;
           font-size: 120%;
           text-align: left;
            }

       #rm_image{
            width : 35%;
            height: 600px;
            margin-top : 5%;
            margin-right : 5%;
            float: right;
            align-items: center;
       }

       #rm_image1{
           width : 100%;
           border-radius: 17%;
           padding-top:4%;
           padding-bottom: 4%;
       }

       #roommate div {
           display : inline-block;
       }

        /* rooommate resposive */
        
        
        @media screen and (max-width : 1650px){
            /*#roommate{
            background-color: rgb(233, 228, 226);
            height: 600px;
            width : 100%;
            margin-top:3%;
        }*/
            
            #rm_intro{
                font-size: 120%;
                text-align: left;
            }

        }

        @media screen and (max-width : 1355px){
            #roommate{
                background-color: rgb(233, 228, 226);
                height: 1200px;
                width : 100%;
                margin-top:3%;
            }

            #rm_title{
                width : 80%;
                font-size: 200%;
                text-align: left;
            }

            #rm_text{
                width:80%;
                font-size: 90%;
            }

            #rm_image{
                width : 70%;
                margin-top : 2%;
                margin-right : 15%;
                justify-content: center;
            }

            #rm_image1{
                width : 100%;
                align-items: center;
            }

            #to_rmpage_button{
                margin-left: 10%;
            }

            #rm_logo{
                align-items: left;
            }
        }
        
        /* 검색창 글씨 작게*/
         @media screen and (max-width : 1100px){
        	#searchbar{
        		font-size : 8px;
        		width : 80%;
        	}
        }


        @media screen and (max-width : 950px){
            #roommate{
                background-color: rgb(233, 228, 226);
                height: 1000px;
                width : 100%;
                margin-top:3%;
            }
            #searcharea{
            width : 100%;
            height : 700px;
            background-image: url("./main_img/searchImg.jpeg");
            background-repeat: no-repeat;
            background-size: 950px;
            position: relative;
        	}
            
        }

        @media screen and (max-width : 730px){
            #roommate{
                background-color: rgb(233, 228, 226);
                height: 500px;
                width : 100%;
                margin-top:3%;
            }

            #rm_title{
                text-align: center;
                margin-right: 5%;
                margin-left : 10%
            }

            #rm_text{
                margin-left :10%;
                margin-right: 5%;
                margin-top : 10%;
            }

            #rm_intro{
                font-size: 13px;
                text-align: center;
                margin-right: 5%;
                margin-left : 8%;
               
            }

            #to_rmpage_button{
                margin-left: 35%;
                margin-right: 32%;
            }

            #rm_image{
                display:none;
            }
           
            #rm_image1{
            display : none;
           }

           #rm_logo{
            margin-left: 38%;
            margin-right: 35%;
        }
        
        .selectoption {
            width : 20%;
            height : 40%;
            border-radius: 7px;
            border : 1px solid rgb(255, 255, 255);
            margin-top : 0.1%;
            margin-left : 2%;
        }
        #searchtext {
            width : 75%;
            height : 40%;
            margin-left: 5%;
            margin-top: 1%;
            border-radius: 7px;
            border : 1px solid rgb(255, 255, 255);
        }
        #searchbutton {
            width:12%;
            height : 40%;
            background: black;
            color : white;
            border-radius: 7px;
            border : 1px solid black;
        }
            
        }
    </style>
</head>
<body>

    <script>
        const toggleBtn = document.querySelector('.navibar_toggleBtn');
        const menu = document.querySelector('.nav_menu');
        const buttons = document.querySelector('.nav_buttons');
        const logo = document.querySelector('.nav_logo')
        console.log(toggleBtn);
        console.log(menu);
        console.log(buttons);

        toggleBtn.addEventListener('click', function(){
            menu.classList.toggle('active');
            buttons.classList.toggle('active');
            logo.classList.toggle('change');
        });
    </script>
<div id="searcharea">
    <div id="searchbar">
    <!-- 검색 폼 영역 -->
    <form action="<%= request.getContextPath() %>/house/search" method="get">
        <select id="option1" class="selectoption" name="option1">
            <option value="gender" selected>성별</option>
            <option value="nothing1">선택안함</option> 
            <option value="male">남성</option>
            <option value="female">여성</option>
            <option value="both">남녀공용</option>
        </select>
        <select id="option2" class="selectoption" name="option2">
            <option value="hosingtype" selected>주택유형</option>
            <option value="nothing2">선택안함</option>
            <option value="vila">빌라</option>
            <option value="apart">아파트</option>
            <option value="singlehouse">단독주택</option>
        </select>
        <select id="option3" class="selectoption" name="option3">
            <option value="roomtype" selected>룸형태</option>
            <option value="nothing3">선택안함</option>
            <option value="single">1인실</option>
            <option value="double">2인실</option>
            <option value="triple">3인실</option>
        </select>
        <select id="option4" class="selectoption" name="option4">
            <option value="friends" selected>룸메와같이찾기</option>
            <option value="nothing4">선택안함</option>
            <option value="two">2명</option>
            <option value="three">3명</option>
        </select>
        <input type="search" id="searchtext" placeholder="주소, 지하철역 검색" size="100" name="search">
        <button type="submit" id="searchbutton">search</button>
    </form>
    </div>
</div>
<!-- 검색폼  -->
<script>
// 유효성 검사 추가 (필터 선택 시 그에 해당하는 조건 합치기)

</script>
<% if((Host)session.getAttribute("loginHost") == null){ %>
<section class="popular-sharehouse">
    <h1 style="font-size: 35px;" id="popular">인기 쉐어하우스</h1>
    <div class="container">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
        <div class="card shadow-sm">
            <img src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg" alt="우주84호점" class="bd-placeholder-img card-img-top" width="100%" height="225">
            <div class="card-body">
                <p class="card-text">
                    우주84호점 <br>
                    남녀 공용  <br>
                    단독주택  
                </p>
            </div>
        </div>
        </div>

        <div class="col">
            <div class="card shadow-sm">
                <img src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg" alt="우주84호점" class="bd-placeholder-img card-img-top" width="100%" height="225">
                <div class="card-body">
                    <p class="card-text">
                        우주84호점 <br>
                        남녀 공용  <br>
                        단독주택  
                    </p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card shadow-sm">
                <img src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg" alt="우주84호점" class="bd-placeholder-img card-img-top" width="100%" height="225">
                <div class="card-body">
                    <p class="card-text">
                        우주84호점 <br>
                        남녀 공용  <br>
                        단독주택  
                    </p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card shadow-sm">
                <img src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg" alt="우주84호점" class="bd-placeholder-img card-img-top" width="100%" height="225">
                <div class="card-body">
                    <p class="card-text">
                        우주84호점 <br>
                        남녀 공용  <br>
                        단독주택  
                    </p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card shadow-sm">
                <img src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg" alt="우주84호점" class="bd-placeholder-img card-img-top" width="100%" height="225">
                <div class="card-body">
                    <p class="card-text">
                        우주84호점 <br>
                        남녀 공용  <br>
                        단독주택  
                    </p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card shadow-sm">
                <img src="https://img.roomspace.co.kr/file/sharehouse/img/etc/20180112072446_kitchen_15.jpg" alt="우주84호점" class="bd-placeholder-img card-img-top" width="100%" height="225">
                <div class="card-body">
                    <p class="card-text">
                        우주84호점 <br>
                        남녀 공용  <br>
                        단독주택  
                    </p>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<div id = "etc"></div>

<div id = "roommate" class ="roommate" >
       
    <div id="rm_text">
        <img src = "${pageContext.request.contextPath}/views/common/img/rmLogo.png" id = "rm_logo" class = "logo">
    <h1 id = "rm_title"> 나에게 맞는 룸메이트 찾기 </h1>
<pre id = "rm_intro" class = "text" >

비싸지는 월세와 외로운 타지생활의 고민을 모두 해결할 수 있는 방법

쉐어히어는 룸메이트 성향조사를 통해 각 사용자에게 알맞는 룸메이트를 매치시켜줍니다
    
만족도 98%를 자랑하는 쉐어히어에서 룸메이트를 찾아보세요!   
    </pre>      
        <button id = "to_rmpage_button">
            자세히 알아보기
        </button>
    </div>
    
    <div id="rm_image">
        <img src = "${pageContext.request.contextPath}/views/common/img/main_rm.png" id = "rm_image1">
    </div>

</div>
<% } %>
</main>
	
	<script>
	const to_rmpage_button = document.getElementById("to_rmpage_button");
	to_rmpage_button.addEventListener("click", function() {
		location.href='<%= request.getContextPath() %>/views/Roommate/rm_survey.jsp';
	});
	
	const rm_image = document.getElementById("rm_image");
	rm_image.addEventListener("click", function() {
		location.href='<%= request.getContextPath() %>';
	});
	
	</script>

</body>
</html>