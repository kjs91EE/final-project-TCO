package kr.or.tco.alam.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.tco.alam.mapper.AlamMapper;
import kr.or.tco.alam.service.AlamService;
import kr.or.tco.alam.vo.AlamVO;
import kr.or.tco.emp.vo.EmpVO;
@Service
public class AlamServiceImpl implements AlamService{

	@Autowired AlamMapper alamMapper;
	
	@Override
	public int alamInsert(Map<String, Object> map) {
		return this.alamMapper.alamInsert(map);
	}


	@Override
	public int alamRead(Map<String, Object> map) {
		return this.alamMapper.alamRead(map);
	}


	@Override
	public List<AlamVO> alamTable(Map<String, Object> map) {
		return this.alamMapper.alamTable(map);
	}



	@Override
	public List<EmpVO> findStoreWorker(String brncofcId) {
		return this.alamMapper.findStoreWorker(brncofcId);
	}


	@Override
	public List<AlamVO> alamAll(String receiverId) {
		return this.alamMapper.alamAll(receiverId);
	}


	@Override
	public List<EmpVO> findStrgWorker(String brncofcId) {
		return this.alamMapper.findStrgWorker(brncofcId);
	}

	

}
