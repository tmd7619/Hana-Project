package kr.ac.kopo.reservation.service;

import java.util.List;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.reservation.vo.ReservationVO;

public interface ReservationService {


    List<BankerVO> searchBanker();
    List<BankerVO> searchBysector(String sector);
    List<BankerVO> availableSearchBanker();

    int insertReservation(ReservationVO reservationVO);



}
