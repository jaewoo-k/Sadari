
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Roommate liveChat</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<!-- navi css 경로 -->
<link
	href="${pageContext.request.contextPath}/views/common/nav_foot.css"
	rel="stylesheet" type="text/css">
<!-- 글씨체 -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">
<style>
#inputMessage {
	width: 449px;
	height: 28px
}

#btn-submit {
	background: white;
	background: #F7E600;
	width: 60px;
	height: 30px;
	color: black;
	border: none;
}

#btn-exit {
	background: black;
	width: 60px;
	height: 30px;
	color: white;
	border: none;
}

#main-container {
	width: 600px;
	height: 680px;
	border: none;
	margin: auto;
}

#chat-container {
	vertical-align: bottom;
	border: 1px solid black;
	margin: 10px;
	min-height: 600px;
	max-height: 600px;
	overflow: scroll;
	overflow-x: hidden;
	background: #9bbbd4;
}

.chat {
	font-size: 20px;
	color: black;
	margin: 5px;
	min-height: 20px;
	padding: 5px;
	min-width: 50px;
	text-align: left;
	height: auto;
	word-break: break-all;
	background: #ffffff;
	width: auto;
	display: inline-block;
	border-radius: 10px 10px 10px 10px;
}

.notice {
	color: #607080;
	font-weight: bold;
	border: none;
	text-align: center;
	background-color: #9bbbd4;
	display: block;
}

.my-chat {
	text-align: right;
	background: #F7E600;
	border-radius: 10px 10px 10px 10px;
}

#bottom-container {
	margin: 10px;
}

.chat-info {
	color: #556677;
	font-size: 10px;
	text-align: right;
	padding: 5px;
	padding-top: 0px;
}

.chat-box {
	text-align: left;
}

.my-chat-box {
	text-align: right;
}
</style>
</head>
<body>

	<!--  페이지를 이동해도 navi는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/navi.jsp"%>
	
	<br><br><br>
	<div id="main-container">
		<div id="chat-container"></div>
		<div id="bottom-container">
			<input id="inputMessage" type="text"> <input id="btn-submit"
				type="submit" value="전송">
				<input id="btn-exit" type="button" onclick="javascript:history.back();" value="나가기">
		</div>
	</div>
	<br><br><br>
	<!--  페이지를 이동해도 footer는 계속 상단에 노출되게끔 -->
	<%@include file="/views/common/footer.jsp"%>
	
</body>
<script type="text/javascript">
	var textarea = document.getElementById("messageWindow");
	// var webSocket = new WebSocket('ws://ec2-13-125-250-66.ap-northeast-2.compute.amazonaws.com:8080/DevEricServers/webChatServer');

	// 로컬에서 테스트할 때 사용하는 URL입니다.
	var webSocket = new WebSocket('ws://localhost:8801/shareHere/broadcasting');
	var inputMessage = document.getElementById('inputMessage');

	webSocket.onerror = function(e) {
		onError(e);
	};
	webSocket.onopen = function(e) {
		onOpen(e);
	};
	webSocket.onmessage = function(e) {
		onMessage(e);
	};

	function onMessage(e) {
		var chatMsg = event.data;
		var date = new Date();
		var dateInfo = date.getHours() + ":" + date.getMinutes() + ":"
				+ date.getSeconds();
		if (chatMsg.substring(0, 6) == 'server') {
			var $chat = $("<div class='chat notice'>" + chatMsg + "</div>");
			$('#chat-container').append($chat);
		} else {
			var $chat = $("<div class='chat-box'><div class='chat'>" + chatMsg
					+ "</div><div class='chat-info chat-box'>" + dateInfo
					+ "</div></div>");
			$('#chat-container').append($chat);
		}

		$('#chat-container').scrollTop(
				$('#chat-container')[0].scrollHeight + 20);
	}

	function onOpen(e) {

	}

	function onError(e) {
		alert(e.data);
	}

	function send() {
		var chatMsg = inputMessage.value;
		if (chatMsg == '') {
			return;
		}
		var date = new Date();
		var dateInfo = date.getHours() + ":" + date.getMinutes() + ":"
				+ date.getSeconds();
		var $chat = $("<div class='my-chat-box'><div class='chat my-chat'>"
				+ chatMsg + "</div> &nbsp;&nbsp; <div class='chat-info'>" + dateInfo
				+ "</div></div>");
		$('#chat-container').append($chat);
		webSocket.send(chatMsg);
		inputMessage.value = "";
		$('#chat-container').scrollTop(
				$('#chat-container')[0].scrollHeight + 20);
	}
</script>

<script type="text/javascript">
	$(function() {
		$('#inputMessage').keydown(function(key) {
			if (key.keyCode == 13) {
				$('#inputMessage').focus();
				send();
			}
		});
		$('#btn-submit').click(function() {
			send();
		});

	})
</script>
</html>