package kr.ac.kopo.consultation.chat.controller;

import kr.ac.kopo.consultation.chat.service.ChatService;
import kr.ac.kopo.consultation.chat.vo.RoomVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class ChatController {

    @Autowired
    ChatService service;

    List<RoomVO> roomList = new ArrayList<RoomVO>();

   @RequestMapping(value = "/chat", method = RequestMethod.GET, headers = "Connection!=Upgrade")
    public ModelAndView chat() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("room");
        return mav;
    }


    /**
     * 방 페이지
     * @return
     */
    @RequestMapping("/room")
    public ModelAndView room() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("room");
        return mv;
    }

    /**
     * 방 생성하기
     * @param params
     * @return
     */
    @RequestMapping("/createRoom")
    public @ResponseBody List<RoomVO> createRoom(@RequestParam HashMap<Object,Object> params){
        String roomName = (String) params.get("roomName");
        if(roomName != null && !roomName.trim().equals("")) {
            RoomVO room = new RoomVO();
            int roomNumber = 0 ; // 채팅방 입장인원 0명으로 초기화
			room.setRoomNumber(++roomNumber);
            room.setRoomName(roomName);
            roomList.add(room);
            int check = service.insertRoom(room);

            if(check != 0) {
                System.out.println("room 생성 완료 ");

            }

        }
        return roomList;
    }


    /**
     * 방 정보가져오기
     * @param params
     * @return
     */
    @RequestMapping("/getRoom")
    public @ResponseBody List<RoomVO> getRoom(@RequestParam HashMap<Object, Object> params){
        return roomList;
    }

    /**
     * 채팅방
     * @return
     */
    @RequestMapping("/moveChating")
    public ModelAndView chating(@RequestParam HashMap<Object, Object> params) {
        ModelAndView mv = new ModelAndView();
        int roomNumber = Integer.parseInt((String) params.get("roomNumber"));

        List<RoomVO> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
        if(new_list != null && new_list.size() > 0) {
            mv.addObject("roomName", params.get("roomName"));
            mv.addObject("roomNumber", params.get("roomNumber"));
            mv.setViewName("chat");
        }else {
            mv.setViewName("room");
        }
        return mv;
    }

}