package kr.ac.kopo.banker.service;

import kr.ac.kopo.banker.dao.BankerDAO;
import kr.ac.kopo.banker.vo.BankerVO;
import kr.ac.kopo.banker.vo.SchedulerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BankServiceImpl implements BankerService {

    @Autowired
    BankerDAO dao;


    @Override
    public BankerVO login(BankerVO banker) {
        BankerVO bankerVO = dao.login(banker);
        return bankerVO;
    }

    public List<SchedulerVO> showSchedule() throws Exception {
        List<SchedulerVO> schedulerVO = dao.showSchedule();

        return schedulerVO;
    }

    public void addSchedule(SchedulerVO dto) throws Exception{
        System.out.println("service 넘어옴 : " + dto);
        String time = dto.getTime();
        time = time.substring(3);
        System.out.println("변환 후 " +time);
        dto.setStartDate(dto.getStartDate() +" "+time +":00");
        dao.addSchedule(dto);
    }


}
