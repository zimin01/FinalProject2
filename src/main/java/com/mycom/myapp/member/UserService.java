package com.mycom.myapp.member;

import com.mycom.myapp.market.MarketVO;

import java.util.List;

public interface UserService {
    public int insertUser(UserVO vo);
    public int deleteUser(int seq);
    public int updateUser(UserVO vo);
    public MarketVO getUser(int seq);
    public List<MarketVO> getUserList();
}