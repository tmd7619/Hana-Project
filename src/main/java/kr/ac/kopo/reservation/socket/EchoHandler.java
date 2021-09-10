package kr.ac.kopo.reservation.socket;


import kr.ac.kopo.member.vo.ClientVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class EchoHandler  extends TextWebSocketHandler {

    // 로그인한 유저 전체
    List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
    // 1대1
    Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();

    // 서버에 접속이 싱공했을 때
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        sessions.add(session);
        String senderUserId =  getUserId(session); // 유저 아이디 가져오기
        System.out.println("user id ? : "+senderUserId);
        userSessionsMap.put(senderUserId , session); // 로그인한 유저 아이디 저장

    }


    // 소켓에 메세지를 보냈을 때
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String senderUserId =  getUserId(session); // 유저 아이디 가져오기
        String msg = message.getPayload() ;

        TextMessage text = new TextMessage(msg);

        System.out.println("넘어온 msg 값 : " + msg);
        WebSocketSession target = userSessionsMap.get(senderUserId);
        target.sendMessage(text);

    }

    // 웹소켓에 id 가져오기
    private String getUserId(WebSocketSession session){
        Map<String, Object> httpSession = session.getAttributes();
        ClientVO userVO = (ClientVO)httpSession.get("userVO");

        System.out.println("웹소켓 VO 잘 가져옴 ? :  " + userVO);
        return userVO.getUserId();
    }


}
