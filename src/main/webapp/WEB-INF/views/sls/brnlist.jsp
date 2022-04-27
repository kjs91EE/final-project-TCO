<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="/resources/js/vfs_fonts.js"></script>
<script type="text/javascript">

function showPage() {
	  document.getElementById("loader").style.display = "none";
	  document.getElementById("myDiv").style.display = "block";
	}
	
	
$(document).ready( function() {
	setTimeout(showPage, 1000);
	var slsSum= $('#slsSum').html();
	$('#totalSls').val(slsSum);
    $('#example').DataTable( {
        dom: 'Bfrtip',
        order:[[0,"desc"]],			//처음 정렬순서
        buttons: [{
        	text: '엑셀다운로드',
        	title: 'TCO 매출현황',
            extend: 'excelHtml5',
            customize: function( xlsx ) {
                var sheet = xlsx.xl.worksheets['sheet1.xml'];
                var col = $('col', sheet);
                col.each(function () {
                    $(this).attr('width', 20);
             	});
                $('row c[r^="C"]', sheet).attr( 's', '2' );
	            },
	        sheetName: '매출현황'
	        },{
	        text: 'PDF출력',
	        title: 'TCO 매출현황',
	        extend: 'pdfHtml5',
	        customize: function( doc ){
	        	doc.content[1].table.widths = [ '30%', '25%', '25%', '14%' ];
	        		}
		        }
	        ]
    } );
} );


function fn_submit(){
	var frm = document.Frm;
	frm.submit();
}
</script>

<!-- 로딩창출력 -->
<div id="loader"></div>

<!-- myDiv안에는 로딩후 출력할 창을 넣는다 -->
<div style="display:none;" id="myDiv">

<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0 font-size-18">${sessionScope.brncofcNm}의 매출 현황</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Sale</a></li>
                    <li class="breadcrumb-item active">List</li>
                </ol>
            </div>

        </div>
    </div>
</div>
<div class="row">
	<div class="col-12">
	
<div class="card">
	<div class="card-body">
<!-- 			<div class="mb-5"> -->
<!-- 				<ul class="nav nav-tabs nav-tabs-custom justify-content-center"> -->
<!-- 				    <li class="nav-item"><a class="nav-link active" href="/sls/brnlist" >매출리스트</a></li> -->
<%-- 				    <c:if test="${sessionScope.brncofcId != 'BRN00000' }"> --%>
<!-- 				    <li class="nav-item"><a class="nav-link" href="/sls/list" >총 매출 리스트</a></li> -->
<%-- 				    </c:if> --%>
<!-- 				</ul>  -->
<!-- 			</div> -->
	<!-- 날짜 검색 버튼 -->
			<div class="tab-pane active" id="brnlist" role="tabpanel">
		<form action="/sls/brnlist" method="get" name="Frm" id="Frm">	
		<div class="row">
			<div class="col-sm-2">
				<div class="mb-3">
				<label>시작일</label>
					<input type="date" name="startDay" 
					id="startDay" autocomplete="off" class="form-control">
				</div>
			</div>
			<div class="col-sm-2">
				<div class="mb-3">
				<label>종료일</label>
					<input type="date" name="endDay" 
					id="endDay" autocomplete="off" class="form-control">
				</div>
			</div>
			<div class="col-sm-2">
				<div class="mb-3">
				<label>날짜검색</label>
					<button type="button" class="btn btn-secondary btn-success" style="display: block;" 
					onclick="fn_submit()"><i class="bx bx-search-alt">검색하기</i></button>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="mb-3">
				<label>날짜별 총매출금액</label>
					<input id="totalSls" type="text" class="form-control" 
					style="display: block;" readonly="readonly" value="${Sumsls} "/>
				</div>
			</div>
		</div>
		</form>
	<!--날짜검색버튼끝-->

	<div class="card-body"> 
			
		<div class="table-wrapper">
			<table class="table table-bordered" id="example" style="text-align: center;">
		<thead>
			<tr style="background:#F3F3F9; color: black;" >
				<th>매출번호</th>
				<th>매출금액</th>
				<th>매출일</th>
				<th>매출명세서</th>
			</tr>
		</thead>
		<tbody>
		<!--foreach문으로 출력-->
		<c:set var="slsSum" value="0"/>
		<c:forEach var="slsVO" items="${data}">
			<tr>
				<td>
					${slsVO.slsId}
				</td>
				
<!-- 				<td> -->
<%-- 					${slsVO.brncofcNm} --%>
<!-- 				</td> -->
				
				<td>
					<fmt:formatNumber value="${slsVO.slsAmt}" pattern="#,###.##원"/>
				</td>
				
				<td>
					<fmt:formatDate value="${slsVO.slsDt}" pattern="yyyy년 MM월 dd일"/>
				</td>
				<td>
				
<!-- 				<strong> -->
<!-- 				<a href="#" class="popup-form btn btn-sm btn-primary" id="detailBtn" -->
<%-- 				data-bs-toggle="modal" data-bs-target="#detailModal" data-notifyid="${slsVO.slsId}">상세보기</a></strong>  --%>
				<strong>
				<a href="/sls/detail/${slsVO.slsId}" class="popup-form btn btn-sm btn-primary" id="detailBtn">매출명세보기</a></strong>
				</td>
			</tr>
		<c:set var="slsSum" value="${slsSum+slsVO.slsAmt}"></c:set>
		</c:forEach>
		<!-- foreach끝 -->
		</tbody>
	</table>
	<!-- 매출 총액 값 숨기기 -->
	<div id="slsSum" style="display: none;">
		<fmt:formatNumber value="${slsSum}" pattern="#,###.##원" var="Sumsls" />
		<c:out value="${Sumsls}"/>
	</div>
	<!-- 매출 총액 숨기기끝 -->
	</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

