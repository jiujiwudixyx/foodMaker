package com.pojo;

public class Order {

    private long orderId;
    private long userId;
    private long chefId;
    private String orderAddress;
    private String orderTimeCreate;
    private String orderTimeService;
    private String orderCaixi;
    private String orderTaocan;
    private String orderNote;
    private long orderPrice;
    private String orderStatus;

    public long getOrderId() {
        return orderId;
    }

    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getChefId() {
        return chefId;
    }

    public void setChefId(long chefId) {
        this.chefId = chefId;
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    public String getOrderTimeCreate() {
        return orderTimeCreate;
    }

    public void setOrderTimeCreate(String orderTimeCreate) {
        this.orderTimeCreate = orderTimeCreate;
    }

    public String getOrderTimeService() {
        return orderTimeService;
    }

    public void setOrderTimeService(String orderTimeService) {
        this.orderTimeService = orderTimeService;
    }

    public String getOrderCaixi() {
        return orderCaixi;
    }

    public void setOrderCaixi(String orderCaixi) {
        this.orderCaixi = orderCaixi;
    }

    public String getOrderTaocan() {
        return orderTaocan;
    }

    public void setOrderTaocan(String orderTaocan) {
        this.orderTaocan = orderTaocan;
    }

    public String getOrderNote() {
        return orderNote;
    }

    public void setOrderNote(String orderNote) {
        this.orderNote = orderNote;
    }

    public long getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(long orderPrice) {
        this.orderPrice = orderPrice;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", userId=" + userId +
                ", chefId=" + chefId +
                ", orderAddress='" + orderAddress + '\'' +
                ", orderTimeCreate='" + orderTimeCreate + '\'' +
                ", orderTimeService='" + orderTimeService + '\'' +
                ", orderCaixi='" + orderCaixi + '\'' +
                ", orderTaocan='" + orderTaocan + '\'' +
                ", orderNote='" + orderNote + '\'' +
                ", orderPrice=" + orderPrice +
                ", orderStatus='" + orderStatus + '\'' +
                '}';
    }
}