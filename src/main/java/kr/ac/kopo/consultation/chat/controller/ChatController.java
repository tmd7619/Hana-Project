package kr.ac.kopo.consultation.chat.controller;

import kr.ac.kopo.consultation.chat.service.ChatService;
import kr.ac.kopo.consultation.chat.vo.RoomVO;
import kr.ac.kopo.member.vo.BankerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
public class ChatController {


    private static int cnt = 0;

    @Autowired
    ChatService service;

    List<RoomVO> roomList = new ArrayList<RoomVO>();

    @RequestMapping("/pb/waitngRoom")
    public String waitRoom(){

        return "pb/services/waitRoom";
    }

   @RequestMapping(value = "/chat", method = RequestMethod.GET, headers = "Connection!=Upgrade")
    public ModelAndView chat() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("room");
        return mav;
    }

    // 상담 room create
    @RequestMapping("/createRoom")
    public ModelAndView createRoom(HttpSession session){

        ModelAndView mav = new ModelAndView();

        BankerVO bankerVO = (BankerVO)session.getAttribute("bankerVO");
        RoomVO room = new RoomVO();
        Random random = new Random();
        int roomNumber = random.nextInt(1000000)+1; // 룸번호 랜덤으로 생성
        room.setRoomNumber(roomNumber);
        room.setRoomMaster(bankerVO.getPbName()); // 방 주인

        System.out.println("createRoom : " + room );


           // int check = service.insertRoom(room); // 상담 room 생성하기

//            if(check != 0) {
//                System.out.println("room 생성 완료 ");
//            }

            mav.addObject("roomVO" , room);
            mav.setViewName("pb/services/moveConsultingRoom");

        return mav;
    }


    /**
     * 채팅방
     * @return
     */
    @RequestMapping("/moveChatting")
    public ModelAndView chatting(RoomVO roomVO) {

        ModelAndView mv = new ModelAndView();
        System.out.println("movechatting에서 넘어온 roomVo : " + roomVO);

            mv.addObject("roomMaster", roomVO.getRoomMaster());
            mv.addObject("roomNumber", roomVO.getRoomNumber());

            mv.setViewName("chatIndex");

        return mv;
    }

}