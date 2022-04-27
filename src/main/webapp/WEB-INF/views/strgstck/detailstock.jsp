<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="/resources/js/section.js"></script>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<style>
.nn {
	text-align: right;
}

.nr {
	text-align: left;
}
.seSelect{
	width: 200px;
	float: left;
}
.pt-0{
	margin-bottom: 30px;
}	
.search{
	width: 400px;
}
</style>

<script>
var newArray    = [];
<c:forEach var="list" items="${list}"> 
   var jsonObj = new Object();
   jsonObj.prodInfoNmDisplay = "${list.prodInfoNmDisplay}";
   jsonObj.strgStckQty = "${list.strgStckQtyDisplay}";
   jsonObj.strgStckSftyQty = "${list.strgStckSftyQtyDisplay}";
   jsonObj.strgStckDfltQty = "${list.strgStckDfltQtyDisplay}";
   jsonObj.cmncdCd = "${list.cmncdCd}";
   jsonObj.cmncdNm1 = "${list.cmncdNm1}";
   jsonObj.cmncdNm2 = "${list.cmncdNm2}";
   jsonObj = JSON.stringify(jsonObj);
   console.log("JSON jsonObj : " + jsonObj);
   //String 형태로 파싱한 객체를 다시 json으로 변환
   newArray.push(JSON.parse(jsonObj));
   
</c:forEach>

console.log("원본 배열 : " + newArray);

var jsonArray = newArray;

//테이블에 추가할 내용 만드는 함수
var str = "";
function chgFilter(){
   str = "";
   console.log("chgFilter 안 jsonArray.length : " + jsonArray.length);
   for(var i=0; i < jsonArray.length; i++){
      
      str += '<tr class="nr"><td data-org-colspan="1" data-priority="1" data-columns="tech-companies-1-col-1">';
      str += jsonArray[i].prodInfoNmDisplay + "</td>";
      str += '<td data-org-colspan="1" data-priority="3" data-columns="tech-companies-1-col-2" class="nn">';
      str += jsonArray[i].strgStckQty + "</td>";
      str += '<td data-org-colspan="1" data-priority="1" data-columns="tech-companies-1-col-3"  class="nn">';
      str += jsonArray[i].strgStckSftyQty + "</td>";
      
      str += '<td data-org-colspan="1" data-priority="3" data-columns="tech-companies-1-col-4"  class="nn">';
      str += jsonArray[i].strgStckDfltQty + "</td></tr>";
      

      
   }
   $("#tbContent").append(str);
}


//대분류 바뀌었을때
function fn_seChg(e){
	resetBtn();
   var opt = $("#cmncdNm1").val();
   var midOpt = $("#cmncdNm2").val();

   fn_seChgJs(e);
   
   if(opt != '전체'){
      bigSe();
   }
   
   chgFilter();
}

//중분류 바뀌었을때
function fn_midChg(e){
	resetBtn();
   var opt = $("#cmncdNm1").val();
   var midOpt = $("#cmncdNm2").val();
   midSe();
   chgFilter();
}


//대분류가 전체가 아닐때
function bigSe(){
   var opt = $("#cmncdNm1").val();
   jsonArray = jsonArray.reduce((pre, cur) => {
       if(cur.cmncdNm1 == opt ) pre.push(cur);
       return pre;
   },[]);
}

$(function(){
   chgFilter();
})

//중분류가 전체가 아닐때
function midSe(){
   var midOpt = $("#cmncdNm2").val();
   jsonArray = jsonArray.reduce((pre, cur) => {
       if(cur.cmncdNm2 == midOpt ) pre.push(cur);
       return pre;
   },[]);
}
//초기화버튼 클릭시 원본 배열 가져오는 함수
function resetBtn(){
	jsonArray = newArray;
	$(".nr").remove();
}

</script>

<!-- start page title -->
<div class="row">
	<div class="col-12">
		<div
			class="page-title-box d-sm-flex align-items-center justify-content-between">
			<h1 class="mb-sm-0 font-size-20">🧾상세 재고 현황</h1>
		</div>
	</div>
</div>
<!-- end page title -->

<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-body">

				<form name="searchFrm" id="searchFrm" action="/strgstck/detailstock">
					<div class="row mb-2">
						<div class="col-sm-3">
							<div class="search-box me-2 mb-2 d-inline-block">
								<div class="position-relative">
									<input class="form-control search" type="search" name="keyWord"
										id="keyWord" value="${param.keyWord}" placeholder="상품명입력">
									<i class="bx bx-search-alt search-icon"></i>
								</div>
							</div>
							<div class="col-sm-1 seicon">
								<button type="submit"
									class="btn btn-info btn-rounded waves-effect waves-light seicon"
									hidden="true">
									<i class="bx bx-search-alt-2"></i>
								</button>
							</div>
						</div>

					</div>
				</form>

				<div class="mt-4 pt-0">
					<h5 class="font-size-14 mb-3">상품분류</h5>
					<div class="col-md-10">
						<select id="cmncdNm1" name="cmncdNm1" class="form-select seSelect"
							onchange="fn_seChg(this)">
							<option value="전체" label="전체" />
							<option value="패션" label="패션" />
							<option value="가구/인테리어" label="가구/인테리어" />
							<option value="화장품/미용" label="화장품/미용" />
							<option value="식품" label="식품" />
							<option value="출산/유아동" label="출산/유아동" />
							<option value="반려동물용품" label="반려동물용품" />
							<option value="생활/주방용품" label="생활/주방용품" />
							<option value="가전" label="가전" />
							<option value="디지털" label="디지털" />
							<option value="컴퓨터" label="컴퓨터" />
							<option value="스포츠/레저" label="스포츠/레저" />
							<option value="건강/의료용품" label="건강/의료용품" />
							<option value="자동차/공구" label="자동차/공구" />
							<option value="취미/문구/악기" label="취미/문구/악기" />
							<option value="도서" label="도서" />
						</select> <select id="cmncdNm2" name="cmncdNm2"
							class="form-select seSelect" onchange="fn_midChg(this)">
							<option value="중분류 선택" label="중분류 선택" />
						</select>
					</div>
				</div>
				<br>
				<hr>
				<div class="table-rep-plugin">
					<div class="table-wrapper">
						<div class="table-responsive mb-0 fixed-solution"
							data-pattern="priority-columns">
							<div class="sticky-table-header"
								style="height: 46px; visibility: hidden; top: -1px; width: auto;"></div>
							<table id="tech-companies-1" class="table table-striped">
								<thead>
									<tr>
										<th data-priority="1" id="tech-companies-1-col-1" class="nr">상품명</th>
										<th data-priority="3" id="tech-companies-1-col-2" class="nn">창고재고수량</th>
										<th data-priority="1" id="tech-companies-1-col-3" class="nn">창고안전재고수량</th>
										<th data-priority="3" id="tech-companies-1-col-4" class="nn">창고기본보유수량</th>


									</tr>
								</thead>
								<tbody id="tbContent">
									<%--       <c:forEach var="list" items="${list}"> 
                                          <tr>
                                              <td data-org-colspan="1" data-priority="1" data-columns="tech-companies-1-col-1" class="nr">${list.prodInfoNmDisplay}</td>
                                              <td data-org-colspan="1" data-priority="3" data-columns="tech-companies-1-col-2" class="nn">${list.strgStckQty}</td>
                                              <td data-org-colspan="1" data-priority="3" data-columns="tech-companies-1-col-4" class="nn">${list.strgStckSftyQty}</td>
                                              <td data-org-colspan="1" data-priority="3" data-columns="tech-companies-1-col-5" class="nn">${list.strgStckDfltQty}</td>
                                 
                                          </tr>
                                       </c:forEach>  --%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end col -->
</div>
<!-- end row -->