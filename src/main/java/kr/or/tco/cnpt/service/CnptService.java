package kr.or.tco.cnpt.service;

import java.util.List;
import java.util.Map;

import kr.or.tco.cmncd.vo.CmncdVO;
import kr.or.tco.cnpt.vo.CnptVO;

public interface CnptService {
	
	//거래처 조회 - 공용
	public List<CnptVO> cnptList(String keyword);
	
	//거래처 조회
	public List<CnptVO> cnptList1(Map<String, Object> map);
	
	//거래중단된 거래처 조회
	public List<CnptVO> cnptStpList(Map<String, Object> map);
	
	//거래처 수 조회
	public int selectYCount(Map<String, Object> map);
	
	//거래중단된 거래처 수 조회
	public int selectNCount(Map<String, Object> map);
	
	//거래처 등록
	public int cnptInsert(CnptVO cnptVO);
	
	//거래처 상세조회
	public CnptVO cnptDetail(String cnptId);
	
	//거래처 수정 - 기본정보
	public int updateBasic(CnptVO cnptVO);
	//거래처 수정 - 계좌정보
	public int updateAct(CnptVO cnptVO);
	//거래처 수정 - 담당자 정보
	public int updateCharger(CnptVO cnptVO);
	
	//거래처 거래중단
	public int cnptToN(String cnptId);
	
	//거래처 거래재개
	public int cnptToY(String cnptId);
	
	//공통코드명 뽑아내기
	public List<CmncdVO> selectCmncdList();
	
	//공통코드아이디로 공통코드명 가져오기
	public String getCmncdNm(String cmncdCd);
}
