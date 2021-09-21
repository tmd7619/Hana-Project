package kr.ac.kopo.reservation.socket;


import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.util.*;

@Controller
public class EchoHandler extends TextWebSocketHandler {

    // 로그인한 유저 전체
    List<WebSocketSession> sessions = new ArrayList<>();
    // 1대1
    Map<String, WebSocketSession> userSessionsMap = new HashMap<>();

    // 서버에 접속이 싱공했을 때
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        sessions.add(session);
        // 세션 2개 이상이 넘어올 경우 인식 안됨??

        userSessionsMap.put(session.getId(), session);


        for (String key : userSessionsMap.keySet()) {
            WebSocketSession value = (WebSocketSession) userSessionsMap.get(key);
            System.out.println("key : " + key + " value : " + value);
        }

    }

    // 소켓에 메세지를 보냈을 때
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String msg = message.getPayload();

        System.out.println("넘어온 msg 값 : " + msg);

        String[] msgList = msg.split(",");
        String clientName = msgList[0];
        String pbName = msgList[1];
        String consultTime = msgList[2];
        String comment = msgList[3];


        String sendMsg = pbName + " 님, " + clientName + " 고객님의 상담 신청이 왔습니다." + "<br>" + "상담 시간 : " + consultTime;
        sendMsg += "<br>" + "coment : " + comment;
        System.out.println("sendMsg : " + sendMsg);

        TextMessage text = new TextMessage(sendMsg);
//        TextMessage text = new TextMessage(msg)

//        for (WebSocketSession s : sessions) {
//            System.out.println("현재 등록된 세션  : " + s);
//        }

        for (WebSocketSession s : sessions) {
            s.sendMessage(text);
        }
    }

//    // 웹소켓에 user id 가져오기 (Client)
//    private String getUserId(WebSocketSession session) {
//        Map<String, Object> httpSession = session.getAttributes();
//
//        }
//        ClientVO userVO = (ClientVO) httpSession.get("userVO");
//
//        System.out.println("userVO 잘 가져옴 ? :  " + userVO);
//        return userVO.getUserId();
//    }


    // 연결 해제될 때
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        sessions.remove(session);
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
