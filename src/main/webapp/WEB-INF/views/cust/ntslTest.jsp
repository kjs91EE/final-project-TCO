<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

//자동으로 소비자 판매 해주기 위한 JS

//값 뽑기 위한 Array
var brncofcArray = ["BRN00001","BRN00002","BRN00003"];
var custArray = ["202203150005","202203150006","202203140001","202203140002","202204070001","202203170001","202203280001","202203280002","202204120001","202203180001","202203180002","202203180003","202203180004","202203150001","202203160001","202203150003","202203150004","202204070002"];

function autoNtsl(){
	var brncofc = brncofcArray[randomNum(0, 2)];
	var qty = randomNum(1, 5);
	var cust = custArray[randomNum(0,17)];
	var prod = randomNum(1, 72);
	console.log("brncofc : " + brncofc + " / qty : " + qty + " / cust : " + cust + " / prod : " + prod);

	$.ajax({
		url : "/cust/ntsl.do",
		data : {
			"brncofc" : brncofc 
			,"qty" : qty
			,"cust" : cust
			,"prod" : prod
			},
		type : 'post',
		dataType : 'JSON',
		success : function(res){
			alert("성공");
		}
	})
}

//랜덤 뽑기 함수
function randomNum(min, max){ 
	var randNum = Math.floor(Math.random()*(max-min+1)) + min;
	return randNum; 
}

$(function(){
	alert("시작");
	autoNtsl();
	alert("끝");
})
</script>