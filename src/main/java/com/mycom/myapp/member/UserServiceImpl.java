package com.mycom.myapp.member;


import com.mycom.myapp.market.MarketVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    UserDAO userDAO;
    public UserVO getUser(UserVO vo) {
        return userDAO.getUser(vo);
    }
    @Override
    public int insertUser(UserVO vo){
        return userDAO.insertUser(vo);
    }

    @Override
    public int deleteUser(int seq) {
        return 0;
    }

    @Override
    public int updateUser(UserVO vo) {
        return 0;
    }

    @Override
    public MarketVO getUser(int seq) {
        return null;
    }

    @Override
    public List<MarketVO> getUserList() {
        return null;
    }
}