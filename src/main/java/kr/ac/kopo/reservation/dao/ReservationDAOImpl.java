package kr.ac.kopo.reservation.dao;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.scheduler.vo.SchedulerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReservationDAOImpl implements ReservationDAO {


    private String namespace = "reservation.ReservationDAO.";

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<BankerVO> searchBanker() { // PB 목록 조회

        List<BankerVO> bankerList = sqlSessionTemplate.selectList(namespace + "searchBanker");

        return bankerList;
    }

    @Override
    public List<SchedulerVO> availableSearchBanker() {

        List<SchedulerVO> impossibleBankerList = sqlSessionTemplate.selectList(namespace +"availableSearchBanker");

        return impossibleBankerList;
    }
}
