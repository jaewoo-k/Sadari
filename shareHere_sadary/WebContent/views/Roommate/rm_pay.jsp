<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>결제</title>
<!-- 글씨체 -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">	
<style>
#payment { 
	font-family: nanumGothic;
	background-color: rgb(245, 244, 244);
	text-align: center;
	border-radius: 5%;
	width: 400px;
	height: 750px;
	font-size: auto;
}

.logo {
	margin-top: 35px;
	width: 50px;
	height: 50px;
}

#select_pay {
	width: 300px;
	height: 100px;
	background-color: rgb(233, 225, 211);
	margin: auto;
	border-radius: 5%;
}

.pay_question {
	font-size: large;
	font-weight: 1000;
}

#askpay {
	padding: 30px;
}

.validnum {
	width: 20px;
}

.payinput {
	float: left;
}

.insert {
	padding-left: 30px;
}
</style>

</head>
<body>
	
	<div id="payment">
		<img src="img/logo.png" class="logo">
		<p class="pay_question">1. 원하시는 결제 금액을 선택하세요.</p>

		<div id="select_pay">
			<br> <input type='radio' name='price' value='200won' id='200w'
				onclick='getRadioText(event)' /> <label for='200w'>200원 / 한
				명</label> <br> <br> <input type='radio' name='price'
				value='2000won' id='2000w' onclick='getRadioText(event)' /> <label
				for='2000w'>2000원 / <span style="color: red">한달 무제한
					열람</span></label>
		</div>


		<br>

		<p class="pay_question">2. 결제하실 카드 정보를 입력하세요.</p>
		<br>
		<table id="card" style="margin-left: 10%">
			<div>
				<select style="height: 30px; width: 130px; margin-left: 15%;">
					<option>카드선택</option>
					<option>신한</option>
					<option>우리</option>
					<option>국민</option>
					<option>농협</option>
					<option>롯데</option>
					<option>현대</option>
					<option>카카오</option>
					<option>

				</select>
			</div>
			<br>

			<tr>
				<td>카드번호</td>
				<td class="insert"><input type="text" class="payinput"
					name="cardinfo" style="width: 35px"> <input type="text"
					class="payinput" name="cardinfo" style="width: 35px"> <input
					type="text" class="payinput" name="cardinfo" style="width: 35px">
					<input type="text" class="payinput" name="cardinfo"
					style="width: 35px"></td>
			</tr>
			<tr>
				<td>유효번호</td>
				<td class="insert"><input type="text" name="validnum"
					class="payinput" style="width: 35px"> <input type="text"
					name="validnum" class="payinput" style="width: 35px"></td>
			</tr>
			<tr>
				<td>CVC</td>
				<td class="insert"><input type="text" name="CVC"
					class="payinput" style="width: 35px"></td>
			</tr>

			<tr>
				<td>카드비밀번호</td>
				<td><input style="margin-left: 10%" type="password"
					name="cardinfo" style="width: 70px"></td>
			</tr>
		</table>
		<br> <br>

		<div id='result'></div>
		<input type="button" id="pay_yes" onclick="pay_success();" value="예" />
		<input type="button" id="pay_no" onclick="pay_fail();" value="아니오" />

	</div>

	<script>
		// 결제금액, 종류 출력
		function getRadioText(event) {
			const radioId = event.target.id;
			const query = 'label[for="' + radioId + '"]'
			const text = document.querySelector(query).innerText;

			document.getElementById('result').innerHTML += "고객님께서 선택하신 금액은 <br><br> '<span style='color:red'>"
					+ text + "</span>' 입니다.<br>";
			document.getElementById('result').innerHTML += "<br>결제하시겠습니까?<br><br><br><br>";
		}
	</script>


	<script>
		function pay_success() {
			alert("결제가 완료되었습니다.");
		}
		function pay_fail() {
			alert("결제를 취소하셨습니다.")
		}
	</script>
	
</body>

</html>