package kr.ac.kopo.myPage.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.dao.MyPageDAO;
import kr.ac.kopo.myPage.vo.FavoriteVO;
import kr.ac.kopo.reservation.dao.ReservationDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyPageServiceImpl implements MyPageService {

    @Autowired
    MyPageDAO myPageDAO;

    @Autowired
    ReservationDAO reservationDAO;


    @Override
    public void addFavorite(FavoriteVO favoriteVO) {
        myPageDAO.addFavorite(favoriteVO);
    }

    @Override
    public List<BankerVO> searchFavoriteList(ClientVO clientVO) {
        List<BankerVO> favoriteList = reservationDAO.selectByFavorite(clientVO);

        return favoriteList;
    }


    @Override
    public List<BankerVO> searchFavoriteListBySector(String sector, ClientVO clientVO) {

        if (sector.trim().equals("전체 분야")) {
            List<BankerVO> favoriteListBySector = reservationDAO.selectByFavorite(clientVO);
            return favoriteListBySector;

        } else {
            List<BankerVO> favoriteListBySector = myPageDAO.searchFavoriteListBySector(sector, clientVO);
            return favoriteListBySector;
        }
    }

    @Override
    public List<BankerVO> selectOneByFavorite(String codeNum, ClientVO clientVO) {

        List<BankerVO> selectedPB = myPageDAO.selectOneByFavorite(codeNum, clientVO);

        return selectedPB;
    }


    @Override
    public void deleteFavorite(String codeNum, ClientVO clientVO) {

        myPageDAO.deleteFavorite(codeNum, clientVO);

    }
}
