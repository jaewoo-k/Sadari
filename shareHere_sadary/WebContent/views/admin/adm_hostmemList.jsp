<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, administrator.model.vo.Hostmember"%>
<%
	ArrayList<Hostmember> list = (ArrayList<Hostmember>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HostMembers</title>
<style>

body{
		    margin: 0;
		    padding: 0;
		}
		
		#menuImg{
		    float : left;
		    width: 400px;
		    height: 768px;
		    position: relative;
		}
		
		.menuBtn{
		    background-color: black;
		    color:white;
		    width: 100px;
		    height : 50px;
		    margin:30px;
		    opacity: 60%;
		    font-size: medium;
		    border : none;
		    width : 250px;
		    height: 60px;
		    cursor:pointer;
		    outline:none;
		}
		
		.menuBtn:hover{
		    opacity: 100%;
		}
		
		#adminLogo{
		    /*border : 1px solid red;*/
		    width : 150px;
		    position : absolute;
		    top : 50px;
		    left : 130px;
		}
		
		#title_Btns{
		    /*border : 1px solid blue;*/
		    position: absolute;
		    top : 280px;
		    left : 3px;
		}
		
		#title_link{
		    color : black;
		    width : 400px;
		    text-align: center;
		    font-size: 100px;
		    position: absolute;
		    left : 1px;
		    top : 150px;
		    text-decoration : none;
		    /*border : 1px solid orange;*/
		}
		
		#btnList{
		    list-style: none;
		    text-align: left;
		    margin-top : 10px;
		    
		}
		#btnList li{
		    /*border : 1px solid white;*/
		    margin-right: 40px;
		    height : 80px;
		}
		
     #wrapTitle{
            /*border: 1px solid red;*/
            text-align: center;
            padding-top: 30px;
            font-size: 40px;
            margin-top:0;
        }

    .summary{
        /*border: 1px solid blue;*/
        display : block;
        margin-left : 400px;
        width : 700px;
        float:center;
    }

    table{
        text-align: center;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        
    }

    th{
        padding-top : 7px;
        padding-bottom: 7px;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
    }

    td{
        padding-top : 3px;
        padding-bottom : 3px;
    }

    #fromSecond{
        border-bottom: 1px solid lightgray;
        height : 30px;
    }

    table{
        width:100%;
        margin-left : 25px;
    }

    #userMemTable{
        width: 550px;
    }

    #searchBtn{
        border: none;
        background : white;
        cursor: pointer;
        border-style: none;
    }

    .bottomSearch{
        display : block;
        margin-top: 30px;
        margin-left : 400px;
        width : 700px;
        height: 35px;
        text-align: center;
        
    }

    .bottomSearch select{
        background-color: gray;
        color: white;
        height : 34px;
        height: 34px;
        margin-right: -2px;
        border-radius: 8px 0px 0px 8px;
    }

    #searchMember{
        width : 250px;
        height : 30px;
        margin-left : -3px;
        border-radius: 0 8px 8px 0;
        border : 1px solid gray;
    }

    .bottomSearch img{
        height : 30px;
        padding : 0;
        margin-left:-2px;
    }
</style>
</head>
<body>
<div class="leftMenu">
        <img src='../views/admin/adm_img/menuImg.jpg'id="menuImg">
        <a href="../views/admin/adm_first.jsp"><img src = "../views/admin/adm_img/adminLogo.png" id="adminLogo"></a>
        <a href="../views/admin/adm_member.jsp" id="title_link">Member</a>
        <div id="title_Btns">
            <ul id="btnList"> 
                <li><button class="menuBtn" id="userBtn" type="button">일반회원</button></li>
                <li><button class="menuBtn" id="hostBtn" type="button">임대인</button></li>
                <li><button class="menuBtn" id="outMemBtn" type="button">탈퇴회원</button></li>
            </ul>
            <script>
            	const userBtn = document.getElementById('userBtn');
            	userBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/usermem/list';
            	});
            	
            	const hostBtn = document.getElementById('hostBtn');
            	hostBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/hostmem/list';
            	});
            	
            	const hostBtn = document.getElementById('outMemBtn');
            	outMemBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/outmem/list';
            	});
            </script>
        </div>
    </div>

    <div class="summary">
        <h2 id="wrapTitle">임대인 회원</h2>
        <table id="userMemTable">
            <tr>
                <th>회원번호</th>
                <th>이름</th>
                <th>아이디</th>
                <th>이메일</th>
                <th>생년월일</th>
            </tr>

			<% if(list.isEmpty()) { %>
			<tr>
				<td colspan="5">가입한 회원이 없습니다.</td>
			</tr>
			<%} else { 
				for(Hostmember hst:list) {%>
		            <tr id="fromSecond">
		              	<td><%=hst.getHst_no() %></td>
		                <td><%=hst.getHst_name() %></td>
		                <td><%=hst.getHst_id() %></td>
		                <td><%=hst.getHst_bsno() %></td>
		                <td><%=hst.getHst_bsname() %></td>
		            </tr>
		    	<%} %>
            <%} %>

        </table>
    </div>

    <div class="bottomSearch">
        <form>
            <select name="search">
                <option value="us_no" selected>회원번호</option>
                <option value="us_name">이름</option>
                <option value="us_id">아이디</option>
            </select>
            <input type="text" id="searchMember" name="searchMem" width="250px" placeholder="검색어를 입력하세요.">
            <button type="button" id="searchBtn"><img src="../views/admin/adm_imgadm_img/search.png"></button>
        </form>
    </div>
</body>
</html>