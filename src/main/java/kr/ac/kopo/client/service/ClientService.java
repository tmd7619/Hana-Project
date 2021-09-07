package kr.ac.kopo.client.service;

import kr.ac.kopo.member.vo.BankerVO;

import java.util.List;

public interface ClientService {


    List<BankerVO> searchBankerList();

    List<BankerVO> availableBanker(BankerVO bankerVO); // 상담 가능한 pb 조회
}
