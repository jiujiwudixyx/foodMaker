package com.dao;


import com.pojo.Chef;

import java.util.List;


public interface ChefDao {

    Chef login(Chef chef);
    void register(Chef chef);
    int deleteChefById(long id);

    int updateChef(Chef chef);

    Chef queryById(long id);
    List<Chef> queryAllChef();
}