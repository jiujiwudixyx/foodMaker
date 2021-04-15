package com.service.impl;

import com.dao.OrderDao;
import com.pojo.Order;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderDao;

    @Override
    public int addOrder(Order order) {
        return orderDao.addOrder(order);
    }

    @Override
    public int deleteOrderById(long id) {

        return orderDao.deleteOrderById(id);
    }
    @Override
    public int payOrderById(long id) {

        return orderDao.payOrderById(id);
    }
    @Override
    public int chefGetById(Order order) {

        return orderDao.chefGetById(order);
    }

    @Override
    public int updateOrder(Order order) {
        return orderDao.updateOrder(order);

    }

    @Override
    public Order queryById(long id) {
        return orderDao.queryById(id);
    }

    @Override
    public List<Order> queryAllOrder() {
        return orderDao.queryAllOrder();
    }
    @Override
    public List<Order> queryAllOrder1() {
        return orderDao.queryAllOrder1();
    }
    @Override
    public List<Order> queryAllOrder2() {
        return orderDao.queryAllOrder2();
    }
    @Override
    public List<Order> queryAllOrder3() {
        return orderDao.queryAllOrder3();
    }
    @Override
    public List<Order> queryAllOrder4(long id) {
        return orderDao.queryAllOrder4(id);
    }
    @Override
    public List<Order> queryAllOrder5(long id) {
        return orderDao.queryAllOrder5(id);
    }
    @Override
    public List<Order> queryAllOrder6(long id) {
        return orderDao.queryAllOrder6(id);
    }
    @Override
    public List<Order> queryAllOrder7(long id) {
        return orderDao.queryAllOrder7(id);
    }
}