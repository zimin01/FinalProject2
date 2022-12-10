package com.mycom.myapp.market;

import java.util.Date;

public class MarketVO {
    private int seq;
    private String username;
    private String phonenum;
    private String category;
    private String buydate;
    private String usefeel;
    private String originalprice;
    private String saleprice;
    private String soldout;

    private Date regdate;



    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getBuydate() {
        return buydate;
    }

    public void setBuydate(String buydate) {
        this.buydate = buydate;
    }

    public String getUsefeel() {
        return usefeel;
    }

    public void setUsefeel(String usefeel) {
        this.usefeel = usefeel;
    }

    public String getOriginalprice() {
        return originalprice;
    }

    public void setOriginalprice(String originalprice) {
        this.originalprice = originalprice;
    }

    public String getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(String saleprice) {
        this.saleprice = saleprice;
    }

    public String getSoldout() {
        return soldout;
    }

    public void setSoldout(String soldout) {
        this.soldout = soldout;
    }

    public Date getRegdate() {
        return regdate;
    }
    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
}
