<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href='/resources/js/fullcalendar/main.min.css' rel='stylesheet' />
<link href='/resources/css/loader.css' rel='stylesheet' />
<script src='/resources/js/fullcalendar/main.min.js'></script>
<script src='/resources/js/moment.min.js'></script>
<script src='/resources/js/maincalendar2.js'></script>
<script>




var calendar = null;
var initialLocaleCode = 'ko';

    $(document).ready(function(){
    		window.dispatchEvent(new Event('resize')); // 강제 window resize 이벤트 발생
    		$('.update').attr('readonly',true);
            var calendarEl = document.getElementById('calendar');
            calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                headerToolbar: {
                    left: 'prev,next today',
                    center: 'title',
//                     right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
                    right: 'dayGridMonth,listWeek'
                },
                locale:'ko',//한글언어
//                 timeZone:'Asia/seoul',//한국시간
                navLinks: true,//날짜클릭시 day캘린더로
                editable: false,//드래그수정
                selectable: true,//선택가능
                droppable: false,//드래그가능
                aspectRatio: 1.35,//가로세로 비율조절
                allDaySlot: false,
                nowIndicator:true,//현재날짜마크
                //선택시 이벤트
                select: function(info){
					var v_date = getFormatDate(new Date(info.end));
					console.log('info:',info);
                	//modal소환
                	$('#eventmodal').modal('show');
//                 	var startiso = .start.toISOString();
                	var startday = info.startStr;
                	console.log('startday:',startday);
                	var endday = v_date;
                	
                	stday = document.getElementById("instartday");
                	stday.value = startday;
                	edday = document.getElementById("inendday");
                	edday.value =endday;
                },
                //드래그시 이벤트
//                 eventDrop: function(info){
//                 	alert("드래그수정")
//                 },
				//일정클릭시 이벤트
				eventClick: function(info,jsEvent,view){
					
					var title = info.event.title;
					var id = info.event.id;
					var description = info.event.extendedProps.description;
					
					var start = getFormatDate2(new Date(info.event._instance.range.start));
					var end = getFormatDate2(new Date(info.event._instance.range.end));
					
					var eventcon = info.event.extendedProps.eventcon;
					
// 					console.log("클릭시 정보: ",id);
					console.log('중요도:',eventcon);
					
					$('#updatemodal').modal('show');
					$('#calendarNo').attr('value',id);
					$('#uptitle').attr('value',title);
					$('#upcontent').attr('value',description);
					$('#upstartday').attr('value',start);
					$('#upendday').attr('value',end);
					$('#upcategory option:selected').val(eventcon);
				},
              	//이벤트 조회
                events: function(info, successCallback, failureCallback){
                	$.ajax({
                		type:'POST',
                		url:'/calendar/main',
                		dataType:'json',
                		contentType:'application/x-www-form-urlencoded; charset=UTF-8',
                		success: function(param){
                			console.log(param)
                			var events=[];
                			$.each(param,function(index,data){
                				events.push({
                					id:data.calendarno,
                					title:data.title,
                					description:data.description,
                					start:data.startday,
                					end:data.endday,
                					className:data.category,
                					eventcon:data.category
                				});
                			});
                			successCallback(events);
                		},
                		error: function(request,status,error){
                			alert(request.status+' 에러가 발생하였습니다. 다시 시도해주세요.')
                		}
                	});
                }
            });
            calendar.render();
            $('.nav-tabs-custom li a').click(function(){
      		calendar.render();
     	});
            clickShow();    
	});
    
    //등록할때의 dateformat형식(YYYY-MM-DD형식)
    function getFormatDate(date){
        var year = date.getFullYear();              //yyyy
        var month = (1 + date.getMonth());          //M
        month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
        var day = date.getDate()-1;                   //fullcalendar에서 하루가 더 나오기에 -1
        day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
        return  year + '-' + month + '-' + day;
    }
    
    //조회할때의 dateformat형식
    function getFormatDate2(date){
        var year = date.getFullYear();              //yyyy
        var month = (1 + date.getMonth());          //M
        month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
        var day = date.getDate();                   //
        day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
        return  year + '-' + month + '-' + day;
    }

    
  //등록 액션    
    function fn_insert(){ 
	  
      Swal.fire({
    	  title: '일정등록을 하시겠습니까?',
    	  icon:'info',
    	  showCancelButton: true,
    	  confirmButtonText: '등록',
    	  cancelButtonText: '취소',
    	}).then((result) => {
    	  if (result.isConfirmed) {
    	    Swal.fire('등록완료', '', 'success')
    	    $('#insertschedule').submit();
    	  }else{
    		Swal.fire('취소하셨습니다', '', 'error')  
    	  }
    	})
    	
    }
    
  	//수정모달액션
  	function fn_update(){
  		$('#btnupdate').css('display','none');
  		$('#btnupdatecom').css('display','inline-block');
  		$('.update').attr('readonly',false);
  	}
	
  	
	//수정모달창 닫을시 초기화  	
  	function fn_close(){
  		$('#updatemodal').modal('hide');
  		$('#btnupdate').css('display','inline-block');
  		$('#btnupdatecom').css('display','none');
  		$('.update').attr('readonly',true);
    }
  
  
    //수정완료액션
    function fn_updatecom(){ 
    	 Swal.fire({
       	  title: '일정을 수정하시겠습니까?',
       	  icon:'info',
       	  showCancelButton: true,
       	  confirmButtonText: '수정',
       	  cancelButtonText: '취소',
       	}).then((result) => {
       	  if (result.isConfirmed) {
       	    Swal.fire('수정완료', '', 'success')
       	 	$('#updatefrm').submit();
       	  }else{
       		Swal.fire('취소하셨습니다', '','error')
       		return false;
       	  }
       	})
//       if(!confirm("※해당 일정을 정말로 수정 하시겠습니까?"))return false; 
     
    }
         
    //삭제액션
    function fn_delete(){
    	
    	var id = $('#calendarNo').val();
    	
    	Swal.fire({
         	  title: '일정을 삭제하시겠습니까?',
         	  icon:'info',
         	  showCancelButton: true,
         	  confirmButtonText: '삭제',
         	  cancelButtonText: '취소',
         	}).then((result) => {
         	  if (result.isConfirmed) {
         	    Swal.fire('삭제완료','', 'success')
         	    location.href = "/calendar/deleteSchedule?calendarNo="+id;
         	  }else{
         		Swal.fire('취소하셨습니다','','error')
         		return false;
         	  }
         	})
    	
//       	if(!confirm("※해당 일정을 정말로 삭제 하시겠습니까?")) return false;
    }
 	//클릭 시 데이터 출력
 	function clickShow(){
 		$("#clickTitle").on("click", function(){
 			
 			$("#intitle").val("프로젝트 뒷풀이");
 			$("#incontent").val("드디어 프로젝트 끝~~~!");
 			
 		});
 	}
    
</script>
<style>
.중요 {
	background-color: #F5A9BC;
	border-color: #F5A9BC;
}

.보통 {
	background-color: #F7D358;
	border-color: #F7D358;
}

.낮음 {
	background-color: #2E9AFE;
	border-color: #2E9AFE;
}

.빨강 {
	background-color: #FE2E2E;
	color: white;
}

.fc-event-time {
	display: none;
}
.fc-event{
	cursor:pointer;
}
</style>

<!-- row -->
	<div class="row">
		<div class="col-12">
			<div
				class="page-title-box d-sm-flex align-items-center justify-content-between">
				<h4 class="mb-sm-0 font-size-18">캘린더</h4>

				<div class="page-title-right">
					<ol class="breadcrumb m-0">
						<li class="breadcrumb-item"><a href="javascript: void(0);">Calendar</a></li>
						<li class="breadcrumb-item active">Calendar</li>
					</ol>
				</div>

			</div>
		</div>
	</div>

	<!-- 캘린더  -->
	<div class="card">
		<div class="card-body">
				<div>
					<ul class="nav nav-tabs nav-tabs-custom justify-content-center pt-2">
						<c:if test="${sessionScope.brncofcId == 'BRN00000'}">
					    	<li class="nav-item"><a class="nav-link active" href="#main" data-bs-toggle="tab" role="tab">전사캘린더</a></li>
							<li class="nav-item"><a class="nav-link" href="#common" data-bs-toggle="tab" role="tab">MY캘린더</a></li>
						</c:if>
						<c:if test="${sessionScope.brncofcId != 'BRN00000'}">
							<li class="nav-item active"><a class="nav-link" href="#common" data-bs-toggle="tab" role="tab">MY캘린더</a></li>
						</c:if>
					</ul> 
				</div>
			<div class="tab-content p-4">
				<c:if test="${sessionScope.brncofcId == 'BRN00000'}">
					<div class="tab-pane active" id="main" role="tabpanel">
						<div id="maincalendar"></div>
					</div>
					<div class="tab-pane" id="common" role="tabpanel">
						<div id="calendar"></div>
					</div>
				</c:if>
				<c:if test="${sessionScope.brncofcId != 'BRN00000'}">
					<div class="tab-pane active" id="common" role="tabpanel">
						<div>
							<div id="calendar"></div>
						</div>
					</div>
				</c:if>
			</div>	
		</div>
	</div>
	<!-- 캘린더 끝-->
	
<!-- end row -->


<!-------------------------------- my calendar ----------------------------------------->
<!-- 일정 등록 modal -->
<div class="modal fade" id="eventmodal" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header py-3 px-4 border-bottom-0">
				<h5 class="modal-title" id="clickTitle">일정등록</h5>

				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-hidden="true"></button>

			</div>
			<div class="modal-body p-4">
				<form class="needs-validation" name="insertschedule"
					id="insertschedule" action="/calendar/insertSchedule" method="post">
					<div class="row">
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">시작일</label> <input
									class="form-control" placeholder="시작일" type="date"
									name="startday" id="instartday" />
							</div>
							<div class="mb-3">
								<label class="form-label">종료일</label> <input
									class="form-control" placeholder="종료일" type="date"
									name="endday" id="inendday" />
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">일정명</label> <input
									class="form-control" placeholder="일정명을 남겨주세요" type="text"
									name="title" id="intitle" required value="" />
								<div class="invalid-feedback">Please provide a valid event
									name</div>
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">내용</label> <input class="form-control"
									placeholder="상세내용을 남겨주세요" type="text" name="content"
									id="incontent" required value="" />
								<div class="invalid-feedback">Please provide a valid event
									name</div>
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">중요도</label> <select
									class="form-control form-select" name="category" id="category">
									<option value="중요">중요</option>
									<option value="보통">보통</option>
									<option value="낮음">낮음</option>
								</select>
								<div class="invalid-feedback">Please select a valid event
									category</div>
							</div>
						</div>
					</div>
					<div class="row mt-2">
						<div class="text-end">
							<button type="button" class="btn btn-success" id="btn-save-event"
								onclick="fn_insert()">등록</button>
							<button type="button" class="btn btn-light me-1"
								data-bs-dismiss="modal">닫기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- end modal-content-->
	</div>
	<!-- end modal dialog-->
</div>
<!-- 일정등록 modal 끝-->

<!-- 일정수정/삭제 modal -->
<div class="modal fade" id="updatemodal" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header py-3 px-4 border-bottom-0">
				<h5 class="modal-title" id="modal-title">일정수정/삭제</h5>

				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-hidden="true" onclick="fn_close()"></button>
			</div>
			<div class="modal-body p-4">
				<form class="needs-validation" name="updatefrm" id="updatefrm"
					action="/calendar/updateSchedule" method="post">
					<div class="row">
						<!-- 캘린더번호(고유키) -->
						<input type="text" id="calendarNo" name="calendarNo"
							style="display: none;">
						<!-- 끝 -->
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">시작일</label> <input
									class="form-control update" type="date" name="startday"
									id="upstartday" />
							</div>
							<div class="mb-3">
								<label class="form-label">종료일</label> <input
									class="form-control update" type="date" name="endday"
									id="upendday" />
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">일정명</label> <input
									class="form-control update" placeholder="일정명을 남겨주세요"
									type="text" name="title" id="uptitle" />
								<div class="invalid-feedback">Please provide a valid event
									name</div>
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">상세내용</label> <input
									class="form-control update" type="text" name="content"
									id="upcontent" />
								<div class="invalid-feedback">Please provide a valid event
									name</div>
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">중요도</label> <select
									class="form-control form-select update" name="category"
									id="upcategory">
									<option value="중요">중요</option>
									<option value="보통">보통</option>
									<option value="낮음">낮음</option>
								</select>
								<div class="invalid-feedback">Please select a valid event
									category</div>
							</div>
						</div>
					</div>
					<div class="row mt-2">
						<div class="text-end">
							<button type="button" class="btn btn-success" id="btnupdate"
								onclick="fn_update()">수정</button>
							<button type="button" class="btn btn-success" id="btnupdatecom"
								onclick="fn_updatecom()" style="display: none;">완료</button>
							<button type="button" class="btn btn-danger" id="btndelete"
								onclick="fn_delete()">삭제</button>
							<button type="button" class="btn btn-light me-1"
								onclick="fn_close()">닫기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- end modal-content-->
	</div>
	<!-- end modal dialog-->
</div>
<!-- 일정수정/삭제 modal 끝 -->



<!------------------------------------ 전사캘린더------------------------------------------>

<!-- 일정 등록 modal -->
<div class="modal fade" id="maineventmodal" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header py-3 px-4 border-bottom-0">
				<h5 class="modal-title" id="modal-title">전사 캘린더 일정등록</h5>

				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-hidden="true"></button>

			</div>
			<div class="modal-body p-4">
				<form class="needs-validation" name="mainInsertSch"
					id="mainInsertSch" action="/calendar/mainInsertSch" method="post">
					<div class="row">
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">시작일</label> <input
									class="form-control" placeholder="시작일" type="date"
									name="mainStart" id="inmainStart" />
							</div>
							<div class="mb-3">
								<label class="form-label">종료일</label> <input
									class="form-control" placeholder="종료일" type="date"
									name="mainEnd" id="inmainEnd" />
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">일정명</label> <input
									class="form-control" placeholder="일정명을 남겨주세요" type="text"
									name="mainCaltitle" id="inmainCaltitle" required value="" />
								<div class="invalid-feedback">Please provide a valid event
									name</div>
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">내용</label> <input class="form-control"
									placeholder="상세내용을 남겨주세요" type="text" name="mainCalcon"
									id="inmainCalcon" required value="" />
								<div class="invalid-feedback">Please provide a valid event
									name</div>
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">작성직원</label> 
								<input type="text" name="mainCaluser" readonly="readonly" class="form-control" 
								id="inmainCaluser" value="${sessionScope.userID}">
							</div>
						</div>
					</div>
					<div class="row mt-2">
						<div class="text-end">
							<button type="button" class="btn btn-success" id="btn-save-event"
								onclick="main_insert()">등록</button>
							<button type="button" class="btn btn-light me-1"
								data-bs-dismiss="modal">닫기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- end modal-content-->
	</div>
	<!-- end modal dialog-->
</div>
<!-- 일정등록 modal 끝-->


<!-- 일정수정/삭제 modal -->
<div class="modal fade" id="mainupdatemodal" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header py-3 px-4 border-bottom-0">
				<h5 class="modal-title" id="modal-title">전사적 일정수정/삭제</h5>

				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-hidden="true" onclick="main_close()"></button>
			</div>
			<div class="modal-body p-4">
				<form class="needs-validation" name="mainupdatefrm" id="mainupdatefrm"
					action="/calendar/mainUpdateSch" method="post">
					<div class="row">
						<!-- 캘린더번호(고유키) -->
						<input type="text" id="mainCalno" name="mainCalno"
							style="display: none;">
						<!-- 끝 -->
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">시작일</label> <input
									class="form-control update" type="date" name="mainStart"
									id="upmainStart" />
							</div>
							<div class="mb-3">
								<label class="form-label">종료일</label> <input
									class="form-control update" type="date" name="mainEnd"
									id="upmainEnd" />
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">일정명</label> <input
									class="form-control update" placeholder="일정명을 남겨주세요"
									type="text" name="mainCaltitle" id="upmainCaltitle" />
								<div class="invalid-feedback">Please provide a valid event
									name</div>
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">상세내용</label> <input
									class="form-control update" type="text" name="mainCalcon"
									id="upmainCalcon" />
							</div>
						</div>
						<div class="col-12">
							<div class="mb-3">
								<label class="form-label">작성직원</label>&nbsp;
										<input class="form-control" type="text" id='onuser' style="display: none;"
										value="${sessionScope.userID}" name="mainCaluser" readonly="readonly">
									<div id="offuser">
										<button type="button" class="btn btn-sm btn-primary" id="upmainCaluser" onclick="fn_move()">
										</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-2">
						<div class="text-end">
							<button type="button" class="btn btn-success" id="btnmainupdate"
								onclick="main_update()">수정</button>
							<button type="button" class="btn btn-primary" id="btnmainupdatecom"
								onclick="main_updatecom()" style="display: none;">완료</button>
							<button type="button" class="btn btn-danger" id="btnmaindelete"
								onclick="main_delete()">삭제</button>
							<button type="button" class="btn btn-light me-1"
								onclick="main_close()">닫기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- end modal-content-->
	</div>
	<!-- end modal dialog-->
</div>
<!-- 일정수정/삭제 modal 끝 -->