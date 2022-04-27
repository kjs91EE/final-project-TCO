<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
%>
<style>
.ft{
	font: red;
}	
</style>
 <div class="vertical-menu">

                <div data-simplebar="init" class="h-100">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu list-unstyled" id="side-menu">
                            
                            <li class="menu-title" key="t-apps">MENU</li>
                            <c:if test="${sessionScope.brncofcId == 'BRN00000'}">
                            <li>
                                <a href="/strgstck/rcvordr" class="ft">
                                    <i class="bx bx-pen"></i>
                                    <span>수주</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bx-receipt"></i>
                                    <span key="t-invoices">매입</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/prchs/prchsOrder" key="t-invoice-detail">매입발주서</a></li>
                                    <li>
                                        <a href="javascript: void(0);" class="has-arrow" key="t-level-1-2">매입명세서</a>
                                        <ul class="sub-menu" aria-expanded="true">
                                            <li><a href="/prchs/prchsCnpt" key="t-level-2-2">거래처별매입명세서</a></li>
                                            <li><a href="/prchs/prchsProd" key="t-level-2-3">품목별매입명세서</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/prchs/prchsCondition" key="t-tabs-accordions">매입현황</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="mdi mdi-warehouse"></i>
                                    <span key="t-tasks">재고</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/strgstck/headWare" key="t-create-task">입고</a></li>
                                    <li><a href="/strgstck/headShipList" key="t-create-task">출고</a></li>
                                    <li><a href="/strgstck/detailstock" key="t-task-list">상세재고현황</a></li>
                                    <li><a href="/strgstck/headLack" key="t-create-task">부족재고현황</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bx-dollar-circle"></i>
                                    <span key="t-contacts">정산</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/calculate/dailyPrc" key="t-user-grid">매입/매출 정산</a></li>
                                    <li><a href="/sls/uploadlist" key="t-profile">정산자료엑셀업로드</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="/sls/list" class="waves-effect">
                                    <i class="bx bx-briefcase-alt-2"></i>
                                    <span key="t-projects">매출</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="/sttst/mainProfit" class="waves-effect">
                                    <i class="bx bx-bar-chart"></i>
                                    <span key="t-blog">통계</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="dripicons-user"></i>
                                    <span key="t-email">고객</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/cust/custlist" key="t-read-email">고객조회</a></li>
                                    <li><a href="/cust/custprmt" key="t-read-email">고객홍보</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bx-store"></i>
                                    <span key="t-ecommerce">거래처/상품</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/cnpt/list" key="t-product-detail">거래처조회</a></li>
                                    <li><a href="/cnpt/insert" key="t-products">거래처등록</a></li>
                                    <li><a href="/prod/list" key="t-customers">상품조회</a></li>
                                    <li><a href="/prod/insert" key="t-orders">상품등록</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="dripicons-user-group"></i>
                                    <span key="t-crypto">직원</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/att/attdetail" key="t-kyc">근태관리</a></li>
                                    <li><a href="/att/attlist" key="t-kyc">근태조회</a></li>
                                    <li><a href="/att/attcheck" key="t-exchange">업무상태확인</a></li>
                                    <li><a href="/emp/emplist" key="t-wallet">직원등록/조회</a></li>
                                    <li><a href="/notice/noticelist" key="t-ico">공지사항</a></li>
                                </ul>
                            </li>
                            
<!--                             <li> -->
<!--                                 <a href="javascript: void(0);" class="has-arrow waves-effect"> -->
<!--                                     <i class="bx bx-user-circle"></i> -->
<!--                                     <span key="t-authentication">전자결재</span> -->
<!--                                 </a> -->
<!--                                 <ul class="sub-menu" aria-expanded="false"> -->
<!--                                     <li><a href="/eatrz/eatrzmain" key="t-kyc">결재메인</a></li> -->
<!--                                     <li><a href="/eatrz/eatrzinsert" key="t-kyc">결재작성</a></li> -->
<!--                                 </ul> -->
<!--                             </li> -->

                            <li>
                                <a href="/chat/websocketMessengerView" class="waves-effect">
                                    <i class="bx bxs-chat"></i>
                                    <span key="t-utility">채팅</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bx-happy-alt"></i>
                                    <span key="t-utility">내정보</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/emp/mypage" key="t-starter-page">마이페이지</a></li>
                                    
                                </ul>
                            </li>
                            
                            <li>
                                <a href="/calendar/main" class="waves-effect">
                                    <i class="bx bx-calendar"></i>
                                    <span key="t-dashboards">캘린더</span>
                                </a>
                            </li>
							</c:if>
							
							<c:if test="${sessionScope.brncofcId != 'BRN00000'}">
							<li>
                                <a href="/calculate/pos" class="waves-effect">
                                    <i class="bx bx-calculator"></i>
                                    <span key="t-email">POS</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bx-pen"></i>
                                    <span key="t-email">발주</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/ordr/order" key="t-inbox">발주</a></li>
                                    <li><a href="/ordr/condition?brncofcId=${sessionScope.brncofcId}" key="t-read-email">발주 현황</a></li>
                                    <li><a href="/ordr/orderList?brncofcId=${sessionScope.brncofcId}" key="t-read-email">발주 내역</a></li>
                                </ul>
                            </li>
                            
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="mdi mdi-warehouse"></i>
                                    <span key="t-tasks">재고</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/store/branchWrhouseList?brncofcId=${sessionScope.brncofcId}" key="t-create-task">입고</a></li>
                                    <li><a href="/strgstck/branchShipList?brncofcId=${sessionScope.brncofcId}" key="t-create-task">출고</a></li>
                                    <li><a href="/strgstck/detailstock" key="t-task-list">상세재고현황</a></li>
                                    <li><a href="/store/lackStock?brncofcId=${sessionScope.brncofcId}" key="t-create-task">부족재고현황</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="/sls/brnlist" class="waves-effect">
                                    <i class="bx bx-briefcase-alt-2"></i>
                                    <span key="t-projects">매출</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bx-dollar-circle"></i>
                                    <span key="t-contacts">정산</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/calculate/dailyPrc" key="t-user-grid">매입/매출 정산</a></li>
                                    <li><a href="/sls/uploadlist" key="t-profile">정산자료엑셀업로드</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="/sttst/dateProfit" class="waves-effect">
                                    <i class="bx bx-bar-chart"></i>
                                    <span key="t-blog">통계</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="dripicons-user"></i>
                                    <span key="t-email">고객</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/cust/custinsert" key="t-inbox">고객등록</a></li>
                                    <li><a href="/cust/custlist" key="t-read-email">고객조회</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="dripicons-user-group"></i>
                                    <span key="t-crypto">직원</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="/att/attdetail" key="t-kyc">근태관리</a></li>
                                    <li><a href="/att/attlist" key="t-kyc">근태조회</a></li>
                                    <li><a href="/att/attcheck" key="t-exchange">업무상태확인</a></li>
                                    <li><a href="/sig/siglist" key="t-ico">지점공지사항</a></li>
                                </ul>
                            </li>
                                
                            <li>
                                <a href="/chat/websocketMessengerView" class="waves-effect">
                                    <i class="bx bxs-chat"></i>
                                    <span key="t-utility">채팅</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="bx bx-store"></i>
                                    <span key="t-contacts">매장</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                	<c:if test="${sessionScope.brncofcId != 'BRN00000'}">
                                    	<li><a href="/store/storeMap?brncofcId=${sessionScope.brncofcId}">매장 지도 보기</a></li>
                                    </c:if>
                                    <li><a href="/calculate/prodList" key="t-profile">pos QR코드 생성</a></li>
                                    
                                </ul>
                            </li>
                            </c:if>

                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>