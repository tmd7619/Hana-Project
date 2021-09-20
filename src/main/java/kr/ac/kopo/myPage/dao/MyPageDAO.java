package kr.ac.kopo.myPage.dao;


import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.vo.FavoriteVO;

import java.util.List;

public interface MyPageDAO {


    void addFavorite(FavoriteVO favoriteVO);
    List<BankerVO> searchFavoriteList(ClientVO clientVO);
    List<BankerVO>searchFavoriteListBySector(String sector , ClientVO clientVO);


}
