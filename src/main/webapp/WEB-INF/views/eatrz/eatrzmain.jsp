<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
.a {
  transition: transform 0.4s ease;
  border-radius: 0;
  border: 0;
  margin-bottom: 1.5em;
}
.a:hover {
  transform: scale(1.03);
  box-shadow: 0 3px 5px 0 rgba(22, 22, 26, 0.18);
}
.sender{
	border: 0 solid black;
}

</style>

<script>
// 	$(function() {
// 		$("#btncreate").on("click", function() {
// 			$(location).attr("href", "/eatrz/eatrzinsert");
// 		});
// 	});
	function fn_work1(){
		swal.fire(
				"업무기안서를 선택하셨습니다.","","success"
				)
		$('#maindisplay').css('display','none');
		$('#workdisplay').css('display','block');
		$('#work2display').css('display','none');
		$('#restdisplay').css('display','none');
		$('#exampleModal').modal('hide');
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();
	}
	
	function fn_work2(){
		swal.fire(
				"수주신청서를 선택하셨습니다.","","success"
				)
		$('#maindisplay').css('display','none');
		$('#workdisplay').css('display','none');
		$('#work2display').css('display','block');
		$('#restdisplay').css('display','none');
		$('#exampleModal').modal('hide');
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();
	}
	
	function fn_rest(){
		swal.fire(
				"휴가신청서를 선택하셨습니다.","","success"
				)
		$('#maindisplay').css('display','none');
		$('#workdisplay').css('display','none');
		$('#work2display').css('display','none');
		$('#restdisplay').css('display','block');
		$('#exampleModal').modal('hide');
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();
	}
	
	
</script>
<body>
<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0 font-size-18">전자결재</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">메인화면</a></li>
                    <li class="breadcrumb-item active">전자결재</li>
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title -->
<div class="row">
<div class="d-xl-flex">
    <div class="w-100">
        <div class="d-md-flex">
            <div class="col-2 card filemanager-sidebar me-md-2">
                <div class="card-body">

                    <div class="d-flex flex-column h-100">
                        <div class="mb-4">
                            <div class="mb-3">
                                <div class="dropdown">
                                    <a href="#" class="btn btn-success w-100" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">
                                        <i class="mdi mdi-plus me-1"></i> <b>결재 작성하기</b>
                                    </a>
                                </div>
                            </div>
                            <ul class="list-unstyled categories-list">
                                <li>
                                    <div class="custom-accordion">
                                        <a class="text-body fw-medium py-1 d-flex align-items-center" data-bs-toggle="collapse" href="#draft-collapse" role="button" aria-expanded="true" aria-controls="categories-collapse">
                                            <i class="mdi mdi-folder font-size-16 text-warning me-2"></i> 결재 상신함 <i class="mdi mdi-chevron-up accor-down-icon ms-auto"></i>
                                        </a>
                                        <div class="collapse show" id="draft-collapse">
                                            <div class="card border-0 shadow-none ps-2 mb-0">
                                                <ul class="list-unstyled mb-0">
                                                    <li><a href="/eatrz/eatrzapr" class="d-flex align-items-center"><span class="me-auto">결재진행 </span><span class="badge bg-danger rounded-pill">3</span></a></li>
                                                    <li><a href="javascript: void(0);" class="d-flex align-items-center"><span class="me-auto">결재완료 </span><span class="badge bg-danger rounded-pill float-end">2</span></a></li>
                                                    <li><a href="javascript: void(0);" class="d-flex align-items-center"><span class="me-auto">반려 </span><span class="badge bg-danger rounded-pill">4</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="custom-accordion">
                                        <a class="text-body fw-medium py-1 d-flex align-items-center" data-bs-toggle="collapse" href="#approval-collapse" role="button" aria-expanded="true" aria-controls="receive-collapse">
                                            <i class="mdi mdi-folder font-size-16 text-warning me-2"></i> 결재 수신함 <i class="mdi mdi-chevron-up accor-down-icon ms-auto"></i>
                                        </a>
                                        <div class="collapse show" id="approval-collapse">
                                            <div class="card border-0 shadow-none ps-2 mb-0">
                                                <ul class="list-unstyled mb-0">
                                                    <li><a href="javascript: void(0);" class="d-flex align-items-center"><span class="me-auto">결재요청</span></a></li>
                                                    <li><a href="javascript: void(0);" class="d-flex align-items-center"><span class="me-auto">결재내역</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="mt-auto">
                        </div>
                    </div>

                </div>
            </div>
            <!-- filemanager-leftsidebar -->
	
			<!-- 메인페이지 -->
            <div class="col-10">
                <div class="card">
                    <div class="card-body" style="max-height: 850px; overflow: auto;">
                    	<div id ="maindisplay" style="display: block;"><jsp:include page="./eartzs/main.jsp"></jsp:include></div>
                    	<div id ="restdisplay" style="display: none;"><jsp:include page="./eartzs/rest.jsp"></jsp:include></div>
                    	<div id ="workdisplay" style="display: none;"><jsp:include page="./eartzs/work.jsp"></jsp:include></div>
                    	<div id ="work2display" style="display: none;"><jsp:include page="./eartzs/work2.jsp"></jsp:include></div>
                    </div>
                </div>
                <!-- end card -->
            </div>
            <!-- end 메인페이지 끝-->
        </div>
    </div>
</div>
<!-- end row -->
</div>
</body>



<!-- 서류선택 modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" style="z-index: 9999;">
    <div class="modal-dialog">
    
        <div class="modal-content">
            <div class="modal-header">
            	<span>문서 서식</span>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <div>
	               <div class="card-body">
	
	                   <ul class="list-unstyled categories-list">
	                       <li>
	                           <div class="custom-accordion">
	                               <a class="text-body fw-medium py-1 d-flex align-items-center" data-bs-toggle="collapse" href="#a-collapse" role="button" aria-expanded="true" aria-controls="categories-collapse">
	                                   <i class="bx bxs-inbox font-size-16 text-muted me-2"></i> 업무 <i class="mdi mdi-chevron-up accor-down-icon ms-auto"></i>
	                               </a>
	                               <div class="collapse show" id="a-collapse" style="">
	                                   <div class="card border-0 shadow-none ps-2 mb-0">
	                                       <ul class="list-unstyled mb-0">
	                                       	   <!--결재코드를 가지고 창을 이동하여 해당 하는 문서의 폼을 띄워야한다.-->
	                                           <li><a href="javascript: void(0);" class="d-flex align-items-center" onclick="fn_work1()"><span class="me-auto">업무기안서</span></a></li>
	                                           <li><a href="javascript: void(0);" class="d-flex align-items-center" onclick="fn_work2()"><span class="me-auto">수주신청서</span></a></li>
	                                           <li><a href="javascript: void(0);" class="d-flex align-items-center"><span class="me-auto">연장근무신청서</span></a></li>
	                                       </ul>
	                                   </div>
	                               </div>
	                           </div>
	                       </li>
	                       <li>
	                           <div class="custom-accordion">
	                               <a class="text-body fw-medium py-1 d-flex align-items-center" data-bs-toggle="collapse" href="#b-collapse" role="button" aria-expanded="true" aria-controls="receive-collapse">
	                                   <i class="bx bxs-inbox font-size-16 text-muted me-2"></i> 일반 <i class="mdi mdi-chevron-up accor-down-icon ms-auto"></i>
	                               </a>
	                               <div class="collapse show" id="b-collapse">
	                                   <div class="card border-0 shadow-none ps-2 mb-0">
	                                       <ul class="list-unstyled mb-0">
	                                           <li><a href="javascript: void(0);" class="d-flex align-items-center"><span class="me-auto">출장신청서</span></a></li>
	                                           <li><a href="javascript: void(0);" class="d-flex align-items-center" onclick="fn_rest()"><span class="me-auto">휴가신청서</span></a></li>
	                                       </ul>
	                                   </div>
	                               </div>
	                           </div>
	                       </li>
	                   </ul>
	
	               </div>
	           </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal 끝 -->    
</html>
