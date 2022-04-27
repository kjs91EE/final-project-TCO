package kr.or.tco.util.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import kr.or.tco.util.service.CalendarService;
import kr.or.tco.util.vo.CalendarVO;



/**
 * 캘린더
 * @author 김영훈
 *
 */
@RequestMapping("/calendar")
@Controller
public class CalendarController {
	
	@Autowired
	CalendarService calendarService;
	
	private static final Logger logger =
			LoggerFactory.getLogger(CalendarController.class);
	
	
	
	
	/**
	 * 달력 - 메인화면 출력
	 * @return
	 */
	@RequestMapping(value = "/main",method = RequestMethod.GET)
	public String calendarMain() {
		
		return "calendar/main";
	}
	
	
	
	/**
	 * 달력 - 일정 조회
	 * @return json데이터를 담아서 db로 보냄
	 */
	@ResponseBody
	@RequestMapping(value = "/main",method = RequestMethod.POST)
	public String calendarList(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		String userId = String.valueOf(session.getAttribute("userID"));
		System.out.println("userId: "+userId);
		
		List<CalendarVO>list = calendarService.schedulelist(userId);
		
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		
		Iterator<CalendarVO> it = list.iterator();
		while(it.hasNext()) {
			CalendarVO calendarVO = it.next();
			JsonObject object = new JsonObject();
			
			int calendarNo = calendarVO.getCalendarNo();
			String title = calendarVO.getTitle();
			String content = calendarVO.getContent();
			Date start = calendarVO.getStartday();
			String startday = df.format(start); 
			Date end = calendarVO.getEndday();
			String endday = df.format(end);
			String category = calendarVO.getCategory();
			
			object.addProperty("calendarno", calendarNo);
			object.addProperty("title", title);
			object.addProperty("description", content);
			object.addProperty("startday", startday);
			object.addProperty("endday", endday);
			object.addProperty("category", category);
			
			jarray.add(object);
		}
		String json = gson.toJson(jarray);
		logger.info("달력조회 : "+json);
		
		return json;
	}
	
	
	
	/**
	 * 달력 - 일정 등록
	 * @param param
	 * @throws Exception
	 */
	@RequestMapping(value="/insertSchedule",method = RequestMethod.POST)
	public String insertSchedule(HttpServletRequest req,@Validated CalendarVO calendarVO) throws Exception {
		
		HttpSession session = req.getSession();
		String userId = String.valueOf(session.getAttribute("userID"));
		calendarVO.setUserId(userId);
		
		int res = this.calendarService.insertschedule(calendarVO);
		logger.info("등록결과: "+res);
		
		return "redirect:/calendar/main";
	}
	
	
	
	/**
	 * 달력 - 일정수정
	 * @param calendarVO
	 */
	@RequestMapping(value="/updateSchedule", method = RequestMethod.POST)
	public String updateSchedule(@Validated CalendarVO calendarVO) {
		int res = calendarService.updateschedule(calendarVO);
		logger.info("수정결과: "+res);
		
		return "redirect:/calendar/main";
	}
	
	
	/**
	 * 달력 - 일정 삭제
	 */
	@RequestMapping(value="/deleteSchedule", method = RequestMethod.GET)
	public String deleteSchedule(@RequestParam int calendarNo) {
		int res = calendarService.deleteschedule(calendarNo);
		logger.info("삭제결과: "+res);
		
		return "redirect:/calendar/main";
	}
	
	
	
	//-------------------------------------전사적 캘린더(인사팀장 권한 캘린더)일반회원 수정불가--------------------------------------------
	
	
	@ResponseBody
	@RequestMapping(value = "/maincalendar",method = RequestMethod.POST)
	public String maincalendarList(HttpServletRequest req) {
		
		
		//캘린더는 인사팀장(EMP00005)만 권한을 갖고있다.
		List<CalendarVO>list = calendarService.mainschelist();
		System.out.println("전사달력 167: "+list);
		
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		
		Iterator<CalendarVO> it = list.iterator();
		while(it.hasNext()) {
			CalendarVO calendarVO = it.next();
			JsonObject object = new JsonObject();
			
			int mainCalno = calendarVO.getMainCalno();
			String mainCaltitle = calendarVO.getMainCaltitle();
			String mainCalcon = calendarVO.getMainCalcon();
			Date start = calendarVO.getMainStart();
			String mainStart = df.format(start); 
			Date end = calendarVO.getMainEnd();
			String mainEnd = df.format(end);
			String mainCaluser = calendarVO.getMainCaluser();
			String mainColor = calendarVO.getMainColor();
			
			object.addProperty("mainCalno", mainCalno);
			object.addProperty("mainCaltitle", mainCaltitle);
			object.addProperty("mainCalcon", mainCalcon);
			object.addProperty("mainStart", mainStart);
			object.addProperty("mainEnd", mainEnd);
			object.addProperty("mainCaluser", mainCaluser);
			object.addProperty("mainColor", mainColor);
			
			jarray.add(object);
		}
		String json = gson.toJson(jarray);
		logger.info("전사달력 : "+json);
		
		return json;
	}
	
	/**
	 * 전사 달력 일정 등록
	 * @param req
	 * @param calendarVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/mainInsertSch",method = RequestMethod.POST)
	public String mainInsertSch(HttpServletRequest req,@Validated CalendarVO calendarVO) throws Exception {
		
		HttpSession session = req.getSession();
		String userId = String.valueOf(session.getAttribute("userID"));
		calendarVO.setUserId(userId);
		
		int res = this.calendarService.mainInsertSch(calendarVO);
		logger.info("등록결과: "+res);
		
		return "redirect:/calendar/main";
	}
	
	
	/**
	 * 달력 - 전사일정수정
	 * @param calendarVO
	 */
	@RequestMapping(value="/mainUpdateSch", method = RequestMethod.POST)
	public String mainUpdateSch(@Validated CalendarVO calendarVO) {
		int res = calendarService.mainUpdateSch(calendarVO);
		logger.info("수정결과: "+res);
		
		return "redirect:/calendar/main";
	}
	
	
	/**
	 * 달력 - 전사일정삭제
	 */
	@RequestMapping(value="/mainDeleteSch", method = RequestMethod.GET)
	public String mainDeleteSch(@RequestParam int mainCalno) {
		int res = calendarService.mainDeleteSch(mainCalno);
		logger.info("삭제결과: "+res);
		
		return "redirect:/calendar/main";
	}
	
	
}
