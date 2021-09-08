package kr.ac.kopo.reservation.service;

import kr.ac.kopo.member.vo.BankerVO;

import java.util.List;

public interface ReservationService {


    List<BankerVO> searchBanker();
    List<BankerVO> availableSearchBanker();



}
