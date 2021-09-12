package kr.ac.kopo.reservation.socket;


import kr.ac.kopo.member.vo.BankerVO;
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
        String bankerId =  getBankerId(session); // 유저 아이디 가져오기
        System.out.println("banker id ? : "+bankerId);

        userSessionsMap.put(bankerId , session); // 로그인한 유저 아이디 저장

    }


    // 소켓에 메세지를 보냈을 때
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String bankerId =  getBankerId(session); // 뱅커 아이디 가져오기
        String msg = message.getPayload() ;

        System.out.println("넘어온 msg 값 : " + msg);

        String[] msgList = msg.split(",");
        String clientName = msgList[0];
        String pbName = msgList[1];
        String consultTime = msgList[2];
        String coment = msgList[3];

        String sendMsg = pbName + " 님, "+clientName + " 고객님의 상담 신청이 왔습니다." +"<br>" + "상담 시간 : " +consultTime;
        sendMsg += "<br>" + "coment : " + coment ;
        System.out.println("sendMsg : " + sendMsg);

        TextMessage text = new TextMessage(sendMsg);
//        TextMessage text = new TextMessage(msg)

        WebSocketSession target = userSessionsMap.get(bankerId); // bankerId session 값 target에 저장


        target.sendMessage(text);



    }

    // 웹소켓에 user id 가져오기 (Client)
    private String getUserId(WebSocketSession session){
        Map<String, Object> httpSession = session.getAttributes();
        ClientVO userVO = (ClientVO)httpSession.get("userVO");

        System.out.println("웹소켓 VO 잘 가져옴 ? :  " + userVO);
        return userVO.getUserId();
    }

    // 웹소켓에 user id 가져오기 (Client)
    private String getBankerId(WebSocketSession session){
        Map<String, Object> httpSession = session.getAttributes();
        BankerVO bankerVO = (BankerVO) httpSession.get("bankerVO");

        System.out.println("웹소켓 VO 잘 가져옴 ? :  " + bankerVO);
        return bankerVO.getPbId();
    }




}
