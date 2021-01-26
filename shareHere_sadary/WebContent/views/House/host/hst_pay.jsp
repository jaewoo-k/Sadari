<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOST 결제 페이지</title>
<!-- navi css 경로 -->
<link href="<%= request.getContextPath() %>/views/common/nav_foot.css"
	rel="stylesheet" type="text/css">
<style>
        /* 결제 폼 전체 영역 */
        .pay {
         text-align: center;
        }
        /* 카드정보 테이블 영역 */
        .cardtable {
           margin-left: 40%;
           text-align: left;
           width : 20%;
        }
        /* 버튼 스타일 */
        #pay_yes{
            background-color: black;
            color:white;
            width: 70px;
        }
        #pay_no{
            background-color: black;
            color:white;
            width: 70px;
        }
    </style>
</head>
<body>
<!--  페이지를 이동해도 Host_navi는 계속 상단에 노출되게끔 -->
   <%@include file="/views/House/host/hst_navi.jsp" %>
	<br><br><br>
<!-- 결제 폼 -->
 <div class="pay">
    <form>
        <h2>1. 원하시는 결제금액을 선택해 주세요.</h2>
        <br><br>
                <input type="radio" id="onewk" name="pay" value="1주일">
                <label for="onewk">1주일 / 5000원</label>
                <input type="radio" id="twowk" name="pay" value="2주일">
                <label for="twowk">2주일 / 10000원</label>
                <input type="radio" id="onemt" name="pay" value="한달">
                <label for="onemt">한달 / 20000원</label><br><br>
                <input type="radio" id="sixmt" name="pay" value="6개월">
                <label for="sixmt">6개월 / 120000원</label>
                <input type="radio" id="oney" name="pay" value="1년">
                <label for="oney">1년 / 200000원</label>
        <br><br><br>
        <h2>2. 결제하실 카드정보를 입력하세요.</h2>
        <br><br><br>
        <table class="cardtable">
            <div>
                <select style="height: 25px;">
                    <option>카드선택</option>
                    <option>신한</option>
                    <option>우리</option>
                    <option>국민</option>
                    <option>농협</option>
                    <option>롯데</option>
                    <option>현대</option>
                    <option>카카오</option>
                </select>
            </div>
            <br>
            <tr>
                <td>카드번호</td>
                <td class="insert"><input type="text" class="payinput"
					name="cardinfo" style="width: 60px"> <input type="text"
					class="payinput" name="cardinfo" style="width: 60px"> <input
					type="text" class="payinput" name="cardinfo" style="width: 60px">
					<input type="text" class="payinput" name="cardinfo"
					style="width: 60px"></td>
            </tr>
            <tr>
				<td>유효번호</td>
				<td class="insert"><input type="text" name="validnum"
					class="payinput" style="width: 60px"> <input type="text"
					name="validnum" class="payinput" style="width: 60px"></td>
            </tr>
            <tr>
				<td>CVC</td>
				<td class="insert"><input type="text" name="CVC"
					class="payinput" style="width: 60px"></td>
            </tr>
            <tr>
				<td>비밀번호</td>
				<td><input type="password"
					name="cardinfo" style="width: 60px" ></td>
			</tr>
        </table>
        
        <div id='result'></div>
        <br><br><br><br><br><br>
		<input type="button" id="pay_yes" onclick="pay_success();" value="예" />
		<input type="button" id="pay_no" onclick="pay_fail();" value="아니오" />

        </form>
 </div>   
 <!--  페이지를 이동해도 footer는 계속 하단에 노출되게끔 -->
	<%@include file="/views/common/footer.jsp"%>
	
	<script>
		// "예" 클릭 시  info페이지로 이동
		const pYesBtn = document.getElementById("pay_yes");
		pYesBtn.addEventListener("click", function(){
	    	location.href='<%= request.getContextPath()%>/views/House/host/hst_info.jsp ';
	    });
	
	</script>
</body>
</html>