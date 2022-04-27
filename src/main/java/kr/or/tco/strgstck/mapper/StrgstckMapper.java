package kr.or.tco.strgstck.mapper;

import java.util.List;
import java.util.Map;

import kr.or.tco.brnc.vo.BrncVO;
import kr.or.tco.prod.vo.ProdVO;
import kr.or.tco.strgstck.vo.StrgstckVO;

public interface StrgstckMapper {

	//상품 등록시 본사 insert
	public int strgTcoInsert(StrgstckVO strgstckVO);
	
	//상품 등록시 지점 insert
	public int strgBrncInsert(String brncofcId);
	
	//지점 목록 뽑기
	public List<BrncVO> brncList();
	
	//상품 정보 테이블에서 상품 삭제시 창고재고 본사 인스턴스 삭제
	public int strgTcoDelete(String prodInfoId);
	
	//수주버튼 클릭시 창고 출고 insert
	public int shipStrg(Map<String, Object> map);
	
	//본사창고의 현재고 확인
	public int nowStck(String prodInfoId);
	
	//본사의 창고 재고 update
	public int stckUpdate(Map<String, Object> map);
	
	//본사의 창고출고 List 뽑기.. 근데 이제 필터를 곁들인.. 필터를 사실 안 곁들인
	public List<StrgstckVO> headShipList();
	
	//지점의 창고출고 목록뽑기
	public List<StrgstckVO> branchShipList(String brncofcId);
	
	//지점의 창고입고 목록뽑기
	public List<StrgstckVO> branchWrHouseList(String brncofcId);
	
	//지점의 창고 부족재고 현황뽑기(지점의 모든 제품 현황)
	public List<StrgstckVO> strgLackList(String brncofcId);
	
	// 상세 재고 현황
	public List<StrgstckVO> detailstock(Map<String, Object> map);
	
	//지점 부족재고 현황에서 매장 재고보충 클릭시 창고 재고 update
	public int refillStorage(Map<String, Object> map);
	
	//지점 부족재고 현황에서 매장 재고보충 클릭시 창고 출고 insert
	public int refillInsert(Map<String, Object> map);
	
	//지점의 창고재고가 안전재고 밑으로 떨어지면 발주여부를 N으로 update
	public int underSafty(String brncofcId);
	
	//부족재고현황에서 발주시 발주여부 Y로 수정
	public int lackUpdate(Map<String, Object> map) throws Exception;
	
	//발주 수량 구하기(기본보유수량 - 현재고)
	public int ordrQtyStrg(Map<String, Object> map);
	
	//본사의 창고재고 리스트 가져오기
	public List<StrgstckVO> getHeadshipStock(ProdVO prodVO);
}
