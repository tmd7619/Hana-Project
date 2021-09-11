package kr.ac.kopo.reservation.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.vo.ReservationVO;

import java.util.List;

public interface ReservationService {


    List<BankerVO> searchBanker();
    List<BankerVO> availableSearchBanker();

    int insertReservation(ReservationVO reservationVO);



}
