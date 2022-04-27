<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>본사용 메인통계</title>
</head>
<body>
<div class="row">
	    <div class="col-12">
	        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
	        	<div class="page-title-left">
	        	<h5 class="breadcrumb-item">통합 매출 통계(일일은 최근 12일까지)</h5>
	            <button class="btn btn-success" id='btg_line' type="button"><i class="bx bx-line-chart"></i>라인 통계출력</button>
				<button class="btn btn-warning" id='btg_bar' type="button"><i class="bx bx-bar-chart-alt-2"></i>바 통계출력</button>
				</div>
	            <div class="page-title-right">
	                <ol class="breadcrumb m-0">
	                    <li class="breadcrumb-item"><a href="javascript: void(0);">Statics</a></li>
	                    <li class="breadcrumb-item active">Sales Static</li>
	                </ol>
	            </div>
	        </div>
	    </div>
	</div>
			<div class="row">
				<div class="col-6">
					<div class="card">
						<div class="card-body">
							<canvas id="maindailyChart"></canvas>
						</div>
					</div>
				</div>
				<div class="col-6">
					<div class="card">
						<div class="card-body">
							<canvas id="mainannualChart"></canvas>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<div class="card">
						<div class="card-body">
							<canvas id="mainmonthlyChart"></canvas>
						</div>
					</div>
				</div>
				<div class="col-6">
				<div>
					<div class="card">
						<select id="brnlist" class="form-control">
							<option selected="selected" value="BRN00001">대전점</option>
							<option value="BRN00002">인천점</option>
							<option value="BRN00003">부산점</option>
						</select>
						<div class="card-body" id="brnDiv">
							<canvas id="mainbrnChart"></canvas>
						</div>
					</div>
				</div>
			</div>
			</div>
</body>
<script type="text/javascript">


$(document).on('change','#brnlist',function(){
	
});
//일일매출 현황
$(function(){
		$.ajax({
			url: "/sttst/maindaily",
			async: true,
			//data: JSON.stringify(data),
			type: "POST",
			dataType:"json",
			contentType: "application/json; charset=utf-8",
			success:function(data){
				var salelist=[];
				var datelist=[];
				
				$.each(data,function(){
					salelist.push(this["sale"])
					datelist.push(this["date"])
				})
				
				const ctx = document.getElementById('maindailyChart').getContext('2d');
				// 그래픽 엔진으로 유명한 것 (DirectX, OpenGL)
				const myChart = new Chart(ctx, {
				    type: 'line', //bar,line,pie,doughnut,radar
				    //labels : x축의 값
				    //datasets : y축의 값 data의 값, 속성들 지정
				    data: {
				        labels: datelist,
				        datasets: [{
				            label: '통합 일일 매출 현황',
				            data: salelist,
				            lineTension:0.4,
				            backgroundColor: [
				                '#556EE6'
				            ],
				            borderColor: [
				            	'#556EE6'
				            ],
				            borderWidth: 3
				        }]
				    },
				    options: {
				        scales: {
// 				            y: {
// 				                beginAtZero: true
// 				            }
				        }
				    }
				});
				
				// 차트 그래프 변경하는 버튼 이벤트
				var v_btn = document.querySelector("#btg_bar");
				var v_type = "bar";
				var f_chgType = function(){
				      //myChart.type은 해보지 되지 않음 -- 짜증남
				      //dataset에 접근해야 함
				  myChart.data.datasets[0].type = v_type;
				  myChart.update();                   
				  }
				  v_btn.addEventListener("click",f_chgType);
				  
				 var v_btn = document.querySelector("#btg_line");
				 var v_type2 = "line";
				 var f_chgType2 = function(){
			     myChart.data.datasets[0].type = v_type2;
			     myChart.update();                   
			     }
			     v_btn.addEventListener("click",f_chgType2);  
				
			}
			//success:function(data)끝
		});
		$.ajax({
			url:"/sttst/mainannual",
			async:true,
			type: "POST",
			dataType:"json",
			contentType: "application/json; charset=utf-8",
			success:function(data){
				var salelist=[];
				var datelist=[];
				
				$.each(data,function(){
					salelist.push(this["sale"])
					datelist.push(this["date"])
				})
				
				const ctx = document.getElementById('mainannualChart').getContext('2d');
				// 그래픽 엔진으로 유명한 것 (DirectX, OpenGL)
				const myChart = new Chart(ctx, {
				    type: 'line', //bar,line,pie,doughnut,radar
				    //labels : x축의 값
				    //datasets : y축의 값 data의 값, 속성들 지정
				    data: {
				        labels: datelist,
				        datasets: [{
				            label: '통합 년간 매출 현황',
				            data: salelist,
				            lineTension:0.4,
				            backgroundColor: [
				                'lightgreen'
				            ],
				            borderColor: [
				            	'lightgreen'
				            ],
				            borderWidth: 3
				        }]
				    },
				    options: {
				        scales: {
// 				            y: {
// 				                beginAtZero: true
// 				            }
				        }
				    }
				});
				// 차트 그래프 변경하는 버튼 이벤트
				var v_btn = document.querySelector("#btg_bar");
				var v_type = "bar";
				var f_chgType = function(){
				      //myChart.type은 해보지 되지 않음 -- 짜증남
				      //dataset에 접근해야 함
				  myChart.data.datasets[0].type = v_type;
				  myChart.update();                   
				  }
				  v_btn.addEventListener("click",f_chgType);
				  
				 var v_btn = document.querySelector("#btg_line");
				 var v_type2 = "line";
				 var f_chgType2 = function(){
			     myChart.data.datasets[0].type = v_type2;
			     myChart.update();                   
			     }
			     v_btn.addEventListener("click",f_chgType2);  
			}
		});	
		$.ajax({
			url:"/sttst/mainmonth",
			async:true,
			type: "POST",
			dataType:"json",
			contentType: "application/json; charset=utf-8",
			success:function(data){
				console.log(data);
				var salelist=[];
				var datelist=[];
				
				$.each(data,function(){
					salelist.push(this["sale"])
					datelist.push(this["date"])
				})
				
				const ctx = document.getElementById('mainmonthlyChart').getContext('2d');
				// 그래픽 엔진으로 유명한 것 (DirectX, OpenGL)
				const myChart = new Chart(ctx, {
				    type: 'line', //bar,line,pie,doughnut,radar
				    //labels : x축의 값
				    //datasets : y축의 값 data의 값, 속성들 지정
				    data: {
				        labels: datelist,
				        datasets: [{
				            label: '통합 월별 매출 현황',
				            data: salelist,
				            lineTension:0.4,
				            backgroundColor: [
				                'pink'
				            ],
				            borderColor: [
				            	'pink'
				            ],
				            borderWidth: 3
				        }]
				    },
				    options: {
				        scales: {
				            y: {
				                beginAtZero: true
				            }
				        }
				    }
				});
				// 차트 그래프 변경하는 버튼 이벤트
				var v_btn = document.querySelector("#btg_bar");
				var v_type = "bar";
				var f_chgType = function(){
				      //myChart.type은 해보지 되지 않음 -- 짜증남
				      //dataset에 접근해야 함
				  myChart.data.datasets[0].type = v_type;
				  myChart.update();                   
				  }
				  v_btn.addEventListener("click",f_chgType);
				  
				 var v_btn = document.querySelector("#btg_line");
				 var v_type2 = "line";
				 var f_chgType2 = function(){
			     myChart.data.datasets[0].type = v_type2;
			     myChart.update();                   
			     }
			     v_btn.addEventListener("click",f_chgType2);  
			}
		});
		var selectbrn = $('#brnlist option:selected').val();
			brnsttst(selectbrn);
			
		$(document).on('change','#brnlist',function(){
			var selectbrn = $('#brnlist option:selected').val();
			resetCanvas(selectbrn);
		});
		
});
		var resetCanvas = function(data){
			  $('#mainbrnChart').remove(); // this is my <canvas> element
			  $('#brnDiv').append('<canvas id="mainbrnChart"></canvas>');
			  canvas = document.querySelector('#mainbrnChart');
			  ctx = canvas.getContext('2d');
			  brnsttst(data);
			};
		
		
		var brnsttst = function(data){
			$.ajax({
				url:"/sttst/brndaily?brncofcId="+data,
				async:true,
				type: "POST",
				dataType:"json",
				contentType: "application/json; charset=utf-8",
				success:function(data){
					console.log('날짜데이터',data)
					var salelist=[];
					var datelist=[];
					
					$.each(data,function(){
						salelist.push(this["sale"])
						datelist.push(this["date"])
					})
					
					const ctx = document.getElementById('mainbrnChart').getContext('2d');
					// 그래픽 엔진으로 유명한 것 (DirectX, OpenGL)
					const myChart = new Chart(ctx, {
					    type: 'line', //bar,line,pie,doughnut,radar
					    //labels : x축의 값
					    //datasets : y축의 값 data의 값, 속성들 지정
					    data: {
					        labels: datelist,
					        datasets: [{
					            label: '타매장 일일 매출 현황',
					            data: salelist,
					            lineTension:0.4,
					            backgroundColor: [
					                '#FE9A2E'
					            ],
					            borderColor: [
					            	'#FE9A2E'
					            ],
					            borderWidth: 3
					        }]
					    },
					    options: {
					        scales: {
					            y: {
					                beginAtZero: true
					            }
					        }
					    }
					});
					// 차트 그래프 변경하는 버튼 이벤트
					var v_btn = document.querySelector("#btg_bar");
					var v_type = "bar";
					var f_chgType = function(){
					      //myChart.type은 해보지 되지 않음 -- 짜증남
					      //dataset에 접근해야 함
					  myChart.data.datasets[0].type = v_type;
					  myChart.update();                   
					  }
					  v_btn.addEventListener("click",f_chgType);
					  
					 var v_btn = document.querySelector("#btg_line");
					 var v_type2 = "line";
					 var f_chgType2 = function(){
				     myChart.data.datasets[0].type = v_type2;
				     myChart.update();                   
				     }
				     v_btn.addEventListener("click",f_chgType2);  
					}//end success
					
				});
			}

</script>
</html>