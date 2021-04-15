package com.dao;

import com.pojo.Order;


import java.util.List;

public interface OrderDao {



    int addOrder(Order order);
    int deleteOrderById(long id);
    int payOrderById(long id);

    int chefGetById(Order order);


    int updateOrder(Order order);

    Order queryById(long id);
    List<Order> queryAllOrder();
    List<Order> queryAllOrder1();
    List<Order> queryAllOrder2();


    List<Order> queryAllOrder3();
    List<Order> queryAllOrder4(long id);

    List<Order> queryAllOrder5(long id);

    List<Order> queryAllOrder7(long id);

    List<Order> queryAllOrder6(long id);

}
