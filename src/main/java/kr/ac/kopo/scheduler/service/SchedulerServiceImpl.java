package kr.ac.kopo.scheduler.service;

import kr.ac.kopo.scheduler.vo.SchedulerVO;
import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.scheduler.dao.SchedulerDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SchedulerServiceImpl  implements  SchedulerService{

    @Autowired
    SchedulerDAO dao;

    public List<SchedulerVO> showSchedule()  {
        List<SchedulerVO> schedulerVO = dao.showSchedule();

        return schedulerVO;
    }

    public void addSchedule(SchedulerVO dto, BankerVO bankerVO) {

        System.out.println("service 넘어옴 : " + dto);
        String startTime = dto.getStartTime();
        String endTime = dto.getEndTime();
        startTime = startTime.substring(3);
        endTime = endTime.substring(3);

//        System.out.println("변환 후 " +startTime)
        dto.setStartDate(dto.getStartDate() +" "+startTime +":00");
        dto.setEndDate(dto.getEndDate() +" "+endTime +":00");

        dto.setPbName(bankerVO.getPbName());
        dto.setPbBranchName(bankerVO.getBranchName());

        dao.addSchedule(dto);
    }





}
