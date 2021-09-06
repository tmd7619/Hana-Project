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


        return dao.showSchedule();
    }

    public void addSchedule(SchedulerVO dto) throws Exception{

        dao.addSchedule(dto);
    }


}
