package com.pojo;

public class Chef {

    private long chefId;
    private String chefName;
    private String chefPassWord;
    private String chefPhone;
    private String chefCaixi;
    private float chefMoney;


    public long getChefId() {
        return chefId;
    }

    public void setChefId(long chefId) {
        this.chefId = chefId;
    }

    public String getChefName() {
        return chefName;
    }

    public void setChefName(String chefName) {
        this.chefName = chefName;
    }

    public String getChefPassWord() {
        return chefPassWord;
    }

    public void setChefPassWord(String chefPassWord) {
        this.chefPassWord = chefPassWord;
    }

    public String getChefPhone() {
        return chefPhone;
    }

    public void setChefPhone(String chefPhone) {
        this.chefPhone = chefPhone;
    }

    public float getChefMoney() {
        return chefMoney;
    }

    public void setChefMoney(float chefMoney) {
        this.chefMoney = chefMoney;
    }

    public String getChefCaixi() {
        return chefCaixi;
    }

    public void setChefCaixi(String chefCaixi) {
        this.chefCaixi = chefCaixi;
    }

    @Override
    public String toString() {
        return "Chef{" +
                "chefId=" + chefId +
                ", chefName='" + chefName + '\'' +
                ", chefPassWord='" + chefPassWord + '\'' +
                ", chefPhone='" + chefPhone + '\'' +
                ", chefCaixi='" + chefCaixi + '\'' +
                ", chefMoney=" + chefMoney +
                '}';
    }
}
