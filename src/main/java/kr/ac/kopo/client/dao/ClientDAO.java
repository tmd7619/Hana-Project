package kr.ac.kopo.client.dao;

import kr.ac.kopo.banker.vo.BankerVO;

import java.util.List;

public interface ClientDAO {

    List<BankerVO> searchBankerList();

}
