package kr.ac.kopo.reservation.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.dao.ReservationDAO;
import kr.ac.kopo.scheduler.vo.SchedulerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservationServiceImpl implements ReservationService {

    @Autowired
    private ReservationDAO reservationDAO;

    @Override
    public List<BankerVO> searchBanker() {
        List<BankerVO> bankerList = reservationDAO.searchBanker()  ;
        System.out.println("service로 넘어온 뱅커 목록 " + bankerList);
        return bankerList;
    }

    @Override
    public List<SchedulerVO> availableSearchBanker() { // 상담 가능한 자산관리사 조회

        List<SchedulerVO> scheduledBanker = reservationDAO.availableSearchBanker(); // 모든 자산관리사 스케줄 조회

        return scheduledBanker;
    }
}
