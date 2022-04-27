package kr.or.tco.util.mapper;

import java.util.List;

import kr.or.tco.util.vo.CalendarVO;

public interface CalendarMapper {
	
	/**
	 * 달력 - 저장된 일정들을 불러온다
	 * @return
	 */
	public List<CalendarVO>schedulelist(String userId);
	
	
	/**
	 * 달력 - 일정을 저장한다.
	 * @param calendarVO
	 * @return 결과값 성공은 0이상 0은 실패
	 */
	public int insertschedule (CalendarVO calendarVO);	
	
	
	
	/**
	 * 달력 - 일정을 수정한다
	 * @param calendarVO
	 * @return 성공 1 실패 0
	 */
	public int updateschedule (CalendarVO calendarVO);
	
	
	
	
	/**
	 * 달력 - 일정을 삭제한다.
	 * @param calendarNo
	 * @return 성공 1 실패 0
	 */
	public int deleteschedule (int calendarNo);
	
	
	
	
	
	
	//----------------------전사적 캘린더------------------
	/**
	 * 전사스캐줄 - 일정들을 불러온다
	 * @return
	 */
	public List<CalendarVO>mainschelist();
	
	
	
	public int mainInsertSch (CalendarVO calendarVO);
	
	
	public int mainUpdateSch (CalendarVO calendarVO);
	
	
	public int mainDeleteSch (int mainCalno);
	
	
	
	
}
