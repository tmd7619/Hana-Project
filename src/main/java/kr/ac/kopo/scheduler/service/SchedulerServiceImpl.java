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

        if(startTime.equals("10:00"))// 10 : 00 ~ 11 : 00
            dto.setImpossible(1);
        else if(startTime.equals("11:00")) // 11 : 00 ~ 12 : 00
            dto.setImpossible(2);
        else if(startTime.equals("13:00")) // 13 ~ 14
            dto.setImpossible(3);
        else if(startTime.equals("14:00")) // 14 ~ 15
            dto.setImpossible(4);
        else if(startTime.equals("15:00")) // 15 ~ 16
            dto.setImpossible(5);
        else if(startTime.equals("16:00"))// 16 ~17
            dto.setImpossible(6);
        else
            System.out.println("not read");

        dao.addSchedule(dto);
    }





}
