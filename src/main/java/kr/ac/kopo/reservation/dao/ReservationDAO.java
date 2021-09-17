package kr.ac.kopo.reservation.dao;

import java.util.List;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.vo.ReservationVO;

public interface ReservationDAO {

    List<BankerVO> searchBanker();
    List<BankerVO> searchBysector(String sector);
    List<BankerVO> availableSearchBanker(); // 이미 상담이 예약된 PB 조회

    int insertReservation(ReservationVO reservationVO);
}
