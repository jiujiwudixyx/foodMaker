package com.dao;


import com.pojo.User;

import java.util.List;


public interface UserDao {

    User login(User user);
    void register(User user);
    int deleteUserById(long id);

    int updateUser(User user);

    User queryById(long id);
    List<User> queryAllUser();
}