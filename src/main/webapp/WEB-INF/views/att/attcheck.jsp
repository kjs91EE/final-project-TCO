<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                   
										<h1 class="mb-sm-0 font-size-20" >💻업무상태</h1>
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">근태관리</a></li>
                                            <li class="breadcrumb-item active">업무상태</li>
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        <div class="row">
					<c:forEach var="list" items="${list}">
                            <div class="col-xl-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-body">
                                        <div class="mb-4">
                                           <img class="rounded-circle avatar-sm" src="${list.empImg}" alt="">
                                        </div>
                                        <h5 class="font-size-15 mb-1"><a href="javascript: void(0);" class="text-dark">${list.empNm}</a></h5>
                                        <p class="text-muted">[${list.opt}]${list.dptopt}/${list.lelopt}</p>

                                        <div>
                                            <a href="javascript: void(0);" class="badge bg-primary font-size-11 m-1">${list.worksttsCk}</a>
                                            <c:if test="${empty list.worksttsCk}">
                                             <a href="javascript: void(0);" class="badge bg-primary font-size-11 m-1">업무전</a>
                                            </c:if>
                                              <a href="javascript: void(0);" class="badge bg-warning font-size-11 m-1">${list.cmncdCdd}</a>
                                        </div>
                                    </div>
                                    <div class="card-footer bg-transparent border-top">
                                        <div class="contact-links d-flex font-size-20">
                                            <div class="flex-fill">
                                                <a href="javascript: void(0);"><i class="bx bx-message-square-dots"></i></a>
                                            </div>
                                            <div class="flex-fill">
                                                <a href="javascript: void(0);"><i class="bx bx-pie-chart-alt"></i></a>
                                            </div>
                                            <div class="flex-fill">
                                                <a href="/emp/empdetail?empId=${list.empId}"><i class="bx bx-user-circle"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
</c:forEach>
                            </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="text-center my-3">
                                    <a href="javascript:void(0);" class="text-success"><i class="bx bx-hourglass bx-spin me-2"></i> Load more </a>
                                </div>
                            </div> <!-- end col-->
                        </div>
                        <!-- end row -->
