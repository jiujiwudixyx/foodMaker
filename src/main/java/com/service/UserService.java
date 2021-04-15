package com.service;


import com.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

public interface UserService {

    User login(User user);



    void register(User user);
    int deleteUserById(long id);

    int updateUser(User user);

    User queryById(long id);

    List<User> queryAllUser();

}