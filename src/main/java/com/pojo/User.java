package com.pojo;

public class User {

    private long userId;
    private String userName;
    private String userPassWord;
    private String userPhone;
    private float userMoney;
    private int userCoupon;

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassWord() {
        return userPassWord;
    }

    public void setUserPassWord(String userPassWord) {
        this.userPassWord = userPassWord;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public float getUserMoney() {
        return userMoney;
    }

    public void setUserMoney(float userMoney) {
        this.userMoney = userMoney;
    }

    public int getUserCoupon() {
        return userCoupon;
    }

    public void setUserCoupon(int userCoupon) {
        this.userCoupon = userCoupon;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPassWord='" + userPassWord + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", userMoney=" + userMoney +
                ", userCoupon=" + userCoupon +
                '}';
    }
}
