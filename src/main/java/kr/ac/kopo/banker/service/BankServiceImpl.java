package kr.ac.kopo.banker.service;

import kr.ac.kopo.banker.dao.BankerDAO;
import kr.ac.kopo.banker.vo.BankerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BankServiceImpl implements BankerService {

    @Autowired
    BankerDAO dao;

    @Override
    public BankerVO login(BankerVO banker) {
        BankerVO bankerVO = dao.login(banker);
        return bankerVO;
    }

}
