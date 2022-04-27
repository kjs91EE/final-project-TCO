package kr.or.tco.sig.service;

import java.util.List;
import java.util.Map;

import kr.or.tco.emp.vo.AttachFilesVO;
import kr.or.tco.notice.vo.BrdVO;
import kr.or.tco.sig.vo.SigVO;

public interface SigService {
	
	List<SigVO>signotice();
	
	List<SigVO> siglist(Map<String, Object> map);

	int selectCount(Map<String, Object> map);
	
	String selectname(String empId);

	SigVO sigdetail(int brdId);
	
	int sigevi(int brdId);

	int insertAttachFiles(AttachFilesVO attachFilesVO);

	int siginsert(SigVO brdVO);


}
