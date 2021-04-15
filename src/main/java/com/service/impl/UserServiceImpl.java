package com.service.impl;

import com.dao.UserDao;
import com.pojo.User;
import com.service.UserService;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public void register(User user) {
         userDao.register(user);
    }
    @Override
    public User login(User user){
        return userDao.login(user);
    }

    @Override
    public int deleteUserById(long id) {
        return userDao.deleteUserById(id);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public User queryById(long id) { return userDao.queryById(id); }

    @Override
    public List<User> queryAllUser() {
        return userDao.queryAllUser();
    }

}