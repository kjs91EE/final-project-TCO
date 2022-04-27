<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
th {
       padding-right: 150px;
        text-align: center;
      
        font-size: 16px;
        
      }

.caldi{
	margin-left: 650px;
}

.but{
	margin-top: 30px;
	margin-right: 30px;
}
td{
	height: 55px;
	 font-size: 15px;
}
.cd{
	height: 2000px;
	/* border : 1px solid red; */
}
</style>



<script src="assets/libs/jquery/jquery.min.js"></script>

<script>


var day = new Date();
day.setDate(day.getDate()-day.getDay());

var num = 0;

$(function(){

document.getElementById('calToday').click()   ;
 

});

/* function count(type){
	alert("아씌");
	
	
	if(type === 'pl') {
	    num = parseInt(num) + 7;
	  }else if(type === 'mi')  {
	    num = parseInt(num) - 7;
	  }
	alert(num);
	 
	console.log(num);
	
	 location.href = "/att/attlist?num="+num; 
	
} */

function week_calandar(week) {
	
	if(week == 1) {
	    num = parseInt(num) + 7;
	    
	}else if(week == -1)  {
	  	num = parseInt(num) - 7;
	  
	}else if(week == 0){
	 	num = parseInt(0);
	 
	}
/* 	 location.href = "/att/attlist?num="+num;  */
	 
	console.log("num이 이상하다: "+num)
	
	
	day.setDate(day.getDate()+week*7);
	var title = day.getFullYear() + "." + (day.getMonth()+1);
	var data = []
	
	for(var i=0 ; i<7 ; i++) {
		
		data[i] =  day.getDate() ;
		
		
		if(day.getDate() == 1)
		title += "~" + day.getFullYear() + "." + (day.getMonth()+1);
		day.setDate(day.getDate()+1);
	
	}
	
	
	day.setDate(day.getDate()-7);
	
	
	document.getElementById("calMon").innerHTML = title
	
	document.getElementById("calM").innerHTML = data[1]+'(월)';
	document.getElementById("calTs").innerHTML = data[2]+'(화)';
	document.getElementById("calW").innerHTML = data[3]+'(수)';
	document.getElementById("calTr").innerHTML = data[4]+'(목)';
	document.getElementById("calF").innerHTML = data[5]+'(금)';

	$.ajax({
		url : "/att/attlist",
		type : "post",
		dataType : "html",
		data : {num : num},
		success : function(result){
			console.log(result)
			$("#dataResult").html(result);
		},
		error : function(){
			alert("error");
		}
	});

}

function set_day() {
	
	day = new Date();
	console.log("today"+ day);
	day.setDate(day.getDate()-day.getDay());
	console.log("today2"+ day);
	
	week_calandar(0);
}



</script>



<div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                 
 									<h1 class="mb-sm-0 font-size-20" >📆근태조회</h1>
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">근태관리</a></li>
                                            <li class="breadcrumb-item active">근태 조회</li>
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card" >
                                    <div class="card-body cd"  >
                                     
                                        
                                            <div id="right">
                                                <div id="menu" class="mb-3">
                                        
                                                    <span id="menu-navi" class="d-sm-flex flex-wrap text-center text-sm-start justify-content-sm-between">
                                                      
                                        			<div class="caldi">
                                                        <h3 class="render-range fw-bold pt-2 mx-2 " id="calMon"></h3>
                                        			</div>
                                        			
                                                        <div class="dropdown align-self-start mt-3 mt-sm-0 mb-2" >
                                                          	 <div class="d-sm-flex flex-wrap gap-1">
                                                            <div class="btn-group mb-2 but" role="group" aria-label="Basic example">
                                                             <input type="button"   class="btn btn-primary move-today mb-2"  value="<" onclick = "week_calandar(-1)" />
															<input type="button" class="btn btn-primary move-today mb-2" id="calToday" value="today" onclick="set_day()" />
															<input type="button" class="btn btn-primary move-today mb-2"  value=">" onclick= "week_calandar(1);" />
                                        				</div>
                                        				</div>
                                                        </div>
                                                        
                                                    </span>

                                                </div>
                                            </div>
                                        
                                                                           
    <div id="calendar" style="height: 1100px;">
    <div class="tui-full-calendar-layout tui-view-8 tui-view-13 tui-view-16 tui-view-54 tui-view-57 tui-view-59" 
    style="background-color: white;">
    <div class="tui-full-calendar-month tui-view-49 tui-view-50 tui-full-calendar-vlayout-container">
    <div id="calendar" style="height: 800px;">
    <div class="tui-full-calendar-layout tui-view-8 tui-view-13 tui-view-16" style="background-color: white;">
    <div class="tui-full-calendar-month tui-view-3 tui-view-4 tui-full-calendar-vlayout-container">
    <div class="tui-view-8" data-panel-index="0" style="height: 31px;">
    <div class="tui-full-calendar-month-dayname" style="border-top: 1px solid #e5e5e5; height: 31px; font-size: 14px; 
    background-color: inherit;  font-weight: normal;">
    <table>
    <tr>
    	<th>이름</th>
    	<th>근무시간(M)</th>
    	<th id="calM"></th>
    	<th id="calTs"></th>
    	<th id="calW"></th>
    	<th id="calTr"></th>
    	<th id="calF"></th>
    </tr>
    <tbody id="dataResult">
<c:forEach var="i" begin="0" end="${list.size()-5}" step="5">
   <tr>
    	<td>${list.get(i).empId}</td>
    	<td>${list.get(i).sumtm}</td>
    	<td>출근: ${list.get(i).worksttsBgngTm} <br> 퇴근: ${list.get(i).worksttsEndTm} </td> 
    	<td>출근: ${list.get(i+1).worksttsBgngTm} <br> 퇴근: ${list.get(i+1).worksttsEndTm} </td> 
    	<td>출근: ${list.get(i+2).worksttsBgngTm} <br> 퇴근: ${list.get(i+2).worksttsEndTm} </td> 
    	<td>출근: ${list.get(i+3).worksttsBgngTm} <br> 퇴근: ${list.get(i+3).worksttsEndTm} </td> 
    	<td>출근: ${list.get(i+4).worksttsBgngTm} <br> 퇴근: ${list.get(i+4).worksttsEndTm} </td> 
    </tr>
</c:forEach>
    </tbody>

    </table>
</div>
</div>




<div class="tui-full-calendar-weekday-grid">

<div class="tui-full-calendar-weekday-grid-line tui-full-calendar-holiday-sat tui-full-calendar-near-month-day" style="width:14.285714285714286%; left:85.71428571428572%; background-color: inherit; font-size: 14px;
        ">
     
    </div> 
</div>

</div></div>

<!-- 실선  -->
<div class="tui-full-calendar-month-week-item" style="height: 16.6667%;"><div class="tui-full-calendar-weekday tui-view-48">
<div class="tui-full-calendar-weekday-border" style="
    border-top: 1px solid #e5e5e5;
"></div>
<!-- 실선  -->

</div></div></div></div>
<div class="tui-full-calendar-floating-layer tui-view-9" style="display: none; position: absolute;"></div>
<div class="tui-full-calendar-floating-layer tui-view-14" style="display: none; position: absolute;"></div>
<div class="tui-full-calendar-floating-layer tui-view-17" style="display: none; position: absolute;"></div></div></div>
    </div><div class="tui-full-calendar-floating-layer tui-view-55" style="display: none; position: absolute;">
</div><div class="tui-full-calendar-floating-layer tui-view-58" style="display: none; position: absolute;">
</div><div class="tui-full-calendar-floating-layer tui-view-60" style="display: none; position: absolute;"></div>
</div></div>