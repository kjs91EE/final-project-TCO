<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<style>
.dataTables_wrapper {
	padding: 20px;
}

table.dataTable th {
	background-color: #eff2f7;
}

table.dataTable tbody td {
	border-color: white;
}

</style>
<script type="text/javascript">
	function fn_submit() {
		var frm = document.searchForm;
		console.log("frm.size : " + frm.size.value);
		console.log("frm.brnSelect : " + frm.brnSelect.value);
		console.log("frm.startDay : " + frm.startDay.value);
		console.log("frm.endDay : " + frm.endDay.value);
		frm.submit();
	}

	//로딩페이지설정
	function showPage() {
		document.getElementById("loader").style.display = "none";
		document.getElementById("myDiv").style.display = "block";
	}

	//정산 요약
	window.onload = function() {
		//로딩페이지 시간설정
		setTimeout(showPage, 1000);

		function replaceAll(str, searchStr, replaceStr) {
			return str.split(searchStr).join(replaceStr);
		}

		var prcsum = $("#prcsum").html();
		var slssum = $("#slssum").html();

		var prcsum = replaceAll(prcsum, ",", "");
		var slssum = replaceAll(slssum, ",", "");

		//big1: 판매총액글자
		//big2: 판매총액금액
		//big3: 구매총액글자
		//big4: 구매총액금액
		//big5: 순이익금액
		$("#big1").html($("#slssumName").html());
		$("#big2").html($("#slssum").html());
		$("#big3").html($("#prcsumName").html());
		$("#big4").html($("#prcsum").html());

		var prcsum = prcsum.replace("원", "") * 1; // 만들어지기 전에 접근 하셨어요!!!!
		var slssum = slssum.replace("원", "") * 1;
		var netIncome = (slssum * 1) - (prcsum * 1);

		if (netIncome < 0) {
			$('#big5').css('color', 'red');
		} else {
			$('#big5').css('color', '#2a9c72');
		}

		var netIncome = netIncome.toLocaleString("ko-KR")

		$("#big5").text(netIncome + "원");

	}
	//검색폼
	function fn_submit() {
		var frm = document.searchForm;
		frm.submit();
	}

	//dataTable 엑셀
	$(document).ready(function() {

		$('#example').DataTable({
			dom : 'Bfrtip',
			buttons : [ {
				text : '엑셀다운로드',
				extend : 'excelHtml5',
				customize : function(xlsx) {
					var sheet = xlsx.xl.worksheets['sheet1.xml'];
					$('row c[r^="C"]', sheet).attr('s', '2');
				}
			} ]
		});

		$('#example2').DataTable({
			dom : 'Bfrtip',
			buttons : [ {
				text : '엑셀다운로드',
				extend : 'excelHtml5',
				customize : function(xlsx) {
					var sheet = xlsx.xl.worksheets['sheet1.xml'];
					$('row c[r^="C"]', sheet).attr('s', '2');
				}
			} ]
		});
	});
</script>



<script>
	function replaceAll(str, searchStr, replaceStr) {
		return str.split(searchStr).join(replaceStr);
	}

	//일일정산 상신버튼 클릭시 전송
	$(function() {
		var prcsum = $("#prcsum").html();
		var slssum = $("#slssum").html();

		var prcsum = replaceAll(prcsum, ",", "");
		var slssum = replaceAll(slssum, ",", "");

		var prcsum = prcsum.replace("원", "") * 1;
		var slssum = slssum.replace("원", "") * 1;
		// 		alert(prcsum)
		// 		alert(slssum)
		var netIncome = (slssum * 1) - (prcsum * 1);

		$("#dailyCalPostBtn").on(
				"click",
				function() {
					var calbrn = $('#calbrn option:selected').val();
					//수정 전송
					// 			alert(calbrn)
					netIncome = slssum - prcsum

					$.ajax({
						type : "POST",
						url : "/calculate/dailyCalInsert",
						data : {
							"prcsum" : prcsum,
							"slssum" : slssum,
							"netIncome" : netIncome,
							"calbrn" : calbrn
						},
						dataType : "text",
						success : function(data) {
							console.log("data잘 들어감? : " + data);
							if (data == "success") {

								var v_senderID = $("#userID").val();
								var v_senderName = $("#userNM").val();

								if (calbrn == 'BRN00000') {
									calbrn = '본사'
								}
								if (calbrn == 'BRN00001') {
									calbrn = '대전문화점'
								}
								if (calbrn == 'BRN00002') {
									calbrn = '인천마계점'
								}
								if (calbrn == 'BRN00003') {
									calbrn = '부산점'
								}

								var v_brncofcnm = calbrn
								var v_dptopt = $("#dptopt").val();
								var v_lelopt = $("#lelopt").val();

								//일일정산 상신알림 db 저장
								$.ajax({
									type : 'post',
									url : '/alam/alamInsert',
									data : { // 세션 데이터 담기 
										"title" : "settlement",
										"senderId" : v_senderID,
										"senderName" : v_senderName,
										"receiverId" : "EMP00001",
										"receiverName" : "김설현",
										"brncofcnm" : v_brncofcnm,
										"shortstocknm" : "p",
										"dptopt" : v_dptopt,
										"lelopt" : v_lelopt,
										"receptionStatus" : "X"
									},
									success : function(data) {

										swal.fire(v_brncofcnm + "일일정산 상신 성공",
												"", 'success');

										if (socket) {
											let socketMsg = "settlement" + ","
													+ v_senderID + ","
													+ v_senderName + ","
													+ "EMP00001" + "," + "김설현"
													+ "," + v_brncofcnm + ","
													+ "p" + "," + v_dptopt
													+ "," + v_lelopt;
											socket.send(socketMsg);
											console.log("메!세!지!! : "
													+ socketMsg);
										}
									},
									error : function(err) {
										console.log("소켓 샌드 에러", err);
									}
								});
							}
						}
					});
				});
	});
</script>

<script>
	$(function() {

		$(".modalOpen").on("click", function() {
			$("#detailModal").modal("show")
			var prodInfoNm = $(this).find("td:eq(3)").text();
			//데이터 보내기
			$.ajax({
				type : "get",
				url : "/calculate/prodDetail",
				data : {
					"prodInfoNm" : prodInfoNm
				},
				dataType : "json",
				success : function(data) {
					// 		    	console.log(data);
					$("#prodInfoId").val(data.prodInfoId);
					$("#prodInfoNm").val(data.prodInfoNm);
					$("#prodInfoPrchsAmt").val(data.prodInfoPrchsAmt);
					$("#prodInfoNtslAmt").val(data.prodInfoNtslAmt);
					$("#prodInfoLdt").val(data.prodInfoLdt);
					$("#prodInfoPlor").val(data.prodInfoPlor);
					$("#cmncdCd").val(data.cmncdCd);
					$("#prodInfoYn").val(data.prodInfoYn);
					$("#cnptId").val(data.cnptId);
					$("#cnptNm").val(data.cnptNm);
					$("#cnptTel").val(data.cnptTel);
					$("#cnptMail").val(data.cnptMail);
				}
			});
		});
	})
</script>
<!-- 로딩페이지 -->
<div id="loader"></div>
<!-- myDiv = 로딩후 뜨는창 -->
<div id="myDiv">
	<div class="card">
		<div class="card-body">
			<!--날짜 검색 버튼-->
			<form name="searchForm" id="searchForm" action="/calculate/dailyPrc"
				method="get">
				<div class="row">

					<!-- 				<input type="text" class="form-control" id="startDay" name="startDay" -->
					<!-- 					placeholder="시작일" data-date-format="yyyy-MM-dd" -->
					<!-- 					data-date-orientation="bottom auto" data-provide="datepicker" -->
					<!-- 					data-date-autoclose="true"> -->

					<div class="col-sm-2">
						<div class="mb-3">
							<label>시작일</label> <input class="form-control" type="date"
								id="startDay" name="startDay">
						</div>
					</div>

					<div class="col-sm-2">
						<div class="mb-3">
							<label>종료일</label> <input class="form-control" type="date"
								id="endDay" name="endDay">
						</div>
					</div>

					<!-- 				<input type="text" class="form-control" id="startDay" name="startDay" -->
					<!-- 					placeholder="종료일" data-date-format="yyyy-MM-dd" -->
					<!-- 					data-date-orientation="bottom auto" data-provide="datepicker" -->
					<!-- 					data-date-autoclose="true"> -->

					<div class="col-sm-2">
						<div class="mb-3">
							<label>검색지점선택</label> <select class="form-select" id="brnSelect" name="brnSelect">
								<option value="BRN00001"selected="selected">대전</option>
								<option value="BRN00002">인천</option>
								<option value="BRN00003">부산</option>
							</select>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="mb-3">
							<label>검색</label>
							<div class="input-group mb-3">
<!-- 								<input type="text" class="form-control" name="keyWord" -->
<%-- 									id="keyWord" value="${param.keyWord}"> --%>
								<button class="btn btn-success" type="submit" id="">찾기</button>
							</div>
						</div>
					</div>
			</form>		
			
					<div class="col-sm-2">
						<div class="mb-3">
							<label>정산지점선택</label> <select class="form-select" id="calbrn"
								name="calbrn">
								<option value="BRN00001" selected="selected">대전</option>
								<option value="BRN00002">인천</option>
								<option value="BRN00003">부산</option>
							</select>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="mb-3">
							<label>일일정산상신</label>
							<div class="input-group mb-3">
								<button class="btn btn-success" type="button"
									id="dailyCalPostBtn">일일매출상신</button>
								<sec:csrfInput />
							</div>
						</div>
					</div>
				</div>

			<!-- 		<div> -->
			<!-- 			<table> -->
			<!-- 				<tr> -->
			<!-- 					<td><h1 id="big1"></h1></td> -->
			<!-- 					<td><h1 id="big2"></h1></td> -->
			<!-- 					<td><h1>&nbsp; - &nbsp;</h1></td> -->
			<!-- 					<td><h1 id="big3"></h1></td> -->
			<!-- 					<td><h1 id="big4"></h1></td> -->
			<!-- 					<td><h1>&nbsp; = 순이익 : &nbsp;</h1></td> -->
			<!-- 					<td><h1 id="big5"></h1></td> -->
			<!-- 				</tr> -->
			<!-- 			</table> -->
			<!-- 		</div> -->
			<!--날짜검색버튼-->
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<div class="card mini-stats-wid">
				<div class="card-body">
					<div class="d-flex">
						<div class="flex-grow-1">
							<p class="text-secondary fw-medium mb-2" id="big1"></p>
							<h4 class="mb-0" id="big2"></h4>
						</div>
						<div class="flex-shrink-0 align-self-center">
							<div class="mini-stat-icon avatar-sm rounded-circle bg-primary">
								<span class="avatar-title"> <i
									class="bx bx-dollar font-size-24"></i>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card mini-stats-wid">
				<div class="card-body">
					<div class="d-flex">
						<div class="flex-grow-1">
							<p class="text-secondary fw-medium mb-2" id="big3"></p>
							<h4 class="mb-0" id="big4"></h4>
						</div>
						<div class="flex-shrink-0 align-self-center">
							<div class="mini-stat-icon avatar-sm rounded-circle bg-primary">
								<span class="avatar-title"> <i
									class="bx bx-cart font-size-24"></i>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card mini-stats-wid">
				<div class="card-body">
					<div class="d-flex">
						<div class="flex-grow-1">
							<p class="text-secondary fw-medium mb-2">순이익</p>
							<h4 class="mb-0" id="big5"></h4>
						</div>
						<div class="flex-shrink-0 align-self-center">
							<div class="mini-stat-icon avatar-sm rounded-circle bg-primary">
								<span class="avatar-title"> <i
									class="bx bxs-heart font-size-24"></i>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="card-body">
		<div class="row">
			<div class="col-xl-5">
				<div class="card">
					<table class="table align-middle table-nowrap" id="example">
						<thead>
							<tr>
								<th>입고번호</th>
								<!-- STRG_WRHS_DT -->
								<th>창고입고일</th>
								<!-- STRG_WRHS_QTY -->
								<th>지점명</th>
								<!-- STRG_WRHS_DT -->
								<th>상품명</th>
								<!-- BRNCOFC_ID -->
								<!-- 							<th>리드타임</th> -->
								<!-- PROD_INFO_LDT -->
								<th>창고 수량</th>
								<!-- PROD_INFO_ID  -->
								<th>입고가격</th>
								<!-- STRG_WRHS_QTY -->
								<th>입고총액</th>
								<!--  -->
							</tr>
						</thead>
						<tbody>
							<!--foreach문으로 출력-->
							<c:set var="prcsum" value="0" />
							<c:forEach var="calVO" items="${dailyPrc}" varStatus="status">
								<tr class="modalOpen">
									<td>${calVO.strgWrhsId}</td>
									<!-- 입고번호 -->
									<td><fmt:formatDate value="${calVO.strgWrhsDt}"
											pattern="yyyy-MM-dd" /></td>
									<!-- 창고입고일 -->
									<td>${calVO.brncofcNm}</a></td>
									<!-- 지점명 -->
									<td id="strgWrhsProdInfoNm"><a href="#"
										class="popup-form btn btn-sm btn-primary"
										style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;
										max-width: 80px;">${fn:replace(calVO.prodInfoNm, '_', ' ')}</a></td>
									<!-- 상품명 -->
									<%-- 								<td>${calVO.prodInfoLdt} 일</a></td> --%>
									<!-- 리드 타임 -->
									<td>${calVO.strgWrhsQty}ea</a></td>
									<!-- 창고 수량 -->
									<td><fmt:formatNumber value="${calVO.prodInfoPrchsAmt}"
											pattern="#,###.##원" /></td>
									<!-- 입고가격 -->
									<td><fmt:formatNumber value="${calVO.strgWrhsTotal}"
											pattern="#,###.##원" /></td>
									<!-- 입고가격 -->
								</tr>
								<c:set var="prcsum" value="${prcsum + calVO.strgWrhsTotal}" />
							</c:forEach>
						</tbody>
						<tr>
							<td id="prcsumName">구매총액 :</td>
							<td id="prcsum"><fmt:formatNumber value="${prcsum}"
									pattern="#,###.##원" /></td>
						</tr>
					</table>
					<!-- 				<div class="row"> -->
					<!-- 				<div class="col-sm-12 col-md-5"> -->
					<!-- 					<div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite"> -->
					<!-- 						A*7-6	A*7 -->
					<%-- 						<c:if test="${list.currentPage*6 > total}"> --%>
					<%-- 				         Showing ${list.currentPage*6-5} to ${total} of ${total} entries --%>
					<%-- 				         </c:if> --%>
					<%-- 						<c:if test="${list.currentPage*6 <= total}"> --%>
					<%-- 				         Showing ${list.currentPage*6-5} to ${list.currentPage*6} of ${total} entries --%>
					<%-- 				         </c:if> --%>
					<!-- 					</div> -->
					<!-- 				</div> -->
					<!-- 			</div> -->
				</div>
			</div>

			<div class="col-xl-7">
				<div class="card">
					<table class="table align-middle table-nowrap" id="example2">
						<thead>
							<tr>
								<th id="num">판매번호</th>
								<!-- cust_ntsl_id -->
								<th>판매일</th>
								<!-- cust_ntsl_dt -->
								<th>지점명</th>
								<!-- brncofc_nm -->
								<th>상품명</th>
								<!-- prod_info_nm  -->
								<th>거래처 명</th>
								<th>고객아이디</th>
								<!-- cust_id -->
								<th>판매수량</th>
								<!-- cust_id -->
								<th>판매가격</th>
								<!-- cust_ntsl_amt -->
								<th>판매금액</th>
								<!-- cust_ntsl_amt -->
							</tr>
						</thead>
						<tbody>
							<!--foreach문으로 출력-->
							<c:set var="slssum" value="0" />
							<c:forEach var="custNtsVO" items="${dailyCustNts}"
								varStatus="status">
								<tr class="modalOpen">
									<td>${custNtsVO.custNtslId}</td>
									<td><fmt:formatDate value="${custNtsVO.custNtslDt}"
											pattern="yyyy-MM-dd" /></td>
									<!-- 창고입고일 -->
									<td>${custNtsVO.brncofcNm}</td>
									<td id="custNtslprodInfoNm"><a href="#"
										class="popup-form btn btn-sm btn-primary"
										style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;
										max-width: 80px;">${fn:replace(custNtsVO.prodInfoNm, '_', ' ')}</a></td>
									<td style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;
										max-width: 80px;">${custNtsVO.cnptNm}</td>
									<td id="custNtslcustId">${custNtsVO.custId}</td>
									<td>${custNtsVO.custNtslQty}</td>
									<td><fmt:formatNumber value="${custNtsVO.custNtslAmt}"
											pattern="#,###.##원" /></td>
									<td><fmt:formatNumber value="${custNtsVO.custNtslTotal}"
											pattern="#,###.##원" /></td>
								</tr>
								<c:set var="slssum" value="${slssum + custNtsVO.custNtslTotal}" />
							</c:forEach>
						</tbody>
						<tr>
							<td id="slssumName">판매총액 :</td>
							<td id="slssum"><fmt:formatNumber value="${slssum}"
									pattern="#,###.##원" /></td>
						</tr>
					</table>
					<%-- 				<c:out value=" 일일정산 : 판매총액-구매총액 = ${slssum - prcsum}" /> --%>
					<!-- 				<div class="row"> -->
					<!-- 				<div class="col-sm-12 col-md-5"> -->
					<!-- 					<div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite"> -->
					<!-- 						A*7-6	A*7 -->
					<%-- 						<c:if test="${list.currentPage*6 > total}"> --%>
					<%-- 				         Showing ${list.currentPage*6-5} to ${total} of ${total} entries --%>
					<%-- 				         </c:if> --%>
					<%-- 						<c:if test="${list.currentPage*6 <= total}"> --%>
					<%-- 				         Showing ${list.currentPage*6-5} to ${list.currentPage*6} of ${total} entries --%>
					<%-- 				         </c:if> --%>
					<!-- 					</div> -->
					<!-- 				</div> -->
					<!-- 페이징 처리 시작 -->
					<!-- 				<div class="col-sm-12 col-md-7"> -->
					<!-- 					<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate"> -->
					<!-- 						<ul class="pagination"> -->
					<!-- 							Previous 시작 -->
					<%-- 							<li class="paginate_button page-item previous <c:if test='${list.startPage<6}'>disabled</c:if>"	id="dataTable_previous"> --%>
					<%-- 							<a href="/calculate/list?currentPage=${list.startPage-5}&page=${param.page}&keyWord=${param.keyWord}" --%>
					<!-- 								aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li> -->
					<!-- 							Previous 끝 -->
					<!-- 							Page번호 시작 -->
					<%-- 							<c:forEach var="pNo" begin="${list.startPage}" --%>
					<%-- 								end="${list.endPage}" step="1"> --%>
					<%-- 								<li	class="paginate_button page-item <c:if test='${list.currentPage eq pNo}'>active</c:if>"> --%>
					<%-- 									<a href="/calculate/list?currentPage=${pNo}&page=${param.page}&keyWord=${param.keyWord}" --%>
					<%-- 									aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">${pNo} </a> --%>
					<!-- 								</li> -->
					<%-- 							</c:forEach> --%>
					<!-- 							Page번호 끝 -->
					<!-- 							Next 시작 -->
					<%-- 							<li class="paginate_button page-item next <c:if test='${list.endPage>=list.totalPages}'>disabled</c:if>" --%>
					<!-- 								id="dataTable_next"> -->
					<%-- 								<a href="/calculate/list?currentPage=${list.startPage+5}&page=${param.page}&keyWord=${param.keyWord}" --%>
					<!-- 								aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li> -->
					<!-- 							Next 끝 -->
					<!-- 						</ul> -->
					<!-- 					</div> -->
					<!-- 				</div> -->
					<!-- 페이징 처리 끝 -->
					<!-- 			</div> -->
					<!-- 				</div> -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- myDiv = 로딩후 뜨는창 -->

<!-- 상세정보 modal -->
<div class="modal fade" id="detailModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true"
	style="display: none;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">상품 상세정보</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>

			<div class="modal-body">
				<form>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">상품코드:</label> <input
							type="text" class="form-control" id="prodInfoId" placeholder="바보">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">상품명:</label> <input
							type="text" class="form-control" id="prodInfoNm" placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">상품매입가격:</label>
						<input type="text" class="form-control" id="prodInfoPrchsAmt"
							placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">상품판매가격:</label>
						<input type="text" class="form-control" id="prodInfoNtslAmt"
							placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">상품리드타임:</label>
						<input type="text" class="form-control" id="prodInfoLdt"
							placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">상품원산지:</label>
						<input type="text" class="form-control" id="prodInfoPlor"
							placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">상품분류:</label> <input
							type="text" class="form-control" id="cmncdCd" placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">정상판매여부:</label>
						<input type="text" class="form-control" id="prodInfoYn"
							placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">거래처아이디:</label>
						<input type="text" class="form-control" id="cnptId" placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">거래처이름:</label>
						<input type="text" class="form-control" id="cnptNm" placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">거래처연락처:</label>
						<input type="text" class="form-control" id="cnptTel"
							placeholder="">
					</div>
					<div class="mb-3">
						<label for="recipient-name" class="col-form-label">거래처이메일:</label>
						<input type="text" class="form-control" id="cnptMail"
							placeholder="">
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<div id="msgStack"></div>
<!-- 상세정보 modal -->
