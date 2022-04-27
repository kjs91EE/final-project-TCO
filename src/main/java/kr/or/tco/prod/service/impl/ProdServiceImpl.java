package kr.or.tco.prod.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.tco.brnc.vo.BrncVO;
import kr.or.tco.cmncd.vo.CmncdVO;
import kr.or.tco.prod.mapper.ProdMapper;
import kr.or.tco.prod.service.ProdService;
import kr.or.tco.prod.vo.ProdVO;

@Service
public class ProdServiceImpl implements ProdService {
	private static final Logger logger = LoggerFactory.getLogger(ProdServiceImpl.class);
	
	@Autowired
	ProdMapper prodMapper;
	
	//상품 조회
	@Override
	public List<ProdVO> prodList(Map<String, String> map){
		return this.prodMapper.prodList(map);
	}
	
	//상품 상세 조회
	@Override
	public ProdVO prodDetail(String prodInfoId) {
		return this.prodMapper.prodDetail(prodInfoId);
	}
	
	//상품아이디에 따른 중분류 뽑기
	@Override
	public List<CmncdVO> cdnm2List(String prodInfoId){
		return this.prodMapper.cdnm2List(prodInfoId);
	}
	
	//공통코드 분류 뽑기
	@Override
	public List<CmncdVO> commonSeList(String cmncdNm1){
		return this.prodMapper.commonSeList(cmncdNm1);
	}
	
	//공통코드 찾기
	@Override
	public String cmncdFind(String cmncdNm2) {
		return this.prodMapper.cmncdFind(cmncdNm2);
	}
	
	//상품 정보 수정
	@Override
	public int prodUpdate(ProdVO prodVO) {
		return this.prodMapper.prodUpdate(prodVO);
	}
	
	//상품 삭제(여부를 N으로)
	@Override
	public int prodDelete(String prodInfoId) {
		return this.prodMapper.prodDelete(prodInfoId);
	}
	
	//상품 등록
	@Override
	public int prodInsert(ProdVO prodVO) {
		return this.prodMapper.prodInsert(prodVO);
	}
	
	//상품아이디로 상품명 뽑기
	@Override
	public String searchName(String prodInfoId) {
		return this.prodMapper.searchName(prodInfoId);
	}
	
	//거래처 이름으로 거래처 코드 찾기
	@Override
	public String cnptCd(String cnptNm) {
		return this.prodMapper.cnptCd(cnptNm);
	}
	
	//거래처 코드로 거래처 이름 찾기
	@Override
	public String cnptNm(String cnptId) {
		return this.prodMapper.cnptNm(cnptId);
	}
	
	//본사를 제외한 모든 지점 아이디 가져오기
	@Override
	public List<BrncVO> brncList(){
		return this.prodMapper.brncList();
	}
}
