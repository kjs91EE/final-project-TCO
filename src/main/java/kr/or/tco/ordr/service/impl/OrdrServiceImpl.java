package kr.or.tco.ordr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.tco.ordr.mapper.OrdrMapper;
import kr.or.tco.ordr.service.OrdrService;
import kr.or.tco.ordr.vo.OrdrVO;

@Service
public class OrdrServiceImpl implements OrdrService {
	
	@Autowired
	OrdrMapper ordrMapper;
	
	//수주O - 발주 테이블 목록 가져오기(상세X)
	@Override
	public List<OrdrVO> rcvOrdrYList(){
		return this.ordrMapper.rcvOrdrYList();
	}
	
	//수주X - 발주 테이블 목록 가져오기(상세X)
	@Override
	public List<OrdrVO> rcvOrdrNList(){
		return this.ordrMapper.rcvOrdrNList();
	}
	
	//발주 아이디 별 상세 정보 뽑기
	@Override
	public List<OrdrVO> ordrDetail(int ordrId) {
		return this.ordrMapper.ordrDetail(ordrId);
	}
	
	//발주 지점 이름 가져오기
	@Override
	public String brnofcNm(String brncofcId) {
		return this.ordrMapper.brnofcNm(brncofcId);
	}
	
	//수주X에서 O로 바꾸기
	@Override
	public int rcvNtoY(int ordrId) {
		return this.ordrMapper.rcvNtoY(ordrId);
	}
	
	//발주번호 max 찾기
	@Override
	public int ordrMax() {
		return this.ordrMapper.ordrMax();
	}
	
	//부족재고현황에서 발주시 insert
	@Override
	public int lackInsert(Map<String, Object> map) throws Exception {
		return this.ordrMapper.lackInsert(map);
	}

	//발주 저장 or 전송
	@Override
	public int ordrInsert(OrdrVO ordrVO) {
		return this.ordrMapper.ordrInsert(ordrVO);
	}
	
	//발주현황 목록 가져오기
	@Override
	public List<OrdrVO> getOrdrCondition(String brncofcId) {
		return this.ordrMapper.getOrdrCondition(brncofcId);
	}
	
	//발주내역 목록 가져오기
	@Override
	public List<OrdrVO> getOrdrList(String brncofcId) {
		return this.ordrMapper.getOrdrList(brncofcId);
	}

	@Override
	public int orderDelete(int ordrId) {
		return this.ordrMapper.orderDelete(ordrId);
	}

	@Override
	public int saveUpdate(int ordrId) {
		return this.ordrMapper.saveUpdate(ordrId);
	}

	@Override
	public List<OrdrVO> getOrdrListAll(String brncofcId) {
		return this.ordrMapper.getOrdrListAll(brncofcId);
	}

	@Override
	public int updateWrhs(Map<String, Object> map) {
		return this.ordrMapper.updateWrhs(map);
	}

	@Override
	public int addStrgStck(Map<String, Object> map) {
		return this.ordrMapper.addStrgStck(map);
	}
}
