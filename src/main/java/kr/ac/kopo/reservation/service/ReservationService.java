package kr.ac.kopo.reservation.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.scheduler.vo.SchedulerVO;

import java.util.List;

public interface ReservationService {


    List<BankerVO> searchBanker();
    List<SchedulerVO> availableSearchBanker();



}
