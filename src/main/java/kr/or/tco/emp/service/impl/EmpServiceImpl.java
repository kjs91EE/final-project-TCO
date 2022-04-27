package kr.or.tco.emp.service.impl;

import java.io.File;import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.tco.cmncd.vo.CmncdVO;
import kr.or.tco.emp.mapper.EmpMapper;
import kr.or.tco.emp.vo.AttachFilesVO;

import kr.or.tco.emp.vo.EmpVO;

@Service
public class EmpServiceImpl implements EmpService{
 // 아놩
	@Autowired
	EmpMapper empMapper;
	
	
	private static final Logger logger = 
			LoggerFactory.getLogger(EmpServiceImpl.class);
	
	@Override
	public int empinsert(EmpVO empVO) {
		
			return empMapper.empinsert(empVO);
	}

	@Override
	public int insertAttachFiles(AttachFilesVO attachFilesVO) {
		return empMapper.insertAttachFiles(attachFilesVO);
	}

	@Override
	public String cdselect(EmpVO empVO) {
		return empMapper.cdselect(empVO);
	}

	@Override
	public List<EmpVO> emplist(Map<String, Object> map) {
		return empMapper.emplist(map);
	}

	@Override
	public int selectCount(Map<String, Object> map) {
		return empMapper.selectCount(map);
	}

	@Override
	public EmpVO empdetail(EmpVO empVO) {
		return empMapper.empdetail(empVO);
	}

	@Override
	public CmncdVO sdselect(String cmncdCd) {
		return empMapper.sdselect(cmncdCd);
	}

	@Override
	public int empTelupdate(EmpVO empVO) {
		return empMapper.empTelupdate(empVO);
	}

	@Override
	public int empMailupdate(EmpVO empVO) {
		return empMapper.empMailupdate(empVO);
	}

	@Override
	public int empPswdupdate(EmpVO empVO) {
		return empMapper.empPswdupdate(empVO);
	}

	@Override
	public int empSeupdate(EmpVO empVO) {
		return empMapper.empSeupdate(empVO);
	}

	//로그인을 위한 EMP와 AUTHORITIES 테이블 조인
	@Override
	public EmpVO read(String userName) {
		return empMapper.read(userName);
	}
	
	// 로그인 체크
	@Override
	public String loginCheck(Map<String, Object> map) {
		return empMapper.loginCheck(map);
	}
	
	// 직원 정보 직접 수정
	@Override
	public int empInfoUpdate(EmpVO empVO) {
		return empMapper.empInfoUpdate(empVO);
	}


	@Override
	public String brnselect(String brncofcId) {
		return empMapper.brnselect(brncofcId);
	}
	
	// 아이디 찾기
	@Override
	public String forgotId(Map<String, Object> map) {
		return empMapper.forgotId(map);
	}
	
	//비번 까먹었을때 비번 새로생성하기
	@Override
	public int updateNewPw(Map<String, Object> map) {
		return empMapper.updateNewPw(map);
	}

	@Override
	public Map<String, Object> empBelong(String username) {
		return empMapper.empBelong(username);
	}


	
}



