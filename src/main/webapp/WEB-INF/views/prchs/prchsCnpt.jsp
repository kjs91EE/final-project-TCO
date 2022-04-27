<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<head>
<title>매입명세서다</title>
</head>
<style>
        #report { border-collapse:collapse; width: 100%;}
        #report h4 { margin:0px; padding:0px;}
        #report th { background:#eff2f7 url(header_bkg.png) repeat-x scroll center left; color:#000; padding:7px 15px; text-align:left; height: 50px; }
        #report td { background:#fff none repeat-x scroll center left; color:#000; padding:7px 15px; border: none;}
        #report tr.odd td { background:#fff url(row_bkg.png) repeat-x scroll center left; cursor:pointer; height: 50px;}
        #report div.arrow { background:transparent url(arrows.png) no-repeat scroll 0px -16px; width:0px; height:0px; display:block;}
        #report div.up { background-position:0px 0px;}
        #report tr { border-color: #eff2f7; }
</style>
<body>
 <!-- start page title -->
 <div class="row">
     <div class="col-12">
         <div class="page-title-box d-sm-flex align-items-center justify-content-between">
             <h1 class="mb-sm-0 font-size-20"><i class="bx bx-buildings"></i>거래처별매입명세</h1>

             <div class="page-title-right">
                 <ol class="breadcrumb m-0">
                     <li class="breadcrumb-item"><a href="javascript: void(0);">매입</a></li>
                     <li class="breadcrumb-item active">거래처별매입명세</li>
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
             
             	<!-- 날짜 검색 버튼 -->
		<form action="/prchs/prchsOrder" method="get" name="Frm" id="Frm">	
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
                <div class="search-box me-2 mb-3 d-inline-block">
                <label>거래처명</label>
                    <div class="position-relative">
                        <input id="cnptNmKeyword" type="text" class="form-control" placeholder="거래처명 입력" style="width:100%;">
                        <i class="bx bx-search-alt search-icon"></i>
                    </div>
                </div>
            </div>
			<div class="col-sm-2">
				<div class="mb-3">
				<label>검색</label>
					<button type="button" class="btn btn-secondary btn-secondary" style="display: block;" 
					onclick="fn_submit()"><i class="bx bx-search-alt"></i></button>
				</div>
			</div>

		</div>
		</form>
	<!--날짜검색버튼끝-->

				<div class="table">
					   <table id="report">
					    <thead>
					        <tr>
                                 <th class="align-middle text-center">일자</th>
                                 <th class="align-middle text-center">전표번호</th>
                                 <th class="align-middle text-center">거래처명</th>
                                 <th class="align-middle text-center">거래처 연락처</th>
                                 <th class="align-middle text-end">공급가액</th>
                                 <th class="align-middle text-end">부가세액</th>
                                 <th class="align-middle text-end">합계</th>
                                 <th class="align-middle text-center">상태</th>
					        </tr>
					    </thead>
                         <tbody id="insertTbody">
                         	<c:forEach var="prchsVO" items="${prchsCnptList}">
                             <tr>
                                 <td class="text-center"><div class="arrow"></div>${prchsVO.prchsDt}</td>
                                 <td id="prchsIdSelector" class="text-center"><a href="#" class="text-body fw-bold">${prchsVO.prchsId}</a></td>
                                 <td>
                                     ${prchsVO.cnptNm}
                                 </td>
                                 <td>
                                 	${prchsVO.cnptTel}
                                 </td>
                                 <td class="text-end">
                                     ${prchsVO.prchsSuAmtDisplay}원
                                 </td>
                                 <td class="text-end">
                                 	${prchsVO.prchsVatDisplay}원
                                 </td>
                                 <td class="text-end">
                                 	${prchsVO.prchsAmtDisplay}원
                                 </td>
                                 <td class="text-center">
                                     <span class="badge bg-primary">${prchsVO.prchsSe}</span>
                                 </td>
                             </tr>
					        <tr id="printPrchsDetail">
					        	<td colspan='7' id="printPrchsDetailTd">
					        	</td>
					        </tr>
                         	</c:forEach>
                         </tbody>
					      
					    </table>
                 </div>
             </div>
         </div>
         <!-- end card -->
     </div>
 </div>
 <!-- 2end row -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
// 검색해서 전송하기
function fn_submit(){
	//파라미터 변수에 넣기
	let v_startDay = $("#startDay").val();
	let v_endDay = $("#endDay").val();
	let v_cnptNm = $("#cnptNmKeyword").val();
	console.log(v_startDay);
	
	let tbody = $("#insertTbody");
	//파라미터 받아서 전송ㅎ
	$.ajax({
		url :"/prchs/prchsCnpt.do",
		type : "get",
		data : { 
			startDay : v_startDay,
			endDay : v_endDay,
			cnptNm : v_cnptNm
			},
	    dataType : "json",
	    success : function(res){
	    	console.log(res);
	    	//tbody 비우기
	    	fn_tbodyDelete();
	    	
	    	//변수 선언
	    	let str = "";
	    	
	    	//데이터 뿌뤼기
	    	$.each(res, function(i,v){
	    		str += "<tr><td class='text-center'><div class='arrow'></div>" + v.prchsDt + "</td>";
	    		str += "<td id='prchsIdSelector' class='text-center'><a href='#' class='text-body fw-bold'>"+ v.prchsId + "</a></td>";
                str += "<td class='text-center'>" + v.cnptNm + "</td>";
                str += "<td class='text-center'>" + v.cnptTel + "</td>";
                str += "<td class='text-end'>" + v.prchsSuAmtDisplay + "원</td>";
                str += "<td class='text-end'>" + v.prchsVatDisplay + "원</td>";
                str += "<td class='text-end'>" + v.prchsAmtDisplay + "원</td>";
                str += "<td class='text-center'><span class='badge bg-primary'>" + v.prchsSe + "</span></td></tr>";
		    	str += "<tr id='printPrchsDetail'><td colspan='7' id='printPrchsDetailTd'></td></tr>";
	    	});
	    	
	    	//넣기
	    	tbody.html(str);
	    	
	    	//토글 숨기기
	    	evenHide();
	    	
	    	//
	    	$("#report tr.odd").click(function(){
	    		oddClick($(this));        
	        });
	    	
	    },
	    error : function(xhr){
	    	alert(xhr.status + "에러데스까");
	    }
	});
	
    
	
}

// tbody 비우기
function fn_tbodyDelete(){
	//tbody에 .html('')하기
	let tbody = $("#insertTbody").html('');
}


// toggle 숨기기
function evenHide(){
	$("#report tr:odd").addClass("odd");
    $("#report tr:not(.odd)").hide(); 
    $("#report tr:first-child").show(); //열머리글 보여주기
}  

//, 넣기
function numberWithCommas(x) { 
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","); 
}

    
// 클릭 시 
function oddClick(el){ //element
	el.next("tr").toggle("slow");
    el.find(".arrow").toggleClass("up");
	let prchsId = el.children("#prchsIdSelector").text();
	
	//여기서 ajax로 id를 주고 정보를 가져오기
//		console.log(prchsId);
	let prchsTr = el;
//		console.log(el.next().children("#printPrchsDetailTd").text("예이"));
	// 거래처 아이디를 얻었을 때 - 상품 가져오기 
	$.ajax({
		url :"/prchs/getPrchsDetail",
		type : "get",
		data : {paramId : prchsId},
	    dataType : "json",
	    success : function(data){
	    	let prchsGdsVO = data[0].prchsGdsVO;
	    	let str = "<div class='row'><div class='col-md-2 text-center tdiv'><strong>번호</strong></div>";
	    		str += "<div class='col-md-3 tdiv'><strong>상품명</strong></div>";
	    		str += "<div class='col-md-2 text-end tdiv'><strong>단가</strong></div>";
	    		str += "<div class='col-md-2 text-end tdiv'><strong>수량</strong></div>";
	    		str += "<div class='col-md-3 text-end tdiv'><strong>합계</strong></div></div>";
	    	$.each(prchsGdsVO, function(i,v){
	    		str += "<div class='row'><div class='col-md-2 text-center'>"+ (i+1) +"</div>";
	    		str += "<div class='col-md-3'>"+ v.prodInfoNmDisplay +"</div>";
	    		str += "<div class='col-md-2 text-end'>"+ v.prchsGdsAmtDisplay +"원</div>";
	    		str += "<div class='col-md-2 text-end'>"+ numberWithCommas(v.prchsGdsQty) +"원</div>";
	    		str += "<div class='col-md-3 text-end'>"+ numberWithCommas(v.prchsGdsAmt * v.prchsGdsQty) +"원</div></div>";
	   
	    	});
                   
        	//선택한 tr의 자식에 넣기
        	prchsTr.next().children("#printPrchsDetailTd").html(str);
        	
        },
        error : function(xhr){
        	alert(xhr.status);
        }
	});
}


$(document).ready(function(){
	//처음에 숨기기
	evenHide();

    $("#report tr.odd").click(function(){
		oddClick($(this));        
    });
   

});

</script>
 
</body>
</html>