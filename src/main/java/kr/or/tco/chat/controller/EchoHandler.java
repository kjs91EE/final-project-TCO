package kr.or.tco.chat.controller;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class EchoHandler extends TextWebSocketHandler {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(EchoHandler.class);
	
	//로그인 한 전체
		List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	
	// 로그인중인 개별유저
		Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();
	
	// 웹소켓에 id 가져오기
    // 접속한 유저의 http세션을 조회하여 id를 얻는 함수
	private String getMemberId(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		String userID = (String) httpSession.get("userID"); // 세션에 저장된 id 조회 
		return userID==null? null: userID;
		
	}	
		
	// 클라이언트가 서버로 연결시
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		String alamsessionId = getMemberId(session); // 접속한 유저의 http세션을 조회하여 id를 얻는 함수
		if(alamsessionId!=null) {	// 로그인 값이 있는 경우만
			logger.info(alamsessionId + " 연결 됨");
			users.put(alamsessionId, session);   // 로그인중 개별유저 저장
//			System.out.println(  "제발@@@@@@@@@@@@@@@@@"+users);
		}
		
	}
	

	
	// 클라이언트가 socket에 메세지를 보냈을때
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		// 특정 유저에게 보내기
		String msg = message.getPayload();
//		System.out.println( "메세지@@@@@@@@@@"+msg);
		
		if(msg != null) {
			String[] strs = msg.split(",");
			log(strs.toString());
			if(strs != null && strs.length == 9) {
				String title = strs[0];
				String senderId = strs[1]; 
				String senderName = strs[2]; 
				String receiverId = strs[3];
				String receiverName = strs[4];
				String brncofcnm = strs[5];
				String shortstocknm = strs[6];
				String dptopt = strs[7];	//부서
				String lelopt = strs[8];	//직급
				
				
				//작성자가 로그인 해서 있다면
//				WebSocketSession targetSession = users.get(alamsessionId);
				WebSocketSession targetSession2 = users.get(receiverId);
//				System.out.println(  "제발@@@@@@@@@@@@@@@@@"+targetSession);
//				System.out.println(  "제발22@@@@@@@@@@@@@@@@@"+targetSession2);
				
				//실시간 접속시 
				if(targetSession2!=null) {
					
					//1.매장 재고가 안전재고 이하로 내려갔을때, !!매장 직원!! CMNCD_CD = B203  에게 재고부족 알림 
					if("stockAlam".equals(title) && targetSession2 != null) {
						TextMessage tmpMsg = new TextMessage(receiverName + "님 " + brncofcnm 
								+ "의" + shortstocknm + " 재고가 안전재고 이하 입니다.");
						targetSession2.sendMessage(tmpMsg);
						
					//2. 전자결제 상신 받은 상사(지정된 사람)에게 알림 
					}else if("proposal".equals(title) && targetSession2 != null) {
						TextMessage tmpMsg = new TextMessage(senderName + "님이 " + brncofcnm 
								+ "의" +dptopt + " " +lelopt + " " + receiverName + "님에게 새로운 전자결재를 상신 했습니다. ");
						targetSession2.sendMessage(tmpMsg);
						
					//3. 상신한 전자결제 결재 된 경우, 부하(지정된 사람)에게 알림 	
					}else if("getApproval".equals(title) && targetSession2 != null) {
						TextMessage tmpMsg = new TextMessage(senderName + "님이 "+ brncofcnm 
								+ "의" +dptopt + " " +lelopt + " " + receiverName +"님에게 상신한 전자결재가 결재 되었습니다.");
						targetSession2.sendMessage(tmpMsg);
						
					//4. 매장에서 일일정산 했을때, 본사 사장 에게 알림
					}else if("settlement".equals(title) && targetSession2 != null) {
						TextMessage tmpMsg = new TextMessage(brncofcnm + "의" +dptopt + " " +lelopt + " "+senderName 
								+ "님이 "+brncofcnm+"지점의 일일정산을 상신했습니다."); 
						
						targetSession2.sendMessage(tmpMsg);
//						System.out.println("이게되네"+tmpMsg);
					}
				}
			}
		}
		
	}
		//연결이 종료되었을때 호출
		@Override
		public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
			String alamsessionId = getMemberId(session);
			if(alamsessionId!=null) {	// 로그인 값이 있는 경우만
//				logger.info(alamsessionId + " 연결 종료됨");
				users.remove(alamsessionId);
			}
		}
		
		// 에러 발생시
		@Override
		public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
			log(session.getId() + " 익셉션 발생: " + exception.getMessage());

		}
		
		// 로그 메시지
		private void log(String logmsg) {
			System.out.println(new Date() + " : " + logmsg);
			
		}

}