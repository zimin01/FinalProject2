package com.mycom.myapp.market;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MarketDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertMarket(MarketVO vo){
        int result=sqlSession.insert("Market.insertMarket",vo);
        return result;
    }

    public int deleteMarket(int seq){
        int result=sqlSession.delete("Market.deleteMarket",seq);
        return result;
    }

    public int updateMarket(MarketVO vo){
        int result=sqlSession.update("Market.updateMarket",vo);
        return result;
    }
    public MarketVO getMarket(int seq){
        MarketVO one=sqlSession.selectOne("Market.getMarket",seq);
        return one;
    }

    public List<MarketVO> getMarketList(){
        List<MarketVO> list=sqlSession.selectList("Market.getMarketList");
        return list;
    }



}
