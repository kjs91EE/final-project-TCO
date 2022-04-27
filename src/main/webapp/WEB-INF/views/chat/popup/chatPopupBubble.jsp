<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>대화 chat</title><!--WebSocket messenger chat -->
<style type="text/css">
.bubble{
    width: 300px;
    margin-left: 50px;
	background-color: #eff2f7;
    border-radius: 8px 8px 0 8px;
    padding: 12px 24px;
    background-color: rgba(85,110,230,.1);
    overflow: hidden;
}

.user_me{
   background-color: pink;
   color: white;
   float: left;
   margin: 10px;
   text-align: left;
    margin-bottom: 45px
}
.user_you{
   background-color: lightblue;
   color: white;
   float: right;
   margin: 10px;
   text-align: left;
    margin-bottom: 45px
}
#id_sysdate_sender{
	font-size: 2px;
	text-align: left;
}
#id_sysdate_receiver{
	font-size: 2px;
	text-align: right;
}
	
</style>

<link href="/resources/skote/Skote_v3.3.2/HTML/Admin/dist/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
<script src="/resources/skote/Skote_v3.3.2/HTML/Admin/dist/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	var websocket = null;
	var first = "true";
	$('#sendBtn').attr("disabled", true);
	
	
	$(document).ready(function() {
		var url = 'ws://' + window.location.host + '${pageContext.request.contextPath}/chat/'+'<c:out value="${roomId}"/>';
		websocket = connection(url);
		
		websocket.onopen = function(){
			send('<c:out value="${username}"/>');  // 에러포인트
			$('#sendBtn').attr("disabled", false);
		};

		websocket.onmessage = function(message) {
			processMessage(message);
		};
		
		websocket.onclose = function() {
			Console.log('Info: WebSocket closed.');
		};
		
		websocket.onerror = function(message) {
			processError(message);
		};
		
		$('#sendBtn').click(function() {
			send(textMessage.value);
			textMessage.value = "";
		});
		
		$('#textMessage').keypress(function(e) {
			if(e.which==13) {
				send(textMessage.value);
				textMessage.value = "";
			}
		});
		
		$('#leaveBtn').click(function() {
			websocket.close();
			window.close();
		});
	});

	function processMessage(message) {
		var jsonData = JSON.parse(message.data);
// 		("jsonData: 0" + jsonData.messageType + ",1" + jsonData.name +  ",2" + jsonData.message + ",3" + jsonData.users  );
		console.log(message);
		if (jsonData.messageType == "ChatMessage") {
			message = jsonData.name + " : "+ jsonData.message + '\n';
			display(message);
			
			displaybubble(jsonData);
		} else if (jsonData.messageType == "UsersMessage") {
			var other = "";
			for(var i=0; i<jsonData.users.length; i++) {
				if ("${empVO.empNm}"!=jsonData.users[i]) {
					$('#users').append(jsonData.users[i]+"접속 하셨습니다."); //님과 대화중입니다.
					other = jsonData.users[i];
					first = "false";
				}
			}
			if(first=="false" && other=="") {
				$('#users').empty();
				$('#users').append("대화 상대가 없습니다."); //대화상대가 아무도 없습니다.
			} 
		}
	}
	
	function connection(url) {
		var websocket = null;
		if ('WebSocket' in window) {
			websocket = new WebSocket(url);
		} else if ('MozWebSocket' in window) {
			websocket = new MozWebSocket(url);
		} else {
			Console.log('Error: WebSocket is not supported by this browser.');
            return null;
		}
		return websocket;
	}

	function send(message) {
		websocket.send(JSON.stringify({ 'message' : message , 'room' : "<c:out value='${roomId}'/>"}));
	}
	
	function display(message) {
		
	}
	
	function  sysdate(){
		let today = new Date();   
		
		let month = today.getMonth() + 1;  // 월
		let date = today.getDate();  // 날짜
		let day = today.getDay();  // 요일
		if(day == 0){
			day = '월'
		}else if(day == 1){
			day = '화'
		}else if(day == 2){
			day = '수'
		}else if(day == 3){
			day = '목'
		}else if(day == 4){
			day = '금'
		}else if(day == 5){
			day = '토'
		}else if(day == 6){
			day = '일'
		}
		
		
		let hours = today.getHours(); // 시
		let minutes = today.getMinutes();  // 분
		let seconds = today.getSeconds();  // 초
		
		var time = month + '월' +date + '일' +day + '요일'+ hours + '시' + minutes + '분' + seconds +'초' ;
		
		return time;
	}
	
	
	function displaybubble(data) {
		//message = jsonData.name + " : "+ jsonData.message + '\n';
		if (data.name == "${empVO.empNm}") {
			$('#chat').append("<div class='user_me bubble'>"+data.name+"(me)"+"<br>"+"<span class='tail'>&nbsp;</span>"+data.message +"<br/><div id='id_sysdate_sender'>"+sysdate()+"</div></div>");
	      	    
		} else {
			$('#chat').append("<div class='user_you bubble'>"+data.name+"<br>"+"<span class='tail'>&nbsp;</span>"+data.message +"<br/><div id='id_sysdate_receiver'>"+sysdate()+"</div></div>");
// 		    $('#chat').append(data.name+"<br/><div class='bubble left'><span class='tail'>&nbsp;</span>"+data.message+"</div>");
		}
	}

	function processError(message) {
	}

 	window.onbeforeunload = function() {
		websocket.close();
		
	};  
</script>
</head>
<body>
	<!-- 전자정부 -->
	<div class="simplebar-content chat" style="background-color: white" id="chat">
	    <p>
	       <div id="users"></div>
	    </p>
	    <hr/>
	</div>
	<br/>
	<div style="display: inline;   top: 730px;    position: fixed;   left: 15px;  "><input class="form-control chat-input" id="textMessage" type="text" style="width:400px;  float: left;" />
	<input class="btn btn-primary btn-rounded chat-send w-md waves-effect waves-light" 
			type="button" id="sendBtn" name="sendBtn" value="Send"/>
	<input class="btn btn-primary btn-rounded chat-send w-md waves-effect waves-light"
		    type="button" id="leaveBtn" name="leaveBtn" value="Leave"/></div>
	
	
	<!-- 전자정부 -->
	
</body>
</html>
