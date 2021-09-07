package kr.ac.kopo.scheduler.dao;

import kr.ac.kopo.scheduler.vo.SchedulerVO;

import java.util.List;

public interface SchedulerDAO {

    List<SchedulerVO> showSchedule() ;
    void addSchedule(SchedulerVO schedulerVO );
}
