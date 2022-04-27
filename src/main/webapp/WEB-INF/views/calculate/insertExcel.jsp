<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script src="/resources/js/jquery.form.js"></script>
<script type="text/javascript">
	//클릭시 창이동
	function fn_click(){
		location.href="/sls/uploadlist";
	}
	
	//엑셀파일 업로드
	function checkFileType(filePath) {
	    var fileFormat = filePath.split(".");

	    if (fileFormat.indexOf("xls") > -1 || fileFormat.indexOf("xlsx") > -1) {
	      return true;
	      } else {
	      return false;
	    }
	  }

	  function fn_upload() {
	    var file = $("#slsFile").val();

	    if (file == "" || file == null) {
	    	Swal.fire({
		          icon:'error',
		          title:'파일이 없습니다.'
	       		})
	    return false;
	    
	    } else if (!checkFileType(file)) {
	    	Swal.fire({
		          icon:'error',
		          title:'엑셀 파일만 업로드가 가능합니다.'
	       		})
	    return false;
	    }
		
	    
	    Swal.fire({
	       	  title: '업로드를 하시겠습니까?',
	       	  icon:'info',
	       	  showCancelButton: true,
	       	  confirmButtonText: '업로드',
	       	  cancelButtonText: '취소',
	       	}).then((result) => {
	       	  if (result.isConfirmed) {
	       		var options = {
	       		        success : function(data) {
	       		        	Swal.fire({
	       				          icon:'success',
	       				          title:'모든 데이터가 업로드 되었습니다.'
	       			       		})
	       		        },
	       		        error : function(request,status){
	       		        	Swal.fire({
	       				          icon:'error',
	       				          title:"code :"+request.status+"가 발생하였습니다."+"\n"+"본사로 연락주십시오."
	       			       		})
	       		        },
	       		        type : "POST"
	       		        };
	       		      $("#insertSls").ajaxSubmit(options);
	       	  }else{
	       		Swal.fire('취소하셨습니다', '','error')
	       		return false;
	       	  }
	       	})
	  }
</script>

    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0 font-size-18">매출 자료 업로드</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">정산</a></li>
                        <li class="breadcrumb-item active">매출 자료 업로드</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="checkout-tabs">
            <div class="row">
                <div class="col-xl-2 col-sm-3">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                      
                        <a class="nav-link" id="v-pills-confir-tab" data-bs-toggle="pill" href="#" role="tab" aria-controls="v-pills-confir" aria-selected="false" onclick="fn_click()">
                            <i class="mdi mdi-database-import check-nav-icon mt-4 mb-2"></i>
                            <p class="fw-bold mb-4">매입 자료 업로드</p>
                        </a>
                        <a class="nav-link active" id="v-pills-shipping-tab" data-bs-toggle="pill" href="#" role="tab" aria-controls="v-pills-shipping" aria-selected="true">
                            <i class="mdi mdi-database-export d-block check-nav-icon mt-4 mb-2"></i>
                            <p class="fw-bold mb-4">매출 자료 업로드</p>
                        </a>
                        <a class="nav-link" id="v-pills-shipping-tab" role="tab" href="/sls/howuse" 
                        	onclick="window.open(this.href,'','left=2000,width=500, height=1200, scrollbars=yes'); return false;">
                            <i class="mdi mdi-comment-question-outline d-block check-nav-icon mt-4 mb-2"></i>
                            <p class="fw-bold mb-4">업로드 사용법</p>
                        </a>
                        
                    </div>
                </div>
						 <div class="col-xl-10 col-sm-9">
						         <div class="card">
						             <div class="card-body" style="height:455px;">
						                 <div class="tab-content" id="v-pills-tabContent">
						                     <div class="tab-pane fade active show" id="v-pills-shipping" role="tabpanel" aria-labelledby="v-pills-shipping-tab">
						                         <div>
						                             <h4 class="card-title">매출 자료 업로드</h4>
						                          			<div class="card-body">
										<p class="card-title-desc">
										주어진 양식에 매출 정산자료를 입력한 후, 업로드 하여 주시길 바랍니다.
										<a class="btn btn-success waves-effect waves-light" href="/resources/fileformat/TCO매출양식.xlsx">
						                    <i class="bx bx-down-arrow-alt d-block font-size-12">매출양식 다운로드</i> 
						                </a>
										</p>
										
										<div>
											<form action="/sls/insertSls.do" id="insertSls" name="insertSls" method="post" enctype="multipart/form-data">
												<div class="fallback">
													<input type="file" id="slsFile" name="slsFile">
												</div>
												<div class="dz-message needsclick">
													<div class="mb-3">
														<i class="display-4 text-muted bx bxs-cloud-upload"></i>
													</div>
													<h4>엑셀 파일(.xlsx)을 클릭해서 지정해주세요</h4>
												</div>
											</form>
										</div>
										<br><br>
										<div class="text-center mt-4">
											<button type="button" class="btn btn-primary waves-effect waves-light" 
											onclick="fn_upload()">업로드</button>
										</div>
									</div>
	                          </div>
	                      </div>
	                  </div>
	              </div>
	          </div>
	      </div>
    </div>
</div>



     