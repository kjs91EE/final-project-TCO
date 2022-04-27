<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<script>
	$(function() {
		$("#btncreate").on("click", function() {
			$(location).attr("href", "/eatrz/eatrzinsert");
		});
	});
</script>

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

<div class="d-xl-flex">
    <div class="w-100">
        <div class="d-md-flex">
            <div class="card filemanager-sidebar me-md-2">
                <div class="card-body">

                    <div class="d-flex flex-column h-100">
                        <div class="mb-4">
                            <div class="mb-3">
                                <div class="dropdown">
                                    <button class="btn btn-light w-100" id="btncreate" type="button">
                                        <i class="mdi mdi-plus me-1"></i> 결재 작성하기
                                    </button>
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
                                                    <li><a href="javascript: void(0);" class="d-flex align-items-center"><span class="me-auto"><b>결재진행</b></span></a></li>
                                                    <li><a href="javascript: void(0);" class="d-flex align-items-center"><span class="me-auto">결재완료</span></a></li>
                                                    <li><a href="javascript: void(0);" class="d-flex align-items-center"><span class="me-auto">임시저장</span></i></a></li>
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
            
            <div class="w-100">
            <div class="card">
                <div class="card-body">
                <div class="mt-4">
	                <div class="d-flex flex-wrap">
	                    <h5 class="font-size-16 me-3"><b>결재 진행 문서</b></h5>
	
	                    <form class="mt-4 mt-sm-0 float-sm-end d-flex align-items-center">
	                     <div class="search-box mb-2 me-2">
	                         <div class="position-relative">
	                             <input type="text" class="form-control bg-light border-light rounded" placeholder="Search...">
	                             <i class="bx bx-search-alt search-icon"></i>
	                         </div>
	                     </div>
	
	                     <div class="dropdown mb-0">
	                         <a class="btn btn-link text-muted mt-n2" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
	                             <i class="mdi mdi-dots-vertical font-size-20"></i>
	                         </a>
	                       
	                         <div class="dropdown-menu dropdown-menu-end">
	                             <a class="dropdown-item" href="#">Share Files</a>
	                             <a class="dropdown-item" href="#">Share with me</a>
	                             <a class="dropdown-item" href="#">Other Actions</a>
	                         </div>
	                     </div>
	                 </form>
	                    <div class="ms-auto">
	                        <a href="javascript: void(0);" class="fw-medium text-reset">View All</a>
	                    </div>
	                </div>
	                <hr class="mt-2">
	
	                <div class="table">
	                    <table class="table align-middle table-nowrap table-hover mb-0">
	                        <thead>
	                            <tr>
	                              <th scope="col">기안일</th>
	                              <th scope="col">결재양식</th>
	                              <th scope="col">제목</th>
	                              <th scope="col">첨부</th>
	                              <th scope="col">기안자</th>
	                              <th scope="col">결재상태</th>
	                            </tr>
	                          </thead>
	                        <tbody>
	                            <tr>
	                                <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-file-document font-size-16 align-middle text-primary me-2"></i> index.html</a></td>
	                                <td>12-10-2020, 09:45</td>
	                                <td colspan="2">09 KB</td>
	                                <td></td>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                            <tr>
	                                <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-folder-zip font-size-16 align-middle text-warning me-2"></i> Project-A.zip</a></td>
	                                <td>11-10-2020, 17:05</td>
	                                <td colspan="2">115 KB</td>
	                                <td></td>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                            <tr>
	                                <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-image font-size-16 align-middle text-muted me-2"></i> Img-1.jpeg</a></td>
	                                <td>11-10-2020, 13:26</td>
	                                <td colspan="2">86 KB</td>
	                                <td></td>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                            <tr>
	                                <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-text-box font-size-16 align-middle text-muted me-2"></i> update list.txt</a></td>
	                                <td>10-10-2020, 11:32</td>
	                                <td colspan="2">08 KB</td>
	                                <td></td>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                            <tr>
	                                <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-folder font-size-16 align-middle text-warning me-2"></i> Project B</a></td>
	                                <td>10-10-2020, 10:51</td>
	                                <td colspan="2">72 KB</td>
	                                <td></td>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                            <tr>
	                                <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-text-box font-size-16 align-middle text-muted me-2"></i> Changes list.txt</a></td>
	                                <td>09-10-2020, 17:05</td>
	                                <td colspan="2">07 KB</td>
	                                <td></td>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                            <tr>
	                                <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-image font-size-16 align-middle text-success me-2"></i> Img-2.png</a></td>
	                                <td>09-10-2020, 15:12</td>
	                                <td colspan="2">31 KB</td>
	                                <td></td>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                            <tr>
	                                <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-folder font-size-16 align-middle text-warning me-2"></i> Project C</a></td>
	                                <td>09-10-2020, 10:11</td>
	                                <td colspan="2">20 KB</td>
	                                <td></td>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                            <tr>
	                                <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="bx bxs-file font-size-16 align-middle text-primary me-2"></i> starter-page.html</a></td>
	                                <td>08-10-2020, 03:22</td>
	                                <td colspan="2">11 KB</td>
	                                <td></td>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>
	                 <!-- 페이징처리 시작 -->
                <ul class="pagination pagination-rounded justify-content-center mb-2">
                    <li class="page-item <c:if test='${list2.startPage<6}'>disabled</c:if>">
                        <a class="page-link" aria-controls="DataTables_Table_2" href="/cust/custlist?currentPage=${list2.startPage-5}&keyWord=${param.keyWord}" aria-label="Previous">
                            <i class="mdi mdi-chevron-left"></i>
                        </a>
                    </li>
                    <c:forEach var="pNo" begin="${list2.startPage}" end="${list2.endPage}" step="1">
	                    <li class="page-item <c:if test='${list2.currentPage eq pNo}'>active</c:if> " >
	                        <a class="page-link" aria-controls="DataTables_Table_2" href="/cust/custlist?currentPage=${pNo}&keyWord=${param.keyWord}">${pNo}</a>
	                    </li>       
                    </c:forEach> 
                    <li class="page-item <c:if test='${list2.endPage>=list2.totalPages}'>disabled</c:if>">
                        <a class="page-link" aria-controls="DataTables_Table_2" href="/cust/custlist?currentPage=${list2.startPage+5}&keyWord=${param.keyWord}" aria-label="Next">
                            <i class="mdi mdi-chevron-right"></i>
                        </a>
                    </li>
                </ul>
	            </div>
                <!-- end card -->
                </div>
                </div>
            </div>
            <!-- end w-100 -->
        </div>
    </div>
</div>
<!-- end row -->
                  
