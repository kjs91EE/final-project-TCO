package kr.or.tco.sls.service.Impl;


import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.tco.cal.vo.CustNtsVO;
import kr.or.tco.sls.mapper.SlsMapper;
import kr.or.tco.sls.service.SlsService;
import kr.or.tco.sls.vo.SlsVO;

@Service
public class SlsServiceImpl implements SlsService {

	@Autowired SlsMapper slsMapper;
	
	private static final Logger logger = 
			LoggerFactory.getLogger(SlsServiceImpl.class);
	
	
	/**
	 * 매출 - 본사용 매출현황(파라미터는 시작날짜,종료날짜를 넣은 map)
	 */
	@Override
	public List<SlsVO> list(Map<String, Object> map) {
		return slsMapper.list(map);
	}

	/**
	 * 매출 - 상세보기 
	 */
	@Override
	public SlsVO detail(String slsId) {
		SlsVO detail = slsMapper.detail(slsId);
		logger.info("상세보기 : "+detail);
		return detail;
	}
	
	
	
	/**
	 * 매출 - 매출명세서
	 */
	@Override
	public List<CustNtsVO>slslist(String custNtslDt) {
		List<CustNtsVO>list = slsMapper.slslist(custNtslDt);
		logger.info("매출명세서 : "+list);
		return list;
	}

	
	
	/**
	 * 정산 - 매입자료 업로드
	 */
	@Override
	public void excelUpload(File destFile) {
		
		ExcelReadOption excelReadOption = new ExcelReadOption();
        
        //파일경로 추가
        excelReadOption.setFilePath(destFile.getAbsolutePath());
        
        //추출할 컬럼명 추가
        excelReadOption.setOutputColumns("A", "B", "C", "D", "E");
        
        //시작행
        excelReadOption.setStartRow(3);
        
        List<Map<String, String>>excelContent = ExcelRead.read(excelReadOption);
        
        logger.info("excelContent: "+excelContent);
        
        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("excelContent", excelContent);
        
        logger.info("paramMap: "+paramMap);
        try {
            slsMapper.insertprchsExcel(paramMap);
        }catch(Exception e) {
            e.printStackTrace();
        }
	}

	
	/**
	 * 정산 - 매출 자료 업로드
	 */
	@Override
	public void excelSlsUpload(File destFile) {
		System.out.println("serviceimpl 도착");
		
		ExcelReadOption excelReadOption = new ExcelReadOption();
        
        //파일경로 추가
        excelReadOption.setFilePath(destFile.getAbsolutePath());
        
        //추출할 컬럼명 추가
        excelReadOption.setOutputColumns("A", "B", "C", "D", "E", "F");
        
        //시작행
        excelReadOption.setStartRow(3);
        
        List<Map<String, String>>excelContent = ExcelRead.read(excelReadOption);
        
        logger.info("excelContent: "+excelContent);
        
        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("excelContent", excelContent);
        
        logger.info("paramMap: "+paramMap);
        try {
            slsMapper.insertslsExcel(paramMap);
        }catch(Exception e) {
            e.printStackTrace();
        }
		
	}

	
	/**
	 * 매장용 매출현황
	 */
	@Override
	public List<SlsVO> brnlist(Map<String, Object> map) {
		List<SlsVO>brnlist =slsMapper.brnlist(map);
		return brnlist;
	}

	
	
}
