package kr.or.tco.att.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.tco.att.mapper.AttMapper;
import kr.or.tco.att.vo.WorksttsVO;
import kr.or.tco.cmncd.vo.CmncdVO;
import kr.or.tco.emp.vo.EmpVO;

@Service
public class AttServiceImpl implements AttService{

	@Autowired AttMapper attMapper;
	@Override
	public EmpVO binfoselect(String empId) {
		return attMapper.binfoselect(empId);
	}

	@Override
	public CmncdVO sdselect(String cmncdCd) {
		return attMapper.sdselect(cmncdCd);
	}

	@Override
	public int checkIselect(String empId) {
		return attMapper.checkIselect(empId);
	}

	@Override
	public int checkOselect(String empId) {
		return attMapper.checkOselect(empId);
	}
	
	@Override
	public int ininsert(WorksttsVO worksttsVO) {
		return attMapper.ininsert(worksttsVO);
	}

	@Override
	public int outinsert(String empId) {
		return attMapper.outinsert(empId);
	}

	@Override
	public int enbgselect(String empId) {
		return attMapper.enbgselect(empId);
	}

	@Override
	public int CKenbgselect(String empId) {
		return attMapper.CKenbgselect(empId);
	}

	@Override
	public int enbgupdate(WorksttsVO worksttsVO) {
		return attMapper.enbgupdate(worksttsVO);
	}

	@Override
	public int st(String empId) {
		return attMapper.st(empId);
	}

	@Override
	public int end(String empId) {
		return attMapper.end(empId);
	}

	@Override
	public int stck(String empId) {
		return attMapper.stck(empId);
	}

	@Override
	public int endck(String empId) {
		return attMapper.endck(empId);
	}

	@Override
	public int cdupdate(WorksttsVO worksttsVO) {
		return attMapper.cdupdate(worksttsVO);
	}

	@Override
	public int stm(String empId) {
		return attMapper.stm(empId);
	}


	@Override
	public int teminsert() {
		return attMapper.teminsert();
		
	}

	@Override
	public int reinsert() {
		return attMapper.reinsert();
	}

	@Override
	public int reupdate() {
		return attMapper.reupdate();
	}

	@Override
	public int sumtm(Map<String, Object> map) {
		return attMapper.sumtm(map);
	}

	@Override
	public String gotime(String empId) {
		return attMapper.gotime(empId);
	}

	@Override
	public String outtime(String empId) {
		return attMapper.outtime(empId);
	}

	@Override
	public List<WorksttsVO> thisweek(String empId) {
		return attMapper.thisweek(empId);
	}

	@Override
	public List<WorksttsVO> thisweekall(int cal) {
		return attMapper.thisweekall(cal);
	}

	@Override
	public int workck(WorksttsVO worksttsVO) {
		return attMapper.workck(worksttsVO);
	}

	@Override
	public List<EmpVO> attchecklist() {
		return attMapper.attchecklist();
	}

	@Override
	public int sumtm2(String empId) {
		return attMapper.sumtm2(empId);
	}

	@Override
	public String sdselect2(String cmncdCd) {
		return attMapper.sdselect2(cmncdCd);
	}



}
