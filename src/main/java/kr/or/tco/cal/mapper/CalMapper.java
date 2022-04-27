package kr.or.tco.cal.mapper;

import java.util.List;
import java.util.Map;

import kr.or.tco.cal.vo.StrgWrhsVO;
import kr.or.tco.cmncd.vo.CmncdVO;
import kr.or.tco.prod.vo.ProdVO;
import kr.or.tco.sls.vo.SlsVO;
import kr.or.tco.cal.vo.CustNtsVO;
import kr.or.tco.cal.vo.PosVO;

public interface CalMapper {

	public int getSGWTotal(Map<String, Object> map);

	public int getCNLTotal(Map<String, Object> map);

	public List<StrgWrhsVO> dailyPrc(Map<String,Object> map);

	public List<CustNtsVO> dailyCustNts(Map<String,Object> map);

	public int dailyCalInsert(Map<String, Object> map);
	
	public List<PosVO> prodList(Map<String, String> map);

	public ProdVO prodDetail(String prodInfoId);

	public List<CmncdVO> cdnm2List(String prodInfoId);

	public String custValChk(Map<String, String> map);

	public int CustNtsInsert(Map<String, Object> map);
	
	public int CustNtsdelete(Map<String, Object> map);

	public int streStckDsc(Map<String, Object> map2);

	public ProdVO salesSuspensionChk(String prodInfoId);

	
	
}
