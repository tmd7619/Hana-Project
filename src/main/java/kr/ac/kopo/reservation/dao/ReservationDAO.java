package kr.ac.kopo.reservation.dao;

import kr.ac.kopo.member.vo.BankerVO;

import java.util.List;

public interface ReservationDAO {

    List<BankerVO> searchBanker();
    List<BankerVO> availableSearchBanker(); // 이미 상담이 예약된 PB 조회

}
