package kr.ac.kopo.banker.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.banker.vo.SchedulerVO;

import java.util.List;

public interface BankerService {

//    BankerVO login(BankerVO banker);
     List<SchedulerVO> showSchedule() throws Exception;
     void addSchedule(SchedulerVO schedulerVO, BankerVO bankerVO) throws Exception;


}
