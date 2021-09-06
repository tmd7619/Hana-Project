package kr.ac.kopo.banker.dao;

import kr.ac.kopo.banker.vo.BankerVO;
import kr.ac.kopo.banker.vo.SchedulerVO;

import java.util.List;

public interface BankerDAO {

    BankerVO login(BankerVO banker);

    List<SchedulerVO> showSchedule() ;
    void addSchedule(SchedulerVO schedulerVO);
}
