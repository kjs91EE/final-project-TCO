<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
<script>

function clickShow(){
	$(".card-title").on("click", function(){
		$("#subject").val("봄맞이 세일");
		$("#fl").val();
		
	});
}
	$(function () {
		/* $(".del").on("click", function() {
			var delMail = $(this).attr("id");
			var idDel = "#" + delMail;
// 			console.log($(this).attr("id"));
			$("li").remove(idDel);
		}) */
		clickShow();
		console.log(${json});
		$("#snd").on("click", function() {
			// 받는사람
			var mails = [];
			mails = "${mails}";
			console.log("mails : " + mails);
			// 제목
			var subject = $("#subject").val();
			// 파일
			var files = CKEDITOR.instances['files'].getData();
			var file = $(CKEDITOR.instances['files'].getData()).attr("src");
// 			var text = $(CKEDITOR.instances['files'].getData()).html();
// 			var file = files.attr("src");
			console.log("file : " + files);
// 			console.log("file : " + text);

			var form = new FormData();
        	form.append("file1", $("#fl")[0].files[0]);
        	form.append("mails", mails);
        	form.append("subject", subject);
        	form.append("file", files);

			Swal.fire({
				title : "메일을 전송하시겠습니까?",
				type : "warning",
				showCancelButton : true,
				confirmButtonText : "전송",
				cancelButtonText : "취소",
			}).then(result => {
				if (result.isConfirmed) {
					$.ajax({
					    type: "POST",
					    url : "/cust/sendMail",
// 					    contentType : "application/x-www-form-urlencoded; charset=utf-8",
 						enctype: 'multipart/form-data',
 						processData: false,
 						contentType: false,
					    data : form,
					    dataType : "json",
					    success : function(data){
					    	console.log("data뭐노?" + data);
// 					    	var res = parseInt(data);
					    	
					        if(data){
					        // Sweet Alert
					          Swal.fire({
						          icon:'success',
						          title:'메일 전송 성공',
					       		}).then(function(){
					       			location.href="/cust/custprmt";
					       		})
					        }else{
					        	//Ajax 실패시
						    	Swal.fire({
						          icon:'error',
						          title:'메일 전송 실패',
					       		}, function(){
					       			//새로고침
					       			window.location.reload();
					       		});
					        }
					        
					    },
					    error : function(){
// 					    	alert("error");
					        //Ajax 실패시
					    	Swal.fire({
					          icon:'error',
					          title:'메일 전송 실패',
				       		}, function(){
				       			//새로고침
				       			window.location.reload();
				       		});
					    }
					});
				} else {
					window.location.reload();
				}

			});
		});
	})
</script>

<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0 font-size-18">📢고객 홍보</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">메일발송</a>/고객홍보</li>
                    <li class="breadcrumb-item active">Create Task</li>
                </ol>
            </div>

        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title mb-4">메일 전송</h4>
                <form class="outer-repeater" method="post">
                    <div data-repeater-list="outer-group" class="outer">
                        <div data-repeater-item="" class="outer">
                        	<div class="form-group row mb-4">
                                <label class="col-form-label col-lg-1">받는 사람</label>
                                <div class="col-lg-11">
									<span class="select2 select2-container select2-container--default select2-container--below select2-container--focus" dir="ltr" data-select2-id="5" style="width: auto;">
										<span class="selection">
											<span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false">
												<ul class="select2-selection__rendered">
													<c:forEach var="custVO" items="${list}">
													<li class="select2-selection__choice" title="Hawaii" data-select2-id="185" id="${custVO.custId}" value="${custVO.custMail}">
													${custVO.custMail}</li>
													</c:forEach>
												</ul>
											</span>
										</span>
									</span>
								</div>
                            </div>
                            
                            <div class="form-group row mb-4">
                                <label for="taskname" class="col-form-label col-lg-1">제목</label>
                                <div class="col-lg-11">
                                    <input id="subject" name="subject" type="text" class="form-control" placeholder="Enter Task Name...">
                                </div>
                            </div>
                            <div class="form-group row mb-4">
		                        <label class="col-form-label col-lg-1">파일 첨부</label>
		                        <div class="col-lg-11">
                                	<input class="form-control" type="file" id="fl">
		                        </div>
	                        </div>
                            <div class="form-group row mb-4 m-2">
                            	<textarea class="form-control" id="files" name="files"></textarea>
                            	<script type="text/javascript">
				                	CKEDITOR.replace('files',{
				            			filebrowserUploadUrl: '/cust/custfile',
				            			height: 500, 
				            			width: 1500,
				            			resize_enaleb : false,
		            		      		enterMode : CKEDITOR.ENTER_BR,
		            		      		shiftEnterMode : CKEDITOR.ENTER_P
				            		});
				                	
				                </script>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="row justify-content-end">
                    <div>
                        <button type="button" id="snd" class="btn btn-info">전송</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                        