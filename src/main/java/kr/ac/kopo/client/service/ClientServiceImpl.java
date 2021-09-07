package kr.ac.kopo.client.service;

import kr.ac.kopo.banker.dao.BankerDAO;
import kr.ac.kopo.member.vo.BankerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientServiceImpl implements ClientService {

    @Autowired
    BankerDAO bankerDAO;


//    @Override
//    public List<BankerVO> bankerList() {
//
//        List<BankerVO> bankerList = bankerDAO.searchBankerList();
//        System.out.println("bankerList 가져왔는지? : " + bankerList);
//        return bankerList;
//    }

    @Override
    public List<BankerVO> searchBankerList() {
        return null;
    }

    @Override
    public List<BankerVO> availableBanker(BankerVO bankerVO) {
        return null;
    }

}
