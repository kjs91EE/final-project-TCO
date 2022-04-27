<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<title>거래처 목록</title>

</head>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
   function fn_click(){
      location.href="/emp/empinsert"
   }
   

</script>

 <!-- start page title -->
 <div class="row">
     <div class="col-12">
         <div class="page-title-box d-sm-flex align-items-center justify-content-between">
             <h1 class="mb-sm-0 font-size-20">🧑‍🤝‍🧑직원관리</h1>

             <div class="page-title-right">
                 <ol class="breadcrumb m-0">
                     <li class="breadcrumb-item"><a href="javascript: void(0);">직원관리</a></li>
                     <li class="breadcrumb-item active">직원조회</li>
                 </ol>
             </div>

         </div>
     </div>
 </div>
 <!-- end page title -->

 <div class="row">
     <div class="col-12">
         <div class="card">
             <div class="card-body">
                 <div class="row mb-2">
                     <div class="col-sm-4">
                         <div class="search-box me-2 mb-2 d-inline-block">
                             <div class="position-relative">
                             <!-- 검색  -->
                             <form name="searchForm" id="searchForm" action="/emp/emplist" method="get">
                             <div>
                                <input class="form-control" type="search"  name="keyWord" id="keyWord" value="${param.keyWord}" placeholder="사번(ID) 또는 이름">
                                   <!--  제발 submit 해주시궜어요????????? -->
                                   <i class="bx bx-search-alt search-icon"></i>
                             </div>
                              </form>
                             <!-- 검색끝  -->
                             </div>
                         </div>
                     </div>
                     <div class="col-sm-8">
                         <div class="text-sm-end">
                             <a href="/emp/empinsert" class="btn btn-success btn-rounded waves-effect waves-light mb-2 me-2"><i class="mdi mdi-plus me-1"></i> 직원 등록</a>
                         </div>
                     </div><!-- end col-->
                 </div>
               <!-- Nav tabs -->
               <!--직원조회-->
               <ul class="nav nav-tabs nav-tabs-custom" role="tablist">
                   <li class="nav-item">
                       <a class="nav-link active" data-bs-toggle="tab" href="#cnpt" role="tab">
                           <span class="d-none d-sm-block">직원</span> 
                       </a>
                   </li>  
               </ul>

               <!-- Tab panes -->
               <!-- 직원조회 -->
               <div class="tab-content p-3">
                   <div class="tab-pane active" id="cnpt" role="tabpanel">
                <div class="table">
                     <table class="table align-middle table-nowrap table-check">
                        <thead class="table-light">
                            <tr>
                               <th style="width: 20px;" class="align-middle">No</th>
                               <th class="align-middle">id</th>
                               <th class="align-middle">이름</th>
                               <th class="align-middle">소속</th>
                               <th class="align-middle">직급</th>
                               <th class="align-middle">구분</th>
                               </tr>
                         </thead>

                        <tbody>
                         
                         <c:set var="i" value="${list.currentPage*7-6-1}" />
			                 <c:forEach items="${data}" var="data">
			                  
			                  <tr onClick="location.href='/emp/empdetail?empId=${data.empId}'">
						       <td>
							       <div class="form-check font-size-14">
							               	${data.rnum}
							       </div>
						       </td>
				   			   <td>
						           <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">${data.empId}</a></h5>
						           <p class="text-muted mb-0">지점</p>
			      			   </td>
						       <td>  
						       		<h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">${data.empNm}</a></h5></td>
						       <td>
						           <div>
						               <a href="javascript: void(0);" class="badge badge-soft-primary font-size-15 m-1">${data.brncofcNm}</a>
						               <a href="javascript: void(0);" class="badge badge-soft-primary font-size-15 m-1">${data.dptopt}</a>
						           </div>
			      			   </td>
						       <td>
						            <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">${data.lelopt}</a></h5>
						       </td>
						       <td>
						             <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">${data.empSe}</a></h5>
						       </td>
						 	  </tr>
							</c:forEach>
						</tbody>
       			 	</table>
                                                     <!-- 페이징  -->
                <div class="row">
                       <div class="col-lg-12">
                           <ul class="pagination pagination-rounded justify-content-center mt-4">
                               <li class="page-item <c:if test='${list.currentPage<5}'>disabled</c:if>" >
                                   <a href="/emp/emplist?currentPage=${list.currentPage-4}" class="page-link"><i class="mdi mdi-chevron-left"></i></a>
                               </li>
                                                                      
                               <c:forEach var="pNo" begin="${list.startPage}" end="${list.endPage}" step="1">
                               <li class="page-item <c:if test='${list.currentPage eq pNo}'>active</c:if> " >
                                   <a href="/emp/emplist?currentPage=${pNo}" class="page-link">${pNo}</a>
                               </li>       
                               </c:forEach> 
                                                   
                               <li class="page-item <c:if test='${list.endPage>=list.totalPages}'>disabled</c:if> "  > 
                                   <a href="/emp/emplist?currentPage=${list.startPage+5}" class="page-link"><i class="mdi mdi-chevron-right"></i></a>
                               </li>
                           </ul>
                       </div>
                   </div>
                </div>
              </div>
            </div>
          </div>
        </div>
         <!-- end card -->
     </div>
 </div>
 <!-- end row -->


 <script src="assets/libs/jquery/jquery.min.js"></script>
 <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="assets/libs/metismenu/metisMenu.min.js"></script>
 <script src="assets/libs/simplebar/simplebar.min.js"></script>
 <script src="assets/libs/node-waves/waves.min.js"></script>
 <script src="assets/js/app.js"></script>





