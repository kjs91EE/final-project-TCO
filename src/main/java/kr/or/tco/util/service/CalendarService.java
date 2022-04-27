package kr.or.tco.util.service;

import java.util.List;

import kr.or.tco.util.vo.CalendarVO;

public interface CalendarService {
	
	/**
	 * 달력 - 일정조회
	 * @return 일정이 담긴 list값
	 */
	public List<CalendarVO>schedulelist(String userId);
	
	
	
	/**
	 * 달력 - 일정등록 
	 * @param calendarVO
	 * @return 결과값 성공은 0이상 0은 실패
	 */
	public int insertschedule (CalendarVO calendarVO);
	
	
	/**
	 * 달력 - 일정수정
	 * @param calendarVO
	 * @return 성공1 실패0
	 */
	public int updateschedule (CalendarVO calendarVO);
	
	
	
	/**
	 * 달력 - 일정삭제
	 * @param calendarNo
	 * @return 성공1 실패0
	 */
	public int deleteschedule (int calendarNo);
	
	
	
	
	
	/**
	 * 전사달력 - 일정조회
	 * @return
	 */
	public List<CalendarVO>mainschelist();
	
	
	public int mainInsertSch (CalendarVO calendarVO);
	
	
	public int mainUpdateSch (CalendarVO calendarVO);
	
	
	public int mainDeleteSch (int mainCalno);

}
