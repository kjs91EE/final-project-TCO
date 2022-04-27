package kr.or.tco.sttst.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import kr.or.tco.emp.vo.EmpVO;
import kr.or.tco.sls.vo.SlsVO;
import kr.or.tco.sttst.service.SttstService;
import kr.or.tco.sttst.vo.SttstVO;


/**
 * 통계 컨트롤러
 * @author PC-25 김영훈
 * 통계를 관리하는 최초의 컨트롤러 창
 */
@RequestMapping("/sttst")
@Controller
public class SttstController {
	
	private static final Logger logger=
			LoggerFactory.getLogger(SttstController.class);
	
	@Autowired SttstService sttstService;
	
	
	/**
	 * 통계 - 일별 매출 현황
	 * 일일 매출 현황을 차트로 출력
	 * @return  sttst/dailyProfit에서 출력한다.
	 */
	@RequestMapping(value="/mainProfit",method = RequestMethod.GET)
	public String dailyProfit(Model model) {
		
		return "sttst/mainProfit";
	}
	
	
	/**
	 * 통계 - 일별 매출 현황 차트 출력
	 * sttst/daily Post타입
	 * ajax와 연결되어 chart.js출력 
	 * @param json데이터
	 */
	@ResponseBody
	@RequestMapping(value="/daily", method = RequestMethod.POST)
	public String dailyPost(Model model, HttpServletRequest req) {
	HttpSession session = req.getSession();
	
	String brncofcId = (String) session.getAttribute("brncofcId");
	
	List<SlsVO>list = sttstService.getDailyIncome(brncofcId);
	
	//gson객체 생성
		Gson gson = new Gson();
		JsonArray jArray = new JsonArray();
	//date타입을 string타입으로 바꾸기
		DateFormat df = new SimpleDateFormat("yyyy"+"년"+"MM"+"월"+"dd"+"일");
		
		Iterator<SlsVO> it = list.iterator();
		while(it.hasNext()) {
			SlsVO slsVO = it.next();
			JsonObject object = new JsonObject();
			long sale = slsVO.getSlsAmt();
			
			Date dt = slsVO.getSlsDt();
			String date =  df.format(dt);
			
			object.addProperty("sale", sale);
			object.addProperty("date", date);
			jArray.add(object);
		}
		
		String json = gson.toJson(jArray);
		logger.info("json변환: "+json);
		
		return json;
	}
	
	
	

	
	/**
	 * 통계 - 월별 매출 챠트 출력
	 * @param model
	 * @return json
	 */
	@ResponseBody
	@RequestMapping(value="/monthly",method = RequestMethod.POST)
	public String monthlyPost(Model model, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		String brncofcId = (String) session.getAttribute("brncofcId");
		
		List<SlsVO>list = sttstService.getMonthIncome(brncofcId);
		
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		DateFormat df = new SimpleDateFormat("yyyy"+"년"+"MM"+"월");
		
		
		Iterator<SlsVO> it = list.iterator();
		while(it.hasNext()) {
			SlsVO slsVO = it.next();
			JsonObject object = new JsonObject();
			
			long sale = slsVO.getSlsAmt();
			Date dt = slsVO.getSlsDt();
			String date = df.format(dt);
			
			object.addProperty("sale", sale);
			object.addProperty("date", date);
			jarray.add(object);
		}
		String json = gson.toJson(jarray);
		logger.info("월별 매출 현황: "+json);
		
		return json;
	}
	

	/**
	 * 통계 - 연간 매출 차트
	 * @return chart
	 */
	@ResponseBody
	@RequestMapping(value="/annual",method = RequestMethod.POST)
	public String annualPost(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		String brncofcId = (String) session.getAttribute("brncofcId");
		
		List<SlsVO>list = sttstService.getYearlyIncome(brncofcId);
		
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		DateFormat df = new SimpleDateFormat("yyyy"+"년");
		
		Iterator<SlsVO> it = list.iterator();
		while(it.hasNext()) {
			SlsVO slsVO = it.next();
			JsonObject object = new JsonObject();
			
			long sale = slsVO.getSlsAmt();
			Date dt = slsVO.getSlsDt();
			String date = df.format(dt);
			
			object.addProperty("sale", sale);
			object.addProperty("date", date);
			jarray.add(object);
		}
		String json = gson.toJson(jarray);
		logger.info("월별 매출 현황: "+json);
		
		return json;
		
	}
	
	
	
	/**
	 * 통계 - 통합용 통계화면 
	 * @return
	 */
	@GetMapping("/dateProfit")
	public String dateProfit() {
		return "sttst/dateProfit";
	}
	
	
	
		
	/**
	 * 매장별 일일 매출 차트 
	 * @param 지점 아이디를 세션으로 받아옴
	 * @return chart
	 */
	@ResponseBody
	@RequestMapping(value="/BrnChart", method = RequestMethod.POST)
	public String getBrnChart(HttpServletRequest req){
		
		HttpSession session = req.getSession();
		String brncofcId = String.valueOf(session.getAttribute("brncofcId"));
		System.out.println("session: "+brncofcId);
		
		List<SlsVO>list = sttstService.getBrnChart(brncofcId);
		
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		DateFormat df = new SimpleDateFormat("yyyy"+"년"+"MM"+"월"+"dd"+"일");
		
		Iterator<SlsVO> it = list.iterator();
		while(it.hasNext()) {
			SlsVO slsVO = it.next();
			JsonObject object = new JsonObject();
			
			long sale = slsVO.getSlsAmt();
			Date dt = slsVO.getSlsDt();
			String date = df.format(dt);
			
			object.addProperty("sale", sale);
			object.addProperty("date", date);
			jarray.add(object);
		}
		String json = gson.toJson(jarray);
		
		return json;
	}
	

	/**
	 * 통계 - 매출이익화면
	 * @return 매출이익 화면 출력
	 */
	@RequestMapping(value="/slsprofit",method = RequestMethod.GET)
	public String slsProfit() {
		return "sttst/slsprofit";
	}
	
	
	/**
	 * 통계 - 입출내역집계현황
	 * Entry Exit History
	 * @return	입출내역집계현황 화면
	 */
	@RequestMapping(value="/eehistory", method = RequestMethod.GET)
	public String eehistory() {
		return "sttst/eehistory";
	}
	
	
	/**
	 * 통계 - 연간 입출 통계
	 */
	@RequestMapping(value="/annualhistory",method = RequestMethod.GET )
	public String annualHistory() {
		return "sttst/annualhistory";
	}
	
	
	//--------------------------본사용 통계용 json자료---------------------------------
	
	@ResponseBody
	@RequestMapping(value = "maindaily",method = RequestMethod.POST)
	public String mainDailyIncome() {
		List<SlsVO> list = sttstService.mainDailyIncome();
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		DateFormat df = new SimpleDateFormat("yyyy"+"년"+"MM"+"월"+"dd"+"일");
		
		Iterator<SlsVO> it = list.iterator();
		while(it.hasNext()) {
			SlsVO slsVO = it.next();
			JsonObject object = new JsonObject();
			
			long sale = slsVO.getSlsAmt();
			Date dt = slsVO.getSlsDt();
			String date = df.format(dt);
			
			object.addProperty("sale", sale);
			object.addProperty("date", date);
			jarray.add(object);
		}
		String json = gson.toJson(jarray);
		logger.info("메인차트:"+json);
		
		return json;
		
	}
	
	@ResponseBody
	@RequestMapping(value ="mainmonth",method = RequestMethod.POST)
	public String mainMonthIncome() {
		List<SlsVO> list = sttstService.mainMonthIncome();
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		DateFormat df = new SimpleDateFormat("yyyy"+"년"+"MM"+"월");
		
		Iterator<SlsVO> it = list.iterator();
		while(it.hasNext()) {
			SlsVO slsVO = it.next();
			JsonObject object = new JsonObject();
			
			long sale = slsVO.getSlsAmt();
			Date dt = slsVO.getSlsDt();
			String date = df.format(dt);
			
			object.addProperty("sale", sale);
			object.addProperty("date", date);
			jarray.add(object);
		}
		String json = gson.toJson(jarray);
		
		return json;
		
	}
	
	
	@ResponseBody
	@RequestMapping(value = "mainannual",method = RequestMethod.POST)
	public String mainYearlyIncome() {
		List<SlsVO> list = sttstService.mainYearlyIncome();
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		DateFormat df = new SimpleDateFormat("yyyy"+"년");
		
		Iterator<SlsVO> it = list.iterator();
		while(it.hasNext()) {
			SlsVO slsVO = it.next();
			JsonObject object = new JsonObject();
			
			long sale = slsVO.getSlsAmt();
			Date dt = slsVO.getSlsDt();
			String date = df.format(dt);
			
			object.addProperty("sale", sale);
			object.addProperty("date", date);
			jarray.add(object);
		}
		String json = gson.toJson(jarray);
		
		return json;
		
	}
//-------------------------------------본사끝----------------------------------	
	
	
	/**
	 * 조직도 테스트창 /날짜 크롤링도 하는중
	 * @throws IOException 
	 */
	@RequestMapping(value="/testformat",method = RequestMethod.GET)
	public String testformat(Model model) throws IOException {
		
		String path = "https://weather.naver.com/rgn/cityWetrMain.nhn";
   	 
    	Document document = Jsoup.connect(path).get();
    	
    	Elements elem = document.select(".tbl_weather tbody>tr:nth-child(1)");
        Elements elem2= document.select(".tbl_weather tbody>tr:nth-child(1) img");
    	System.out.println(elem);
    	System.out.println(elem2);
        
    	model.addAttribute("test1",elem);
    	model.addAttribute("test2",elem2);
		
		return "sttst/format1";
	}
	
	
	/**
	 * 조직도 출력
	 * ajax요청값으로 보냄
	 */
	@ResponseBody
	@RequestMapping(value = "/testformat", method = RequestMethod.POST)
	public List<SttstVO> testPost() {
		
		List<SttstVO>datalist = sttstService.grouplist(); 
				
		return datalist;
		
		
//		Gson gson = new Gson();
//		JsonArray jarray = new JsonArray();
////		DateFormat df = new SimpleDateFormat("yyyy"+"년"+"MM"+"월"+"dd"+"일");
//		Iterator<EmpVO>it = list.iterator();
//		
//		while(it.hasNext()) {
//			JsonObject object = new JsonObject();
//			EmpVO empVO = it.next();
//			String id =empVO.getEmpId();
//			String name = empVO.getEmpNm();
////			Date ymd = empVO.getEmpJncmpYmd();
////			String symd = df.format(ymd);
////			Date brdt = empVO.getEmpBrdt();
////			String sbrdt = df.format(brdt);
//			String mail = empVO.getEmpMail();
//			//정규직,퇴사
//			String se = empVO.getEmpSe();
//			//부서코드
//			String cd = empVO.getCmncdCd();
//			
//			object.addProperty("id", id);
//			object.addProperty("name", name);
////			object.addProperty("symd", symd);
////			object.addProperty("sbrdt", sbrdt);
//			object.addProperty("mail", mail);
//			object.addProperty("se", se);
//			object.addProperty("parent_id", cd);
//			
//			jarray.add(object);
//		}
//		String json = gson.toJson(jarray);
//		logger.info("emplist: "+json);
		
//		return json;
	}
	
	
	/**
	 * jsGrid 조직도 
	 * @return ajax의 요청을 받아 json으로
	 */
	@ResponseBody
	@RequestMapping(value = "/emplist/{childId}", method = RequestMethod.POST)
	public List<EmpVO> groupemp(@PathVariable("childId")String childId) {
		List<EmpVO>list = sttstService.groupemp(childId);
		return list;
	}
	
	
	/**
	 * 연령대, 성별 별 선호 통계 출력
	 * @return
	 */
	@RequestMapping(value="/PrfredCtg",method = RequestMethod.GET)
	public String prfredCtg() {
		return "sttst/PrfredCtg";
	}
	/**
	 * 연령대, 성별 별 선호 통계 데이터 
	 * @param json데이터
	 */
	@ResponseBody
	@RequestMapping(value="/PrfredCtg", method = RequestMethod.POST)
	public String PrfredCtgPost(Model model) {
		
	List<SttstVO>list = sttstService.PrfredCtg();
	//gson객체 생성
		Gson gson = new Gson();
		JsonArray jArray = new JsonArray();
		
		Iterator<SttstVO> it = list.iterator();
		while(it.hasNext()) {
			JsonObject object = new JsonObject();
			SttstVO sttstVO = it.next();
			String ageGroup = sttstVO.getAgeGroup();
			//나이대가 나오기 위해서 잘라야한다.
			String ages = ageGroup.substring(ageGroup.length()-2, ageGroup.length());
			String totalAges = ages+"대";
			
			String Sttticgroup = sttstVO.getSttticgroup();
			int TotalSoldQty = sttstVO.getTotalSoldQty();
			int TotalSlsAmt = sttstVO.getTotalSlsAmt();
			int Slscount = sttstVO.getSlscount();
			int AvgPrsAmt = sttstVO.getAvgPrsAmt();
			
			object.addProperty("ageGroup", totalAges);
			object.addProperty("Sttticgroup", Sttticgroup);
			object.addProperty("TotalSoldQty", TotalSoldQty);
			object.addProperty("TotalSlsAmt", TotalSlsAmt);
			object.addProperty("Slscount", Slscount);
			object.addProperty("AvgPrsAmt", AvgPrsAmt);
			
			jArray.add(object);
		}
		
		String json = gson.toJson(jArray);
		logger.info("json변환: "+json);
		
		return json;
	}
	
	
	//매장별 매출 매입 통계
	@ResponseBody
	@RequestMapping(value="/brndaily",method = RequestMethod.POST)
	public String brndaily(@RequestParam String brncofcId){
		
		List<SlsVO>list = this.sttstService.brndaily(brncofcId);
		
		Gson gson = new Gson();
		JsonArray jarray = new JsonArray();
		DateFormat df = new SimpleDateFormat("yyyy"+"년"+"MM"+"월"+"dd"+"일");
		
		Iterator<SlsVO> it = list.iterator();
		while(it.hasNext()) {
			SlsVO slsVO = it.next();
			JsonObject object = new JsonObject();
			
			long sale = slsVO.getSlsAmt();
			Date dt = slsVO.getSlsDt();
			String date = df.format(dt);
			
			object.addProperty("sale", sale);
			object.addProperty("date", date);
			jarray.add(object);
		}
		String json = gson.toJson(jarray);
		logger.info("brnlist : "+json);
		
		return json;
		}
	
	
	
	
	
	
	
}
